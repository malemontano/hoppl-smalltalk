# HOPPL in Smalltalk
by Malena Montaño and Clara Rizzuti.

A Smalltalk implementation of a small probabilistic programming language (HOPPL-style), translated from a Python reference implementation built around a **message-passing evaluator**: the evaluator emits `sample`/`observe` effects and never performs inference itself — an external controller decides how to answer each effect. The same evaluator core is reused, unmodified, by three different inference algorithms.

## Background

The original reference implementation is a Python stack machine: a `resume(m)` function runs a program until it hits a probabilistic effect (`sample`/`observe`) or finishes, using explicit **addresses** (tuples describing the expression's position in the Abstract Syntax Tree) to identify each effect site so that controllers such as single-site Metropolis-Hastings can keep an address-keyed trace across re-executions.

This port keeps the same two-layer design — one evaluator, several pluggable controllers — but replaces the explicit continuation-passing/address machinery with idiomatic Smalltalk: **resumable exceptions**. Each `sample`/`observe` site raises a `Notification` (`SampleNotification` / `ObserveNotification`); the currently active inference controller (`LikelihoodIC`, `SequentialMCIC`, `SSMetropolisHastingsIC`, ...) handles the notification, decides what value to answer with, and resumes execution — without either side needing to pass addresses around by hand.

## What's in here

- **Parser (`HOPPLParser`)** — turns nested-array expression-like forms (`let`, `if`, `fn`, `defn`, `sample`, `observe`, calls, primitives) into an Abstract Syntax Tree (AST) of `Expression` subclasses (`LetExpr`, `IfExpr`, `SampleExpr`, `ObserveExpr`, `FunctionExpr`, `CallExpr`, `VariableExpr`, `LiteralExpr`).
- **Evaluator (`Machine`)** — a continuation/stack-based interpreter. Each control-flow construct pushes a `Continuation` subclass (`CallContinuation`, `IfContinuation`, `LetContinuation`, `SampleContinuation`, `ObserveContinuation`, ...) that resumes evaluation once its subexpression is ready. First-class functions are represented as `Closure` objects (parameters + body + captured environment), giving proper lexical scoping and recursion.
- **Probabilistic effects** — `sample`/`observe` signal resumable a `Notification` instead of returning tagged messages, so the evaluator stays free of any inference-specific logic.
- **Inference controllers**:
  - `LikelihoodIC` — likelihood weighting / importance sampling.
  - `SequentialMCIC` — Sequential Monte Carlo (particle filtering with resampling).
  - `SSMetropolisHastingsIC` — Single-Site Metropolis-Hastings over an address-keyed trace (where the address is the `Notifcation`'s identity).
- **Distributions** — `BernoulliProbabilityDistribution`, `NormalProbabilityDistribution`, with the log-density computations each controller needs.
- **Tests** — `HOPPLParserTest` (parser-only, structural checks on the AST) and `HOPPLTest` (end-to-end: parses a program and runs it through the `Machine` and/or an inference controller, checking the numeric result).

## Requirements

- A CuisUniversity (or compatible Squeak-family) Smalltalk image. The source is provided as a classic chunk-format `.pck.st` file 

## Running it

1. Open a CuisUniversity image and a Playground/Workspace.
2. File in the source:
   - Via the UI: drag the `.pck.st` file onto the running image, or use `File > File In...` and select it.
   - Via code:
     ```smalltalk
     (FileStream readOnlyFileNamed: 'ILPP.pck.st') fileIn.
     ```
   This loads all classes (`HOPPLParser`, `Machine`, `Closure`,`NotificationBreakpoints`, `MachineInstruction` (with the `Continuation` subclasses, the `Expression` AST, and others), the distributions, and the inference controllers) into the image.
   **IMPORTANT**: Make sure the `softmax` method is loaded in the `OrderedCollection` class, under the `*ILPP` category (it should be included when the package is loaded, but if not, you can copy the method from the softmax.txt and add it manually).
   
4. Run a program from a Playground:
   ```smalltalk
   | parser parsedProgram m |
   parser := HOPPLParser new.
   parsedProgram := parser parseProgram: {{#let. {#mu. {#sample. {#normal. 0. 1}}}.
                                             {#observe. {#normal. #mu. 1}. 2.3}.
                                             #mu}}.

   m := Machine withControlStack: parsedProgram second environment: parsedProgram first.
   [m resume] on: DoneNotification do: [:done | Transcript show: done result printString].
   ```
  The `parseProgram:` method for the HOPPLParser returns an Array with its first element being the environment (a `Dictionary` which includes the definition of some primitive functions and any user-defined function using the expression #defn) and its second element being the parsed program itself, written as a collection of `Expression` objects. 
   
5. Run inference with a controller, e.g. likelihood weighting:
   ```smalltalk
   | parser parsedProgram ic result |
   parser := HOPPLParser new.
   parsedProgram := parser parseProgram: { ... }.
   ic := LikelihoodIC for: parsedProgram.
   result := ic run: 1000.  "values and log-weights for 1000 particles"
   ```

## Running the tests

Once the file is loaded, run the test classes from the SUnit Test Runner (`TestRunner open`, select `HOPPLParserTest` and `HOPPLTest`), or from code:

```smalltalk
(HOPPLParserTest suite) run.
(TPTest suite) run.
```

## Design notes

- **Resumable exceptions instead of addresses.** `sample`/`observe` are implemented as `Notification signal`, which suspends execution at that point and lets the handler (`resume:`) hand back a value and continue — a direct match for the Python version's `resume`/`send` pair, without needing to thread an address through every AST node just to identify effect sites for simple controllers. Single-site MH is the one controller that does still need addresses (to key its trace across re-executions), and gets them by using the `Notification` objects themselves to check for cached values in an Identity Dictionary or resample.
- **Closures capture their defining environment**, not the caller's — `CallContinuation`/`continueCall:` extends a *copy* of the closure's captured environment with the argument bindings, so lexical scoping and recursion (including functions that return other functions) work as expected.
- **Function bodies are a flat sequence of expressions** at the AST level (`FunctionExpr>>body` / `Closure>>body` are `OrderedCollection`s of `Expression`s); only the value of the last one is returned, matching the semantics of the original `_push_body`.
- **Primitive functions are defined in the environment when the program is parsed.** The parser initializes the environment with a few primitive functions. If a function is defined in the user program with the same name as a primitive, the user definition will replace the one provided.
- **Some implementations with AI.** We have used Claude to implement the `HOPPLParser` and its tests, making a few modifications where we saw fit, as well as the `softmax` and the `logProbability:` methods. 


This project was made in the context of the "Introduction to Probabilistic Programming Languages" course by Professor Javier Burroni, given in June of 2026 at the Facultad de Ciencias Exactas y Naturales, Universidad de Buenos Aires. 
