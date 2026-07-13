# hoppl-smalltalk
HOPPL-style probabilistic programming language in Smalltalk — likelihood weighting, SMC, and single-site MH over one shared evaluator, using resumable exceptions for sample/observe.
# HOPPL in Smalltalk

A Smalltalk implementation of a small probabilistic programming language (HOPPL-style), translated from a Python reference implementation built around a **message-passing evaluator**: the evaluator emits `sample`/`observe` effects and never performs inference itself — an external controller decides how to answer each effect. The same evaluator core is reused, unmodified, by three different inference algorithms.

## Background

The original reference implementation is a Python stack machine: a `resume(m)` function runs a program until it hits a probabilistic effect (`sample`/`observe`) or finishes, using explicit **addresses** (tuples describing the expression's position in the AST) to identify each effect site so that controllers such as single-site Metropolis-Hastings can keep an address-keyed trace across re-executions.

This port keeps the same two-layer design — one evaluator, several pluggable controllers — but replaces the explicit continuation-passing/address machinery with idiomatic Smalltalk: **resumable exceptions**. Each `sample`/`observe` site raises a `Notification` (`SampleNotification` / `ObserveNotification`); the currently active inference controller (`LikelihoodIC`, `SequentialMCIC`, `SSMetropolisHastingsIC`, ...) handles the notification, decides what value to answer with, and `resume:`s execution — without either side needing to pass addresses around by hand.

## What's in here

- **Parser (`HOPPLParser`)** — turns nested-array s-expression-like forms (`let`, `if`, `fn`, `defn`, `sample`, `observe`, calls, primitives) into an AST of `Expression` subclasses (`LetExpr`, `IfExpr`, `SampleExpr`, `ObserveExpr`, `FunctionExpr`, `CallExpr`, `VariableExpr`, `LiteralExpr`).
- **Evaluator (`Machine`)** — a continuation/stack-based interpreter. Each control-flow construct pushes a `Continuation` subclass (`CallContinuation`, `IfContinuation`, `LetContinuation`, `SampleContinuation`, `ObserveContinuation`, ...) that resumes evaluation once its subexpression is ready. First-class functions are represented as `Closure` objects (parameters + body + captured environment), giving proper lexical scoping and recursion.
- **Probabilistic effects** — `sample`/`observe` signal resumable `Notification`s instead of returning tagged messages, so the evaluator stays free of any inference-specific logic.
- **Inference controllers**:
  - `LikelihoodIC` — likelihood weighting / importance sampling.
  - `SequentialMCIC` — Sequential Monte Carlo (particle filtering with resampling).
  - `SSMetropolisHastingsIC` — single-site Metropolis-Hastings over an address-keyed trace.
- **Distributions** — `BernoulliProbabilityDistribution`, `NormalProbabilityDistribution`, with the log-density computations each controller needs.
- **Tests** — `HOPPLParserTest` (parser-only, structural checks on the AST) and `TPTest` (end-to-end: parses a program and runs it through the `Machine` and/or an inference controller, checking the numeric result).

## Requirements

- A Pharo (or compatible Squeak-family) Smalltalk image. The source is provided as a classic chunk-format `.st` file (`!classDefinition: ... !` / `! !` method chunks).

## Running it

1. Open a Pharo image and a Playground/Workspace.
2. File in the source:
   - Via the UI: drag the `.st` file onto the running image, or use `File > File In...` and select it.
   - Via code:
     ```smalltalk
     (FileStream readOnlyFileNamed: 'ILPP.st') fileIn.
     ```
   This loads all classes (`HOPPLParser`, `Machine`, `Closure`, the `Continuation` subclasses, the `Expression` AST, the distributions, and the inference controllers) into the image.
3. Run a program from a Playground:
   ```smalltalk
   | parser parsedProgram m |
   parser := HOPPLParser new.
   parsedProgram := parser parseProgram: {{#let. {#mu. {#sample. {#normal. 0. 1}}}.
                                             {#observe. {#normal. #mu. 1}. 2.3}.
                                             #mu}}.

   m := Machine withControlStack: parsedProgram second environment: parsedProgram first.
   [m resume] on: DoneNotification do: [:done | Transcript showCr: done result printString].
   ```
4. Run inference with a controller, e.g. likelihood weighting:
   ```smalltalk
   | parser parsedProgram ic result |
   parser := HOPPLParser new.
   parsedProgram := parser parseProgram: { ... }.
   ic := LikelihoodIC for: parsedProgram.
   result := ic run: 1000.  "values and log-weights for 1000 particles"
   ```

## Running the tests

Once the file is loaded, run the test classes from the SUnit Test Runner (`TestRunner open`, select `HOPPLParserTest` and `TPTest`), or from code:

```smalltalk
(HOPPLParserTest suite) run.
(TPTest suite) run.
```

## Design notes

- **Resumable exceptions instead of addresses.** `sample`/`observe` are implemented as `Notification signal`, which suspends execution at that point and lets the handler (`resume:`) hand back a value and continue — a direct match for the Python version's `resume`/`send` pair, without needing to thread an address through every AST node just to identify effect sites for simple controllers. Single-site MH is the one controller that does still need addresses (to key its trace across re-executions), and gets them the same way the reference implementation does.
- **Closures capture their defining environment**, not the caller's — `CallContinuation`/`continueCall:` extends a *copy* of the closure's captured environment with the argument bindings, so lexical scoping and recursion (including functions that return other functions) work as expected.
- **Function bodies are a flat sequence of expressions** at the AST level (`FunctionExpr>>body` / `Closure>>body` are `OrderedCollection`s of `Expression`s); only the value of the last one is returned, matching the semantics of the original `_push_body`.
