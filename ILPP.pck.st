'From Cuis7.3 [latest update: #7158] on 13 July 2026 at 1:56:13 am'!
'Description '!
!provides: 'ILPP' 1 1!
SystemOrganization addCategory: #ILPP!


!classDefinition: #Bind category: #ILPP!
Object subclass: #Bind
	instanceVariableNames: 'value variable'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'Bind class' category: #ILPP!
Bind class
	instanceVariableNames: ''!

!classDefinition: #Closure category: #ILPP!
Object subclass: #Closure
	instanceVariableNames: 'parameters body closureEnvironment'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'Closure class' category: #ILPP!
Closure class
	instanceVariableNames: ''!

!classDefinition: #HOPPLParser category: #ILPP!
Object subclass: #HOPPLParser
	instanceVariableNames: 'globalEnv'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'HOPPLParser class' category: #ILPP!
HOPPLParser class
	instanceVariableNames: ''!

!classDefinition: #InferenceController category: #ILPP!
Object subclass: #InferenceController
	instanceVariableNames: 'logWeight'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'InferenceController class' category: #ILPP!
InferenceController class
	instanceVariableNames: ''!

!classDefinition: #LikelihoodIC category: #ILPP!
InferenceController subclass: #LikelihoodIC
	instanceVariableNames: 'program iterationsLeft environment'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'LikelihoodIC class' category: #ILPP!
LikelihoodIC class
	instanceVariableNames: ''!

!classDefinition: #SSMetropolisHastingsIC category: #ILPP!
InferenceController subclass: #SSMetropolisHastingsIC
	instanceVariableNames: 'programStack rng environment sampleLogProbs observeLogProbs trace'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'SSMetropolisHastingsIC class' category: #ILPP!
SSMetropolisHastingsIC class
	instanceVariableNames: ''!

!classDefinition: #SequentialMCIC category: #ILPP!
InferenceController subclass: #SequentialMCIC
	instanceVariableNames: 'program randomGen environment'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'SequentialMCIC class' category: #ILPP!
SequentialMCIC class
	instanceVariableNames: ''!

!classDefinition: #Machine category: #ILPP!
Object subclass: #Machine
	instanceVariableNames: 'controlStack valueStack environment logWeight randomGen'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'Machine class' category: #ILPP!
Machine class
	instanceVariableNames: ''!

!classDefinition: #MachineInstruction category: #ILPP!
Object subclass: #MachineInstruction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'MachineInstruction class' category: #ILPP!
MachineInstruction class
	instanceVariableNames: ''!

!classDefinition: #Continuation category: #ILPP!
MachineInstruction subclass: #Continuation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'Continuation class' category: #ILPP!
Continuation class
	instanceVariableNames: ''!

!classDefinition: #CallContinuation category: #ILPP!
Continuation subclass: #CallContinuation
	instanceVariableNames: 'argCount oldEnvironment'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'CallContinuation class' category: #ILPP!
CallContinuation class
	instanceVariableNames: ''!

!classDefinition: #IfContinuation category: #ILPP!
Continuation subclass: #IfContinuation
	instanceVariableNames: 'ifExpression'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'IfContinuation class' category: #ILPP!
IfContinuation class
	instanceVariableNames: ''!

!classDefinition: #LetContinuation category: #ILPP!
Continuation subclass: #LetContinuation
	instanceVariableNames: 'bindsList body bindIndex oldEnvironment'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'LetContinuation class' category: #ILPP!
LetContinuation class
	instanceVariableNames: ''!

!classDefinition: #ObserveContinuation category: #ILPP!
Continuation subclass: #ObserveContinuation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'ObserveContinuation class' category: #ILPP!
ObserveContinuation class
	instanceVariableNames: ''!

!classDefinition: #SampleContinuation category: #ILPP!
Continuation subclass: #SampleContinuation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'SampleContinuation class' category: #ILPP!
SampleContinuation class
	instanceVariableNames: ''!

!classDefinition: #Discard category: #ILPP!
MachineInstruction subclass: #Discard
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'Discard class' category: #ILPP!
Discard class
	instanceVariableNames: ''!

!classDefinition: #Expression category: #ILPP!
MachineInstruction subclass: #Expression
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'Expression class' category: #ILPP!
Expression class
	instanceVariableNames: ''!

!classDefinition: #CallExpr category: #ILPP!
Expression subclass: #CallExpr
	instanceVariableNames: 'functionName argumentList'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'CallExpr class' category: #ILPP!
CallExpr class
	instanceVariableNames: ''!

!classDefinition: #FunctionExpr category: #ILPP!
Expression subclass: #FunctionExpr
	instanceVariableNames: 'arguments body'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'FunctionExpr class' category: #ILPP!
FunctionExpr class
	instanceVariableNames: ''!

!classDefinition: #IfExpr category: #ILPP!
Expression subclass: #IfExpr
	instanceVariableNames: 'conditionToEvaluate trueBranch falseBranch'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'IfExpr class' category: #ILPP!
IfExpr class
	instanceVariableNames: ''!

!classDefinition: #LetExpr category: #ILPP!
Expression subclass: #LetExpr
	instanceVariableNames: 'bindsList expressionsList'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'LetExpr class' category: #ILPP!
LetExpr class
	instanceVariableNames: ''!

!classDefinition: #LiteralExpr category: #ILPP!
Expression subclass: #LiteralExpr
	instanceVariableNames: 'value environment address'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'LiteralExpr class' category: #ILPP!
LiteralExpr class
	instanceVariableNames: ''!

!classDefinition: #ObserveExpr category: #ILPP!
Expression subclass: #ObserveExpr
	instanceVariableNames: 'distribution observedValue'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'ObserveExpr class' category: #ILPP!
ObserveExpr class
	instanceVariableNames: ''!

!classDefinition: #SampleExpr category: #ILPP!
Expression subclass: #SampleExpr
	instanceVariableNames: 'distribution'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'SampleExpr class' category: #ILPP!
SampleExpr class
	instanceVariableNames: ''!

!classDefinition: #VariableExpr category: #ILPP!
Expression subclass: #VariableExpr
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'VariableExpr class' category: #ILPP!
VariableExpr class
	instanceVariableNames: ''!

!classDefinition: #RestoreEnvironment category: #ILPP!
MachineInstruction subclass: #RestoreEnvironment
	instanceVariableNames: 'environmentCorruptor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'RestoreEnvironment class' category: #ILPP!
RestoreEnvironment class
	instanceVariableNames: ''!

!classDefinition: #ProbabilityDistribution category: #ILPP!
Object subclass: #ProbabilityDistribution
	instanceVariableNames: 'uniformRandomGenerator'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'ProbabilityDistribution class' category: #ILPP!
ProbabilityDistribution class
	instanceVariableNames: ''!

!classDefinition: #BernoulliProbabilityDistribution category: #ILPP!
ProbabilityDistribution subclass: #BernoulliProbabilityDistribution
	instanceVariableNames: 'p'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'BernoulliProbabilityDistribution class' category: #ILPP!
BernoulliProbabilityDistribution class
	instanceVariableNames: ''!

!classDefinition: #NormalProbabilityDistribution category: #ILPP!
ProbabilityDistribution subclass: #NormalProbabilityDistribution
	instanceVariableNames: 'mean standardDeviation cachedValue'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'NormalProbabilityDistribution class' category: #ILPP!
NormalProbabilityDistribution class
	instanceVariableNames: ''!

!classDefinition: #NotificationBreakpoints category: #ILPP!
Notification subclass: #NotificationBreakpoints
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'NotificationBreakpoints class' category: #ILPP!
NotificationBreakpoints class
	instanceVariableNames: ''!

!classDefinition: #DoneNotification category: #ILPP!
NotificationBreakpoints subclass: #DoneNotification
	instanceVariableNames: 'result machine'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'DoneNotification class' category: #ILPP!
DoneNotification class
	instanceVariableNames: ''!

!classDefinition: #ObserveNotification category: #ILPP!
NotificationBreakpoints subclass: #ObserveNotification
	instanceVariableNames: 'distribution observedValue machine'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'ObserveNotification class' category: #ILPP!
ObserveNotification class
	instanceVariableNames: ''!

!classDefinition: #SampleNotification category: #ILPP!
NotificationBreakpoints subclass: #SampleNotification
	instanceVariableNames: 'distribution'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'SampleNotification class' category: #ILPP!
SampleNotification class
	instanceVariableNames: ''!

!classDefinition: #HOPPLParserTest category: #ILPP!
TestCase subclass: #HOPPLParserTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'HOPPLParserTest class' category: #ILPP!
HOPPLParserTest class
	instanceVariableNames: ''!

!classDefinition: #HOPPLTest category: #ILPP!
TestCase subclass: #HOPPLTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ILPP'!
!classDefinition: 'HOPPLTest class' category: #ILPP!
HOPPLTest class
	instanceVariableNames: ''!


!ProbabilityDistribution commentStamp: '<historical>' prior: 0!
ProbabilityDistributions can also generate random numbers!

!NormalProbabilityDistribution commentStamp: 'jmv 4/6/2015 12:19' prior: 0!
| r h |
r _ NormalProbabilityDistribution new.
h _ Histogram binCount: 500 minValue: -5 maxValue: 5.
100000 timesRepeat: [ h addValue: r nextRandomNumber  ].
h plot.

| r h |
r _ NormalProbabilityDistribution mean: 2.5 standardDeviation: 0.5.
h _ Histogram binCount: 500 minValue: -5 maxValue: 5.
100000 timesRepeat: [ h addValue: r nextRandomNumber  ].
h plot.!

!Bind methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:49:14'!
getValue

	^value ! !

!Bind methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:49:17'!
getVariable

	^variable ! !

!Bind methodsFor: 'as yet unclassified' stamp: 'mm 9/Jul/2026, 11:09:16 pm (UTC)'!
parameter: aVariableExpr value: aValue 
	
	variable := aVariableExpr .
	value:= aValue.! !

!Bind class methodsFor: 'instance creation' stamp: 'mm 9/Jul/2026, 11:06:58 pm (UTC)'!
parameter: aVariableExpr value: aValue 
	^self new parameter: aVariableExpr value: aValue ! !

!Closure methodsFor: 'as yet unclassified' stamp: 'mm 12/Jul/2026, 8:53:49 pm (UTC)'!
initializeWithParameters: parametersList body: aBody andEnvironment: anEnvironment 
	parameters := parametersList .
	body := aBody .
	closureEnvironment := anEnvironment ! !

!Closure methodsFor: 'accessing' stamp: 'mm 12/Jul/2026, 8:55:54 pm (UTC)'!
body
	
	^body! !

!Closure methodsFor: 'accessing' stamp: 'mm 12/Jul/2026, 8:55:15 pm (UTC)'!
environment
	^closureEnvironment ! !

!Closure methodsFor: 'accessing' stamp: 'mm 12/Jul/2026, 8:55:32 pm (UTC)'!
parameters
	
	^parameters! !

!Closure class methodsFor: 'instance creation' stamp: 'mm 12/Jul/2026, 8:52:50 pm (UTC)'!
withParameters: parametersList body: aBody andEnvironment: anEnvironment 
	^self new initializeWithParameters: parametersList body: aBody andEnvironment: anEnvironment ! !

!HOPPLParser methodsFor: 'entry point' stamp: 'mm 7/13/2026 01:17:57'!
parseProgram: aList
	"aList: lo que devuelve el parser visto en clase. Puede ser:
	 - una sola forma (empieza con un Symbol: let/if/sample/observe/fn/una llamada), o
	 - una lista de formas de nivel superior (algunas #defn, la última la expresión principal).
	 Devuelve un Array: {environment (con las funciones definidas por defn). programBody (OrderedCollection de Expression)}"

	| mainForms |
	globalEnv := self primitiveEnvironment.

	mainForms := OrderedCollection new.

	aList do: [:form |
		((self isListForm: form) and: [form notEmpty and: [form first = #defn]])
			ifTrue: [self registerDefn: form]
			ifFalse: [mainForms add: (self parseExpr: form)]].

	^Array with: globalEnv copy with: mainForms
	! !

!HOPPLParser methodsFor: 'top level' stamp: 'mm 7/12/2026 23:33:38'!
registerDefn: form
	"form = #(#defn name #(params) body1 body2 ...)"
	| name paramsList params bodyForms bodyExprs closure |
	name := form second.
	paramsList := form third.
	params := paramsList collect: [:p | VariableExpr name: p].
	bodyForms := form allButFirst: 3.
	bodyExprs := (bodyForms collect: [:f | self parseExpr: f]) asOrderedCollection.

	closure := Closure withParameters: params body: bodyExprs andEnvironment: globalEnv.
	globalEnv at: name put: closure! !

!HOPPLParser methodsFor: 'dispatch' stamp: 'mm 7/12/2026 21:11:12'!
parseExpr: form
	(form isKindOf: Symbol) ifTrue: [^VariableExpr name: form].
	(self isListForm: form) ifFalse: [^LiteralExpr value: form]. "numeros, booleanos, etc."

	(form first == #let) ifTrue: [^self parseLet: form].
	(form first == #if) ifTrue: [^self parseIf: form].
	(form first == #sample) ifTrue: [^self parseSample: form].
	(form first == #observe) ifTrue: [^self parseObserve: form].
	(form first == #fn) ifTrue: [^self parseFn: form].
	
	^self parseCall: form! !

!HOPPLParser methodsFor: 'forms'!
parseCall: form
	"form = #(fnForm arg1 arg2 ...)"
	| fnForm argForms fnExpr argExprs |
	fnForm := form first.
	argForms := form allButFirst.
	fnExpr := self parseExpr: fnForm.
	argExprs := (argForms collect: [:f | self parseExpr: f]) asOrderedCollection.

	((fnForm isKindOf: Symbol) and: [(self isFoldable: fnForm) and: [argExprs size > 2]])
		ifTrue: [^self foldBinaryCall: fnExpr overArguments: argExprs]
		ifFalse: [^CallExpr withFunctionName: fnExpr andArguments: argExprs]! !

!HOPPLParser methodsFor: 'forms' stamp: 'mm 7/12/2026 23:32:51'!
parseFn: form
	"form = #(#fn #(v1 v2 ...) body1 body2 ...) -> FunctionExpr, solo params + body"
	| paramsList params bodyForms bodyExprs |
	paramsList := form second.
	params := paramsList collect: [:p | VariableExpr name: p].
	bodyForms := form allButFirst: 2.
	bodyExprs := (bodyForms collect: [:f | self parseExpr: f]) asOrderedCollection.
	^FunctionExpr withArguments: params andBody: bodyExprs! !

!HOPPLParser methodsFor: 'forms'!
parseIf: form
	"form = #(#if cond then else)"
	^IfExpr
		condition: (self parseExpr: (form at: 2))
		ifTrue: (self parseExpr: (form at: 3))
		ifFalse: (self parseExpr: (form at: 4))! !

!HOPPLParser methodsFor: 'forms'!
parseLet: form
	"form = #(#let #(b1 e1 b2 e2 ...) body1 body2 ...)"
	| bindsFlat binds bodyForms bodyExprs |
	bindsFlat := form second.
	binds := OrderedCollection new.
	1 to: bindsFlat size by: 2 do: [:i |
		binds add: (Bind
			parameter: (VariableExpr name: (bindsFlat at: i))
			value: (self parseExpr: (bindsFlat at: i + 1)))].

	bodyForms := form allButFirst: 2.
	bodyExprs := (bodyForms collect: [:f | self parseExpr: f]) asOrderedCollection.
	^LetExpr withBinds: binds andBody: bodyExprs! !

!HOPPLParser methodsFor: 'forms'!
parseObserve: form
	"form = #(#observe distExpr valueExpr)"
	^ObserveExpr
		from: (self parseExpr: (form at: 2))
		value: (self parseExpr: (form at: 3))! !

!HOPPLParser methodsFor: 'forms'!
parseSample: form
	"form = #(#sample distExpr)"
	^SampleExpr from: (self parseExpr: (form at: 2))! !

!HOPPLParser methodsFor: 'helpers'!
foldBinaryCall: fnExpr overArguments: argExprs
	| result |
	result := argExprs first.
	(argExprs allButFirst) do: [:argExpr |
		result := CallExpr withFunctionName: fnExpr andArguments: (OrderedCollection with: result with: argExpr)].
	^result! !

!HOPPLParser methodsFor: 'helpers' stamp: 'mm 7/13/2026 01:18:49'!
isFoldable: aSymbol
	"operadores variadicos en la sintaxis de origen que las primitivas solo soportan binarios"
	^#(#+ #* #- #and #or) includes: aSymbol! !

!HOPPLParser methodsFor: 'helpers'!
isListForm: anObject
	^(anObject isKindOf: SequenceableCollection) and: [(anObject isKindOf: String) not]! !

!HOPPLParser methodsFor: 'helpers' stamp: 'mm 7/12/2026 21:13:55'!
primitiveEnvironment
"--- construcción del environment de primitivas ---"
|env|

    env := Dictionary new.
    env at: #bernoulli put: [:p|BernoulliProbabilityDistribution p: p].
    env at: #normal put: [:mean :standardDeviation|NormalProbabilityDistribution mean: mean standardDeviation: standardDeviation ].
    "== aritmética (binarias/unarias, confianza alta) =="
    env at: #+ put: [:x :y | x + y].
    env at: #- put: [:x :y | x - y].
    env at: #* put: [:x :y | x * y].
    env at: #/ put: [:x :y | x / y].
    env at: #sqrt put: [:x | x sqrt].
    env at: #exp put: [:x | x exp].
    env at: #log put: [:x | x ln]. "log natural, como math.log de Python"
    env at: #pow put: [:x :y | x raisedTo: y].
    env at: #abs put: [:x | x abs].
    env at: #floor put: [:x | x floor].
    env at: #ceil put: [:x | x ceiling].
    env at: #tanh put: [:x | | e2x | e2x := (2 * x) exp. (e2x - 1) / (e2x + 1)].
    env at: #mod put: [:a :b | a \\ b]. "obs puede no funcionar como el de python"

    "== variádicas de aritmética: bloque de 1 arg que recibe TODA la lista de args =="
    env at: #max put: [:xs | xs inject: xs first into: [:a :b | a max: b]].
    env at: #min put: [:xs | xs inject: xs first into: [:a :b | a min: b]].

    "== comparación / lógica (confianza alta) =="
    env at: #= put: [:a :b | a = b].
    env at: #== put: [:a :b | a = b].
    env at: #'!!=' put: [:a :b | (a = b) not].
    env at: #< put: [:a :b | a < b].
    env at: #> put: [:a :b | a > b].
    env at: #<= put: [:a :b | a <= b].
    env at: #>= put: [:a :b | a >= b].
    env at: #not put: [:x | x not].

    "== and/or variádicas: bloque de 1 arg (lista) =="
    env at: #and put: [:xs | xs allSatisfy: [:x | x]].
    env at: #or put: [:xs | xs anySatisfy: [:x | x]].

    "== estructuras de datos  =="
    env at: #vector put: [:xs | xs asOrderedCollection].
    env at: #list put: [:xs | xs asOrderedCollection].
    env at: #'hash-map' put: [:xs |
        | d | d := Dictionary new.
        1 to: xs size by: 2 do: [:i | d at: (xs at: i) put: (xs at: i + 1)].
        d].
    env at: #get put: [:coll :idx |
        "asumo indices 0-based como Clojure/Python -> sumo 1 para Smalltalk"
        (coll isKindOf: Dictionary) ifTrue: [coll at: idx] ifFalse: [coll at: idx + 1]].
    env at: #put put: [:coll :idx :val |
        | c | c := coll copy.
        (c isKindOf: Dictionary) ifTrue: [c at: idx put: val] ifFalse: [c at: idx + 1 put: val].
        c].
    env at: #assoc put: (env at: #put). 
    env at: #first put: [:coll | coll first].
    env at: #second put: [:coll | coll second].
    env at: #last put: [:coll | coll last].
    env at: #rest put: [:coll | coll allButFirst].
    env at: #nth put: [:coll :idx | coll at: idx + 1]. "idem, 0-based asumido"
    env at: #conj put: [:coll :item | coll copyWith: item]. "asumo: agrega al final, tipo vector"
    env at: #cons put: [:item :coll | (OrderedCollection with: item) , coll asOrderedCollection]. "asumo: agrega al principio"
    env at: #append put: [:coll :item | coll copyWith: item]. "verificar si difiere de conj en el original"
    env at: #concat put: [:colls | colls inject: OrderedCollection new into: [:acc :c | acc addAll: c; yourself]]. "variadica: 1 arg = lista de colecciones"
    env at: #count put: [:coll | coll size].
    env at: #'empty?' put: [:coll | coll isEmpty].
    env at: #peek put: [:coll | coll last]. "asumo semantica de vector; si es lista podria ser 'first'"
    env at: #range put: [:n | (0 to: n - 1) asOrderedCollection]. "asumo un solo argumento, range(n)"
    env at: #'vector?' put: [:x | x isKindOf: OrderedCollection].
    env at: #'map?' put: [:x | x isKindOf: Dictionary].
    env at: #'number?' put: [:x | (x isKindOf: Number) and: [(x isKindOf: Boolean) not]].

    "== matrices (redes bayesianas, cap. 2.3.3) — matriz = OrderedCollection de filas (OrderedCollection de numeros) =="
    env at: #'mat-mul' put: [:a :b |
        | bt |
        bt := self transpose: b.
        a collect: [:row | bt collect: [:col | (row with: col collect: [:x :y | x * y]) inject: 0 into: [:s :v | s + v]]]].
    env at: #'mat-add' put: [:a :b | a with: b collect: [:ra :rb | ra with: rb collect: [:x :y | x + y]]].
    env at: #'mat-transpose' put: [:m | self transpose: m].
    env at: #'mat-tanh' put: [:m | m collect: [:row | row collect: (env at: #tanh)]].
    env at: #'mat-relu' put: [:m | m collect: [:row | row collect: [:x | x max: 0]]].
    env at: #'mat-repmat' put: [:m :rowReps :colReps |
        "asumo (matriz repsFilas repsColumnas); verificar orden de args contra el original"
        | tiled |
        tiled := OrderedCollection new.
        rowReps timesRepeat: [
            m do: [:row |
                | wideRow | wideRow := OrderedCollection new.
                colReps timesRepeat: [wideRow addAll: row].
                tiled add: wideRow]].
        tiled].
	
    ^env! !

!HOPPLParser methodsFor: 'helpers' stamp: 'mm 7/12/2026 19:10:46'!
transpose: aMatrix
    | nCols |
    nCols := aMatrix first size.
    ^(1 to: nCols) collect: [:j | aMatrix collect: [:row | row at: j]]! !

!InferenceController methodsFor: 'logWeight' stamp: 'CR 10/Jul/2026, 9:50:04 pm (UTC)'!
computeLogWeight: observeNotification

	| distribution obs |
	
			distribution := observeNotification distribution.
			obs := observeNotification observedValue.
			observeNotification machine addLogWeight: (distribution logProbability: obs)! !

!InferenceController methodsFor: 'handling' stamp: 'CR 10/Jul/2026, 8:45:14 pm (UTC)'!
handleObservation: observeNotification

	self subclassResponsibility! !

!InferenceController methodsFor: 'handling' stamp: 'CR 10/Jul/2026, 8:44:51 pm (UTC)'!
handleSample: sampleNotification

	self subclassResponsibility! !

!InferenceController methodsFor: 'sample' stamp: 'mm 11/Jul/2026, 11:22:52 pm (UTC)'!
newSample: aDistribution

	^ aDistribution nextRandomNumber! !

!LikelihoodIC methodsFor: 'initialization' stamp: 'mm 7/13/2026 01:32:26'!
initializeFor: aProgram andWithEnvironment: anEnvironment  

	program := aProgram copy .
	logWeight := 0.
	environment := anEnvironment copy .! !

!LikelihoodIC methodsFor: 'logWeight' stamp: 'mm 7/13/2026 01:36:21'!
computeLogWeight: observeNotification

	| distribution obs |
	
	distribution := observeNotification distribution.
	obs := observeNotification observedValue.
	! !

!LikelihoodIC methodsFor: 'handling' stamp: 'CR 10/Jul/2026, 8:44:32 pm (UTC)'!
handleObservation: observeNotification

	self computeLogWeight: observeNotification.
	observeNotification resume: observeNotification observedValue ! !

!LikelihoodIC methodsFor: 'handling' stamp: 'mm 7/13/2026 01:36:28'!
handleSample: sampleNotification

	|newSample|
	
	newSample:= self newSample: sampleNotification distribution.
	sampleNotification resume: newSample! !

!LikelihoodIC methodsFor: 'sample' stamp: 'mm 11/Jul/2026, 11:22:40 pm (UTC)'!
newSample: aDistribution

	^ aDistribution nextRandomNumber! !

!LikelihoodIC methodsFor: 'run' stamp: 'mm 7/13/2026 00:50:39'!
run
	
	self run: 1.
	
	! !

!LikelihoodIC methodsFor: 'run' stamp: 'mm 7/13/2026 01:32:44'!
run: numberOfIterations

	| machine result nResults values logWeights|
	
	nResults := OrderedCollection new.
	values := OrderedCollection new.
	logWeights := OrderedCollection new.
	
	numberOfIterations timesRepeat:[
		
		machine := Machine withControlStack: program copy environment: environment copy.
		
		result := [machine resume] 
			on: SampleNotification do: 
					[:sampleNotification|
						self handleSample: sampleNotification .
			] on: ObserveNotification do: 
					[:observeNotification|
						self handleObservation: observeNotification.
			] on: DoneNotification do:
					[:doneNotification|
						values add: doneNotification result.
						logWeights add: doneNotification machine logWeight.
			].
	].
	logWeights := logWeights softmax.
	nResults add: values .
	nResults add: logWeights.
	^nResults
	! !

!LikelihoodIC class methodsFor: 'instance creation' stamp: 'mm 7/12/2026 21:01:43'!
for: aParsedProgram 
	^self new initializeFor: aParsedProgram second andWithEnvironment: aParsedProgram first! !

!SSMetropolisHastingsIC methodsFor: 'initialization' stamp: 'mm 7/12/2026 23:27:54'!
initializeFor: aProgramStack andWithEnvironment: anEnvironment  
	
	programStack := aProgramStack copy.
	rng := Random new.
	environment:= anEnvironment copy.
	
	! !

!SSMetropolisHastingsIC methodsFor: 'resample' stamp: 'mm 12/Jul/2026, 12:11:53 am (UTC)'!
chooseAddressToResampleFrom: cacheDict

	^ cacheDict keys at: ( rng nextInteger: cacheDict size)! !

!SSMetropolisHastingsIC methodsFor: 'resample' stamp: 'mm 7/13/2026 01:06:03'!
runResample: anAddress withCache: aCache 

	|    machine  |
	
	sampleLogProbs := IdentityDictionary new.
	observeLogProbs := IdentityDictionary new. 
	machine := Machine withControlStack: programStack copy environment: environment copy.
	trace := IdentityDictionary new.
	
	[machine resume] 
		on: SampleNotification do: 
			[:sampleNotification | self handleSample: sampleNotification resampling: anAddress withCache: aCache.
			]
		on: ObserveNotification do:
			[:observeNotification | self handleObservation: observeNotification .] 
		on: DoneNotification do: 
			[:doneNotification | 
				^self handleDone: doneNotification].
		
	! !

!SSMetropolisHastingsIC methodsFor: 'logProbability' stamp: 'mm 11/Jul/2026, 11:28:00 pm (UTC)'!
computeLogProbabilityOf: anEvent from: aDistribution

	^ aDistribution logProbability: anEvent! !

!SSMetropolisHastingsIC methodsFor: 'logProbability' stamp: 'mm 7/13/2026 01:34:59'!
recordLogProbOf: anEvent in: aCollectionOfLogProbs at: aKey

	| distribution |
	
	distribution := aKey distribution.
	aCollectionOfLogProbs at: aKey put: (distribution logProbability: anEvent).! !

!SSMetropolisHastingsIC methodsFor: 'assertions' stamp: 'mm 12/Jul/2026, 12:36:40 am (UTC)'!
address: sampleNotification notIn: aCache

	^ (aCache includesKey: sampleNotification) not! !

!SSMetropolisHastingsIC methodsFor: 'assertions' stamp: 'mm 12/Jul/2026, 12:05:34 am (UTC)'!
currentAddress: sampleNotification isTheOneToResample: anAddress

	^ sampleNotification == anAddress! !

!SSMetropolisHastingsIC methodsFor: 'run' stamp: 'mm 7/13/2026 01:33:00'!
firstRun
	
	^self runResample: nil withCache: IdentityDictionary new.
	
	! !

!SSMetropolisHastingsIC methodsFor: 'run' stamp: 'mm 7/13/2026 01:35:58'!
runSteps: numSteps

	|cacheDict addressToResample acceptanceRatio oldRun newRun results |
	
	oldRun := self firstRun. 
	results:= OrderedCollection new. 

	numSteps timesRepeat: [
		cacheDict := oldRun second.
		addressToResample := self chooseAddressToResampleFrom: cacheDict.
		newRun := self runResample: addressToResample withCache: cacheDict.
	
		acceptanceRatio := self logAcceptanceRatioWithCurrentTrace: oldRun proposedTrace: newRun andResampled: addressToResample.
	       
		(rng next ln) < acceptanceRatio ifTrue: [oldRun := newRun].
		results add: oldRun first.
	].
		
	^results

! !

!SSMetropolisHastingsIC methodsFor: 'acceptanceRatio' stamp: 'mm 7/13/2026 01:35:44'!
logAcceptanceRatioWithCurrentTrace: anOldRun proposedTrace: aNewRun andResampled: anAddress

| proposedChanges discardedChanges numerator denominator currentTrace proposedTrace currentSampleProbs proposedSampleProbs currentObserveProbs proposedObserveProbs |

	currentTrace := anOldRun second.
	proposedTrace := aNewRun second.
	currentSampleProbs := anOldRun third.
	proposedSampleProbs := aNewRun third.
	currentObserveProbs := anOldRun fourth.
	proposedObserveProbs := aNewRun fourth.
	
	proposedChanges := self setDifferenceBetween: proposedTrace and: currentTrace.
	proposedChanges add: anAddress.
    	discardedChanges := self setDifferenceBetween: currentTrace and: proposedTrace.
	discardedChanges add: anAddress.
	   
	numerator := (proposedSampleProbs associations
	            inject: 0 into: [:acc :assoc |
	                (proposedChanges includes: assoc key)
	                    ifTrue: [acc]
	                    ifFalse: [acc + assoc value]])
	        + (proposedObserveProbs values inject: 0 into: [:a :b | a + b]).

	denominator := (currentSampleProbs associations
	            inject: 0 into: [:acc :assoc |
	                (discardedChanges includes: assoc key)
	                    ifTrue: [acc]
	                    ifFalse: [acc + assoc value]])
	        + (currentObserveProbs values inject: 0 into: [:a :b | a + b]).

	^(currentTrace size ln - proposedTrace size ln) + (numerator - denominator)! !

!SSMetropolisHastingsIC methodsFor: 'acceptanceRatio' stamp: 'mm 12/Jul/2026, 3:29:42 pm (UTC)'!
setDifferenceBetween: aTrace and: anotherTrace

	^ aTrace keys asSet collect: [:aKey| (anotherTrace keys includes: aKey)not]! !

!SSMetropolisHastingsIC methodsFor: 'handling' stamp: 'mm 7/13/2026 01:06:03'!
handleDone: doneNotification

	^ {doneNotification result. trace. sampleLogProbs. observeLogProbs}! !

!SSMetropolisHastingsIC methodsFor: 'handling' stamp: 'mm 7/13/2026 01:33:18'!
handleObservation: observeNotification

	|observedValue|
	
	observedValue := observeNotification observedValue .
	self recordLogProbOf: observedValue in: observeLogProbs at: observeNotification .
	observeNotification resume: observedValue! !

!SSMetropolisHastingsIC methodsFor: 'handling' stamp: 'mm 7/13/2026 01:33:40'!
handleSample: sampleNotification resampling: anAddress withCache: aCache

	| newSample |
	
	((self currentAddress: sampleNotification isTheOneToResample: anAddress) or: [self address: sampleNotification notIn: aCache]) 
	ifTrue: 
		[newSample := self newSample: sampleNotification distribution.]
	ifFalse:
		[newSample := aCache at: sampleNotification ].
		
	trace at: sampleNotification put: newSample. 
	self recordLogProbOf: newSample in: sampleLogProbs at: sampleNotification .
	sampleNotification resume: newSample! !

!SSMetropolisHastingsIC methodsFor: 'as yet unclassified' stamp: 'mm 11/Jul/2026, 11:43:47 pm (UTC)'!
keys: traces

	^ traces keys asOrderedCollection! !

!SSMetropolisHastingsIC class methodsFor: 'instance creation' stamp: 'mm 7/12/2026 23:18:03'!
for: aParsedProgram 

	^self new initializeFor: aParsedProgram second andWithEnvironment: aParsedProgram first ! !

!SequentialMCIC methodsFor: 'initialization' stamp: 'mm 7/12/2026 23:28:11'!
initializeFor: aProgram andWithEnvironment: anEnvironment  

	program := aProgram copy.
	randomGen:= Random new .
	environment := anEnvironment copy.! !

!SequentialMCIC methodsFor: 'run' stamp: 'mm 7/13/2026 01:37:34'!
createParticles: numParticles

	^ (1 to: numParticles) collect: [:i |
	        Machine withControlStack: program copy environment: environment copy]! !

!SequentialMCIC methodsFor: 'run' stamp: 'mm 7/13/2026 01:38:15'!
run:  numParticles
	|particles messages logIncs paused weights ancestors |

	particles := self createParticles: numParticles.
	[
	messages := self advanceParticles: particles.
       self allParticlesHaveFinishedExecution: messages.
	] whileFalse: 
		[
			(self allParticlesHaveReachedObserve: messages) ifFalse: [self error: 'las particulas llegaron a distintos puntos de observe'].

        		logIncs := self collectLogIncs: messages.
        		paused := self getPausedMachines: messages.
        		paused with: messages do: [:particle :notification | particle pushValue: notification observedValue ]. 

        		weights := self normalizedProbabilitiesFrom: logIncs .
        		ancestors := self resampleIndicesFor: weights count: numParticles.
        		particles := self forkMachines: paused choosingFrom: ancestors.
		
		].
    ^messages ! !

!SequentialMCIC methodsFor: 'accessing' stamp: 'CR 10/Jul/2026, 11:48:35 pm (UTC)'!
rng

	^randomGen ! !

!SequentialMCIC methodsFor: 'probability' stamp: 'mm 7/13/2026 01:37:18'!
collectLogIncs: messages

	^ messages collect: [:notification | |value| 
		value:= (notification distribution) logProbability: notification observedValue. 
		notification machine addLogWeight: value. 
		value]! !

!SequentialMCIC methodsFor: 'probability' stamp: 'mm 12/Jul/2026, 12:33:49 am (UTC)'!
normalizedProbabilitiesFrom: logIncs

	^ logIncs asOrderedCollection softmax! !

!SequentialMCIC methodsFor: 'assertions' stamp: 'mm 12/Jul/2026, 12:16:54 am (UTC)'!
allParticlesHaveFinishedExecution: messages

	^ messages allSatisfy: [:notification | notification isKindOf: DoneNotification ]! !

!SequentialMCIC methodsFor: 'assertions' stamp: 'mm 12/Jul/2026, 12:17:33 am (UTC)'!
allParticlesHaveReachedObserve: messages

	^ messages allSatisfy: [:notification | notification isKindOf: ObserveNotification ]! !

!SequentialMCIC methodsFor: 'advance' stamp: 'mm 12/Jul/2026, 3:42:28 pm (UTC)'!
advanceParticle: m 
	
	[m resume] 
		on: SampleNotification 
		do:[:sampleNotification | 
			self handleSample:sampleNotification ]
		
		on: DoneNotification 
		do:[:doneNotification| ^doneNotification ]
		
		on: ObserveNotification 
		do:[:observeNotification | ^observeNotification ]! !

!SequentialMCIC methodsFor: 'advance' stamp: 'mm 12/Jul/2026, 12:15:00 am (UTC)'!
advanceParticles: particles

	^ particles collect: [:p | self advanceParticle: p]! !

!SequentialMCIC methodsFor: 'handling' stamp: 'mm 7/13/2026 01:37:40'!
handleSample: sampleNotification

	|newSample|
	
	newSample:= self newSample: sampleNotification distribution.
	sampleNotification resume: newSample! !

!SequentialMCIC methodsFor: 'resample' stamp: 'mm 12/Jul/2026, 12:35:37 am (UTC)'!
forkMachines: paused choosingFrom: ancestors

	^ ancestors collect: [:i | (paused at: i) forkWithRng: (Random seed:i)]! !

!SequentialMCIC methodsFor: 'resample' stamp: 'mm 12/Jul/2026, 12:30:00 am (UTC)'!
getPausedMachines: messages

	^ messages collect: [:notification | notification machine]! !

!SequentialMCIC methodsFor: 'resample' stamp: 'mm 7/13/2026 01:38:03'!
resampleIndicesFor: weights count: numberOfParticles 

	| cum acc |
	acc := 0.
	cum := weights collect: [:w | acc := acc + w. acc].
	^(1 to: numberOfParticles ) collect: [:j |
	    | u | u := self rng next.
	    (1 to: cum size) detect: [:i | (cum at: i) >= u] ifNone:[1]	] ! !

!SequentialMCIC class methodsFor: 'instance creation' stamp: 'mm 7/12/2026 23:18:08'!
for: aParsedProgram 
	
	^self new initializeFor: aParsedProgram second andWithEnvironment: aParsedProgram first  ! !

!Machine methodsFor: 'continuation' stamp: 'mm 7/13/2026 01:38:48'!
continueCall: aCallContinuation 

	| args function |
	
	args := OrderedCollection new.
	aCallContinuation argCount timesRepeat: [args add: valueStack removeLast].
	args := args reverse asArray.
	function := valueStack removeLast.

	(function isKindOf: Closure)
	    ifTrue: [
	        controlStack add: (RestoreEnvironment from: aCallContinuation).
	        environment := function environment copy.
	        function parameters with: args do: [:param :arg | environment at: param name put: arg].
	        self pushBody: function body copy]
	    ifFalse: [valueStack add: (function valueWithArguments: args)]

! !

!Machine methodsFor: 'continuation' stamp: 'CR 7/Jul/2026, 8:46:28 pm (UTC)'!
continueIf: anIfContinuation  
	
	| evaluatedCondition |
	
	evaluatedCondition:= valueStack removeLast.
	
	evaluatedCondition ifTrue: [controlStack add:anIfContinuation trueBranch  ] 
						ifFalse: [controlStack add: anIfContinuation falseBranch]! !

!Machine methodsFor: 'continuation' stamp: 'mm 7/13/2026 01:39:05'!
continueLet: aLetContinuation 

	| evaluatedExpression varToBind body newLetContinuation updatedIndex |
	
	evaluatedExpression := valueStack removeLast.
	varToBind := aLetContinuation getVariableToBind name.
	
	environment at: varToBind put: evaluatedExpression .
	
	aLetContinuation finishedBinding ifTrue: [
		"pusheo el body y pusheo algo que diga que hay que restaurar el env"
		controlStack add: (RestoreEnvironment from: aLetContinuation ).
		body := aLetContinuation body.
		self pushBody: body.] 
	ifFalse: ["creo una nueva letContinuation con el indice updateado y con el viejo environment"
		| nextExpressionToEvaluate |
	updatedIndex := aLetContinuation nextIndex .
		newLetContinuation := LetContinuation withBindings: aLetContinuation binds body: aLetContinuation body toBind: updatedIndex andEnvironment: aLetContinuation oldEnvironment.
		controlStack add: newLetContinuation .
		nextExpressionToEvaluate := (aLetContinuation binds at: updatedIndex) getValue .
		controlStack add: nextExpressionToEvaluate
		].
	
	
	
	
	! !

!Machine methodsFor: 'continuation' stamp: 'mm 7/13/2026 01:39:14'!
continueObserve

	| distribution observedValue value |
	
	observedValue := valueStack removeLast.
	distribution := valueStack removeLast.
	
	value := (ObserveNotification from: distribution value: observedValue fromMachine: self ) signal.
	valueStack add: value.! !

!Machine methodsFor: 'continuation' stamp: 'mm 7/13/2026 01:39:21'!
continueSample

	| distribution newSample |
	
	distribution := valueStack removeLast.
	newSample := (SampleNotification from: distribution) signal .
	
	valueStack add: newSample .! !

!Machine methodsFor: 'initialization' stamp: 'mm 12/Jul/2026, 8:33:35 pm (UTC)'!
initializeWithControlStack: aControlStack  
	
	self initializeWithControlStack: aControlStack environment: Dictionary new! !

!Machine methodsFor: 'initialization' stamp: 'mm 12/Jul/2026, 8:33:43 pm (UTC)'!
initializeWithControlStack: aControlStack environment: anEnvironment
   
	controlStack := aControlStack reverse .
	environment:= anEnvironment .
	valueStack := OrderedCollection new.
	logWeight :=0.0
	! !

!Machine methodsFor: 'resume' stamp: 'mm 7/13/2026 01:39:59'!
resume

	|  instruction result |
	
	[controlStack notEmpty] whileTrue: [
		instruction := controlStack removeLast.
		instruction evaluateIn: self.	
		
		].
	result := valueStack removeLast.
	
	(DoneNotification finalResult: result fromMachine: self) signal. ! !

!Machine methodsFor: 'environment' stamp: 'mm 8/Jul/2026, 9:42:32 pm (UTC)'!
environment
	
	^environment! !

!Machine methodsFor: 'environment' stamp: 'mm 7/13/2026 01:39:53'!
restoreEnvironment: environmentToRestore 

	environment := environmentToRestore ! !

!Machine methodsFor: 'rng' stamp: 'mm 7/13/2026 01:39:36'!
forkWithRng: aRng

    | new |

	new := Machine withControlStack: controlStack copy environment: environment copy.
	new setValueStack: valueStack copy.
	new setRng: aRng. 
	new addLogWeight: logWeight .
  
	^new! !

!Machine methodsFor: 'rng' stamp: 'CR 10/Jul/2026, 11:58:42 pm (UTC)'!
setRng: aRng 
	
	randomGen:= aRng! !

!Machine methodsFor: 'logWeight' stamp: 'CR 10/Jul/2026, 9:58:16 pm (UTC)'!
addLogWeight: aLogWeight 
	
	logWeight:= logWeight + aLogWeight ! !

!Machine methodsFor: 'logWeight' stamp: 'CR 10/Jul/2026, 11:28:46 pm (UTC)'!
logWeight

	^logWeight ! !

!Machine methodsFor: 'visit' stamp: 'mm 7/13/2026 01:40:26'!
visitCall: aCallExpression 

	|argList|

	argList := aCallExpression arguments.
	controlStack add: (CallContinuation withArgumentCount: argList size andEnvironment: environment) .
	[ argList notEmpty] whileTrue:
	     [controlStack add: (argList removeLast).].

	controlStack add: aCallExpression name.! !

!Machine methodsFor: 'visit' stamp: 'mm 7/13/2026 01:40:33'!
visitDiscard

	valueStack removeLast.! !

!Machine methodsFor: 'visit' stamp: 'mm 7/13/2026 01:40:37'!
visitDistribution: aProbabilityDistribution 

	valueStack add: aProbabilityDistribution ! !

!Machine methodsFor: 'visit' stamp: 'mm 7/13/2026 01:41:03'!
visitFunction: aFunctionExpr 

	| arguments  closure |

	arguments := aFunctionExpr arguments.

	closure:= Closure withParameters: arguments body: aFunctionExpr body andEnvironment: environment copy. 

	valueStack add: closure
! !

!Machine methodsFor: 'visit' stamp: 'mm 8/Jul/2026, 12:29:19 pm (UTC)'!
visitIf: anIfExpression  
	
	| ifContinuation |
	
	ifContinuation:= IfContinuation withIfExpression: anIfExpression .
	
	controlStack add:ifContinuation.
	
	controlStack add: anIfExpression condition. 
	! !

!Machine methodsFor: 'visit' stamp: 'mm 9/Jul/2026, 11:05:54 pm (UTC)'!
visitLet: aLetExpression 
	
	| bindExpression oldEnvironment letContinuation binds body |
	
	binds := aLetExpression binds.
	bindExpression:= binds first getValue.
	body := aLetExpression body.
	
	oldEnvironment:= environment copy. 
	
	letContinuation := LetContinuation withBindings: binds body: body toBind: 1 andEnvironment: oldEnvironment.
	
	controlStack add: letContinuation. 
	
	controlStack add: bindExpression . 
	
	! !

!Machine methodsFor: 'visit' stamp: 'mm 7/13/2026 01:41:13'!
visitLiteral: aLiteralExpr 

	valueStack add: aLiteralExpr getValue ! !

!Machine methodsFor: 'visit' stamp: 'mm 7/13/2026 01:41:20'!
visitObserve: anObserveExpr 

	controlStack add: ObserveContinuation new.
	controlStack add: anObserveExpr observedValue.
	controlStack add: anObserveExpr distribution.! !

!Machine methodsFor: 'visit' stamp: 'mm 7/13/2026 01:41:26'!
visitSample: aSampleExpr 

	controlStack add: SampleContinuation new.
	controlStack add: aSampleExpr distribution.! !

!Machine methodsFor: 'visit' stamp: 'mm 7/13/2026 01:41:48'!
visitVariable: aVariable
 
	| value variableName |
	
	variableName := aVariable name.
	(environment includesKey:variableName ) 
		ifTrue: [value:= environment at:variableName .] .
		
	valueStack add: value.
		
	! !

!Machine methodsFor: 'valueStack' stamp: 'mm 7/13/2026 01:39:48'!
pushValue: aValue 

	valueStack add:aValue ! !

!Machine methodsFor: 'valueStack' stamp: 'CR 10/Jul/2026, 11:58:20 pm (UTC)'!
setValueStack: aValueStack

	valueStack := aValueStack! !

!Machine methodsFor: 'pushBody' stamp: 'mm 7/13/2026 01:39:44'!
pushBody: body

	controlStack add: body removeLast.
	body reverse do: [:instruction|
		controlStack add: Discard new.
		controlStack add: instruction ].! !

!Machine class methodsFor: 'as yet unclassified' stamp: 'mm 12/Jul/2026, 8:34:31 pm (UTC)'!
withControlStack: aControlStack 
	^self new initializeWithControlStack: aControlStack copy! !

!Machine class methodsFor: 'as yet unclassified' stamp: 'mm 12/Jul/2026, 8:34:27 pm (UTC)'!
withControlStack: aControlStack environment: anEnvironment  
	^self new initializeWithControlStack: aControlStack copy environment: anEnvironment copy! !

!MachineInstruction methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:15:54'!
evaluateIn: aMachine
	self subclassResponsibility ! !

!Continuation methodsFor: 'evaluate' stamp: 'CR 5/Jul/2026, 1:21:38 am (UTC)'!
evaluateIn: aMachine

	self subclassResponsibility 

! !

!CallContinuation methodsFor: 'evaluating' stamp: 'mm 7/13/2026 01:42:36'!
evaluateIn: aMachine 

	aMachine continueCall: self! !

!CallContinuation methodsFor: 'initialization' stamp: 'mm 7/13/2026 01:42:42'!
initializeWithArgumentCount: anArgumentCount andEnvironment: anEnvironmentToPreserve 
 
	argCount := anArgumentCount .
	oldEnvironment := anEnvironmentToPreserve .! !

!CallContinuation methodsFor: 'accessing' stamp: 'mm 7/13/2026 01:42:24'!
argCount

	^argCount ! !

!CallContinuation methodsFor: 'accessing' stamp: 'mm 7/13/2026 01:42:30'!
oldEnvironment

	^oldEnvironment ! !

!CallContinuation class methodsFor: 'as yet unclassified' stamp: 'mm 12/Jul/2026, 9:17:15 pm (UTC)'!
withArgumentCount: anArgumentCount andEnvironment: anEnvironmentToPreserve  
	^self new initializeWithArgumentCount: anArgumentCount andEnvironment: anEnvironmentToPreserve ! !

!IfContinuation methodsFor: 'evaluating' stamp: 'CR 7/Jul/2026, 8:47:17 pm (UTC)'!
evaluateIn: aMachine

	aMachine continueIf: self .! !

!IfContinuation methodsFor: 'initialization' stamp: 'mm 8/Jul/2026, 12:31:15 pm (UTC)'!
initalizeWithIfExpression: anIfExpression  
	
	ifExpression := anIfExpression ! !

!IfContinuation methodsFor: 'accessing' stamp: 'mm 7/13/2026 01:42:49'!
falseBranch

	^ifExpression falseBranch! !

!IfContinuation methodsFor: 'accessing' stamp: 'mm 7/13/2026 01:42:56'!
trueBranch

	^ ifExpression trueBranch! !

!IfContinuation class methodsFor: 'as yet unclassified' stamp: 'mm 8/Jul/2026, 12:29:39 pm (UTC)'!
withIfExpression: anIfExpression  

	^self new initalizeWithIfExpression: anIfExpression .! !

!LetContinuation methodsFor: 'assertions' stamp: 'mm 7/13/2026 01:43:12'!
finishedBinding

	^bindIndex = bindsList size! !

!LetContinuation methodsFor: 'initialization' stamp: 'mm 8/Jul/2026, 12:57:26 pm (UTC)'!
initializeWithBindings: aBindsList body: aBody toBind: aBindIndex andEnvironment: anEnvironmentToPreserve  

	bindsList := aBindsList.
	body := aBody.
	bindIndex := aBindIndex.
	oldEnvironment := anEnvironmentToPreserve .! !

!LetContinuation methodsFor: 'accessing' stamp: 'mm 8/Jul/2026, 1:55:47 pm (UTC)'!
binds

	^bindsList ! !

!LetContinuation methodsFor: 'accessing' stamp: 'mm 8/Jul/2026, 12:59:19 pm (UTC)'!
body
	
	^body! !

!LetContinuation methodsFor: 'accessing' stamp: 'mm 7/13/2026 01:43:15'!
getVariableToBind

	^(bindsList at: bindIndex) getVariable ! !

!LetContinuation methodsFor: 'accessing' stamp: 'mm 7/13/2026 01:43:22'!
nextIndex

	^bindIndex + 1! !

!LetContinuation methodsFor: 'accessing' stamp: 'mm 8/Jul/2026, 1:41:01 pm (UTC)'!
oldEnvironment
	
	^oldEnvironment! !

!LetContinuation methodsFor: 'evaluating' stamp: 'mm 7/13/2026 01:43:07'!
evaluateIn: aMachine

	aMachine continueLet: self.! !

!LetContinuation class methodsFor: 'instance creation' stamp: 'mm 8/Jul/2026, 12:56:34 pm (UTC)'!
withBindings: aBindsList body: aBody toBind: aBindIndex andEnvironment: anEnvironment 

	^self new initializeWithBindings: aBindsList body: aBody toBind: aBindIndex andEnvironment: anEnvironment ! !

!ObserveContinuation methodsFor: 'evaluate' stamp: 'mm 7/13/2026 01:43:31'!
evaluateIn: aMachine 

	aMachine continueObserve! !

!SampleContinuation methodsFor: 'evaluate' stamp: 'mm 7/13/2026 01:43:37'!
evaluateIn: aMachine 

	aMachine continueSample! !

!Discard methodsFor: 'evaluating' stamp: 'mm 7/13/2026 01:43:41'!
evaluateIn: aMachine 

	aMachine visitDiscard.! !

!Expression methodsFor: 'as yet unclassified' stamp: 'mm 8/Jul/2026, 12:19:35 pm (UTC)'!
evaluateIn: aMachine

 	self subclassResponsibility ! !

!CallExpr methodsFor: 'initialization' stamp: 'CR 4/Jul/2026, 11:21:53 pm (UTC)'!
initializeWithFunctionName: aFunctionName andArguments: anArgumentList 

	functionName := aFunctionName.
	argumentList := anArgumentList.! !

!CallExpr methodsFor: 'accessing' stamp: 'mm 7/13/2026 01:43:51'!
arguments

	^argumentList copy! !

!CallExpr methodsFor: 'accessing' stamp: 'mm 7/13/2026 01:43:57'!
name

	^functionName ! !

!CallExpr methodsFor: 'evaluating' stamp: 'mm 6/Jul/2026, 10:53:15 pm (UTC)'!
evaluateIn: aMachine 
	
	aMachine visitCall: self .
	! !

!CallExpr class methodsFor: 'as yet unclassified' stamp: 'CR 4/Jul/2026, 11:21:31 pm (UTC)'!
withFunctionName: aFunctionName andArguments: anArgumentList 
	^self new initializeWithFunctionName: aFunctionName andArguments: anArgumentList .! !

!FunctionExpr methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 00:15:01'!
arguments
	
	^arguments copy! !

!FunctionExpr methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 00:15:06'!
body
	
	^body copy! !

!FunctionExpr methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:44:12'!
evaluateIn: aMachine 

	aMachine visitFunction: self! !

!FunctionExpr methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:44:05'!
initializeWithArguments: anArgumentsList andBody: aBody 

	arguments := anArgumentsList .
	body := aBody .! !

!FunctionExpr class methodsFor: 'instance creation' stamp: 'mm 8/Jul/2026, 10:20:56 pm (UTC)'!
withArguments: anArgumentsList andBody: aBody 
	^self new initializeWithArguments: anArgumentsList andBody: aBody .! !

!IfExpr methodsFor: 'initialization' stamp: 'CR 4/Jul/2026, 9:57:09 pm (UTC)'!
initializeWithCondition: aConditionToEvaluate ifTrue: aTrueBranch ifFalse: aFalseBranch 

	conditionToEvaluate := aConditionToEvaluate.
	trueBranch := aTrueBranch.
	falseBranch := aFalseBranch.! !

!IfExpr methodsFor: 'evaluating' stamp: 'CR 7/Jul/2026, 8:23:57 pm (UTC)'!
evaluateIn: aMachine 

	aMachine visitIf: self .! !

!IfExpr methodsFor: 'accessing' stamp: 'mm 7/13/2026 01:44:22'!
condition

	^conditionToEvaluate ! !

!IfExpr methodsFor: 'accessing' stamp: 'CR 7/Jul/2026, 8:25:28 pm (UTC)'!
falseBranch

	^falseBranch! !

!IfExpr methodsFor: 'accessing' stamp: 'mm 7/13/2026 01:44:29'!
trueBranch

	^trueBranch! !

!IfExpr class methodsFor: 'as yet unclassified' stamp: 'CR 4/Jul/2026, 9:56:03 pm (UTC)'!
condition: aConditionToEvaluate ifTrue: trueBranch ifFalse: falseBranch 
	
	^self new initializeWithCondition: aConditionToEvaluate ifTrue: trueBranch ifFalse: falseBranch ! !

!LetExpr methodsFor: 'initialization' stamp: 'CR 5/Jul/2026, 12:47:01 am (UTC)'!
initializeWithBinds: aBindsList andBody: anExpressionsList 

	bindsList := aBindsList.
	expressionsList := anExpressionsList.! !

!LetExpr methodsFor: 'evaluating' stamp: 'mm 8/Jul/2026, 12:53:28 pm (UTC)'!
evaluateIn: aMachine 
	
	aMachine visitLet: self ! !

!LetExpr methodsFor: 'accessing' stamp: 'mm 7/13/2026 01:44:36'!
binds

	^bindsList ! !

!LetExpr methodsFor: 'accessing' stamp: 'mm 7/13/2026 01:44:40'!
body

	^expressionsList copy! !

!LetExpr class methodsFor: 'instance creation' stamp: 'CR 5/Jul/2026, 12:46:36 am (UTC)'!
withBinds: aBindsList andBody: anExpressionsList 
	
	^self new initializeWithBinds: aBindsList andBody: anExpressionsList ! !

!LiteralExpr methodsFor: 'evaluating' stamp: 'CR 7/Jul/2026, 8:28:43 pm (UTC)'!
evaluateIn: aMachine 

	aMachine visitLiteral: self .! !

!LiteralExpr methodsFor: 'initialization' stamp: 'mm 7/13/2026 01:44:52'!
initializeWithValue: aConstantValue  

	value := aConstantValue! !

!LiteralExpr methodsFor: 'accessing' stamp: 'CR 7/Jul/2026, 8:29:53 pm (UTC)'!
getValue
	
	^value! !

!LiteralExpr class methodsFor: 'instance creation' stamp: 'CR 4/Jul/2026, 9:06:21 pm (UTC)'!
value: aConstantValue  
	^self new initializeWithValue: aConstantValue  ! !

!ObserveExpr methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:45:00'!
evaluateIn: aMachine 

	aMachine visitObserve: self! !

!ObserveExpr methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:45:04'!
from: aProbabilityDistribution value: anObservation   

	distribution := aProbabilityDistribution .
	observedValue := anObservation ! !

!ObserveExpr methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:45:07'!
from: aProbabilityDistribution value: anObservation fromMachine: aMachine  

	distribution := aProbabilityDistribution .
	observedValue := anObservation ! !

!ObserveExpr methodsFor: 'accessing' stamp: 'mm 9/Jul/2026, 4:19:00 pm (UTC)'!
distribution
	
	^distribution! !

!ObserveExpr methodsFor: 'accessing' stamp: 'mm 9/Jul/2026, 4:18:49 pm (UTC)'!
observedValue
	
	^observedValue! !

!ObserveExpr class methodsFor: 'instance creation' stamp: 'mm 11/Jul/2026, 3:52:17 pm (UTC)'!
from: aProbabilityDistribution value: anObservation   
	^self new from: aProbabilityDistribution value: anObservation ! !

!ObserveExpr class methodsFor: 'instance creation' stamp: 'CR 10/Jul/2026, 9:19:03 pm (UTC)'!
from: aProbabilityDistribution value: anObservation fromMachine: aMachine  
	^self new from: aProbabilityDistribution value: anObservation fromMachine: self ! !

!SampleExpr methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:45:18'!
distribution

	^distribution! !

!SampleExpr methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:45:23'!
evaluateIn: aMachine 

	aMachine visitSample: self! !

!SampleExpr methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:45:27'!
from: aBernoulliProbabilityDistribution 

	distribution := aBernoulliProbabilityDistribution ! !

!SampleExpr class methodsFor: 'instance creation' stamp: 'mm 9/Jul/2026, 2:57:36 pm (UTC)'!
from: aProbabilityDistribution 
	^self new from: aProbabilityDistribution ! !

!VariableExpr methodsFor: 'initialization' stamp: 'CR 4/Jul/2026, 9:30:56 pm (UTC)'!
initializeWithName: aVariableName 

	name := aVariableName.! !

!VariableExpr methodsFor: 'accessing' stamp: 'mm 7/13/2026 01:45:38'!
name

	^name! !

!VariableExpr methodsFor: 'evaluating' stamp: 'mm 8/Jul/2026, 12:40:02 pm (UTC)'!
evaluateIn: aMachine 

	aMachine visitVariable: self. 
	! !

!VariableExpr class methodsFor: 'as yet unclassified' stamp: 'CR 4/Jul/2026, 9:30:19 pm (UTC)'!
name: aVariableName 
	^self new initializeWithName: aVariableName .! !

!RestoreEnvironment methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:45:45'!
evaluateIn: aMachine 

	aMachine restoreEnvironment: environmentCorruptor oldEnvironment.! !

!RestoreEnvironment methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:45:49'!
from: aLetContinuation 

	environmentCorruptor := aLetContinuation ! !

!RestoreEnvironment class methodsFor: 'instance creation' stamp: 'mm 8/Jul/2026, 1:43:11 pm (UTC)'!
from: aLetContinuation 
	^self new from: aLetContinuation ! !

!ProbabilityDistribution methodsFor: 'accessing' stamp: 'mm 7/13/2026 01:46:44'!
evaluateIn: aMachine

	aMachine visitDistribution: self! !

!ProbabilityDistribution methodsFor: 'accessing' stamp: 'mm 7/13/2026 01:46:59'!
uniformRandomGenerator

	^uniformRandomGenerator ifNil: [ uniformRandomGenerator := Random new ]! !

!ProbabilityDistribution methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:46:54'!
logProbability: x

	self subclassResponsibility.
	 "Calcula el logaritmo de la densidad de probabilidad para un valor x."
    ! !

!BernoulliProbabilityDistribution methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:47:55'!
logProbability: x

	"Calcula el logaritmo de la probabilidad para x (1 o 0)"
    
	x = 1 ifTrue: [ ^ p ln ].
	x = 0 ifTrue: [ ^ (1.0 - p) ln ].
    
	self error: 'El valor observado para Bernoulli debe ser 0 o 1'.! !

!BernoulliProbabilityDistribution methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:47:51'!
nextRandomNumber

	"Genera un número uniforme entre 0.0 y 1.0. 
	    Si cae dentro del rango de p, devuelve 1 (éxito). Si no, 0 (fracaso)."

	^ self uniformRandomGenerator next < p 
	    ifTrue: [ 1 ] 
	    ifFalse: [ 0 ]! !

!BernoulliProbabilityDistribution methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:48:00'!
p: aProbability

    p := aProbability.! !

!BernoulliProbabilityDistribution class methodsFor: 'as yet unclassified' stamp: 'mm 9/Jul/2026, 2:41:52 pm (UTC)'!
p: aProbability
    (aProbability between: 0 and: 1) ifFalse: [ self error: 'La probabilidad debe estar entre 0 y 1' ].
    ^ self new p: aProbability! !

!NormalProbabilityDistribution methodsFor: 'initialization' stamp: 'mm 7/13/2026 01:48:40'!
mean: mu standardDeviation: sigma

	mean := mu.
	standardDeviation := sigma! !

!NormalProbabilityDistribution methodsFor: 'random number generation' stamp: 'mm 7/13/2026 01:48:35'!
logProbability: x

	| variance logScale exponentTerm |

	variance := standardDeviation squared.

	"Primer término de la ecuación"
	logScale := (2.0 * Float pi * variance) ln * -0.5.

	"Segundo término de la ecuación"
	exponentTerm := (x - mean) squared / (2.0 * variance).

	^ logScale - exponentTerm.! !

!NormalProbabilityDistribution methodsFor: 'random number generation' stamp: 'mm 7/13/2026 01:48:46'!
nextRandomNumber

	"Two random values are generated. So, answer one and cache the other."

	^self nextStandardNormalRandomNumber * standardDeviation  + mean! !

!NormalProbabilityDistribution methodsFor: 'random number generation' stamp: 'mm 7/13/2026 01:48:59'!
nextStandardNormalRandomNumber

	"Two random values are generated. So, answer one and cache the other."

	| x1 x2 t1 t2 y1 y2 |
	cachedValue notNil
		ifTrue: [
			y1 := cachedValue.
			cachedValue := nil.
			^ y1 ].
	x1 := self uniformRandomGenerator next.
	x2 := self uniformRandomGenerator next.
	t1 := (-2 * x1 ln) sqrt.
	t2 := 2 * Float pi * x2.
	y1 := t1 * t2 cos.
	y2 := t1 * t2 sin.
	cachedValue := y2.
	^ y1! !

!NormalProbabilityDistribution class methodsFor: 'instance creation' stamp: 'jmv 6/Apr/2015, 3:08:00 pm (UTC)'!
mean: mu standardDeviation: sigma
	^self basicNew mean: mu standardDeviation: sigma! !

!NormalProbabilityDistribution class methodsFor: 'instance creation' stamp: 'jmv 6/Apr/2015, 3:09:00 pm (UTC)'!
new
	^self mean: 0.0 standardDeviation: 1.0! !

!DoneNotification methodsFor: 'initialization' stamp: 'mm 7/13/2026 01:45:59'!
defaultAction

	^self! !

!DoneNotification methodsFor: 'initialization' stamp: 'CR 10/Jul/2026, 11:11:58 pm (UTC)'!
initializeFinalResult: aResultValue fromMachine: aMachine 
	
	result := aResultValue.
	machine := aMachine.! !

!DoneNotification methodsFor: 'accessing' stamp: 'mm 7/13/2026 01:46:04'!
machine

	^machine! !

!DoneNotification methodsFor: 'accessing' stamp: 'CR 10/Jul/2026, 11:24:13 pm (UTC)'!
result

	^result! !

!DoneNotification class methodsFor: 'instance creation' stamp: 'CR 10/Jul/2026, 11:11:22 pm (UTC)'!
finalResult: result fromMachine: aMachine 

	^self new initializeFinalResult: result fromMachine: aMachine ! !

!ObserveNotification methodsFor: 'initialization' stamp: 'mm 7/13/2026 01:46:27'!
from: aProbabilityDistribution value: anObservation fromMachine: aMachine  

	distribution := aProbabilityDistribution .
	observedValue:=anObservation .
	machine:= aMachine ! !

!ObserveNotification methodsFor: 'accessing' stamp: 'mm 9/Jul/2026, 4:25:55 pm (UTC)'!
distribution
	
	^distribution! !

!ObserveNotification methodsFor: 'accessing' stamp: 'CR 10/Jul/2026, 9:19:36 pm (UTC)'!
machine
	
	^machine! !

!ObserveNotification methodsFor: 'accessing' stamp: 'mm 9/Jul/2026, 4:26:31 pm (UTC)'!
observedValue
	
	^observedValue! !

!ObserveNotification class methodsFor: 'instance creation' stamp: 'mm 11/Jul/2026, 3:58:11 pm (UTC)'!
from: aProbabilityDistribution value: anObservation fromMachine: aMachine  
	^self new from: aProbabilityDistribution value: anObservation fromMachine: aMachine! !

!SampleNotification methodsFor: 'distribution' stamp: 'mm 9/Jul/2026, 3:31:10 pm (UTC)'!
distribution
	
	^distribution! !

!SampleNotification methodsFor: 'initialization' stamp: 'mm 7/13/2026 01:46:38'!
from: aProbabilityDistribution 

	distribution := aProbabilityDistribution ! !

!SampleNotification class methodsFor: 'instance creation' stamp: 'mm 9/Jul/2026, 3:30:26 pm (UTC)'!
from: aProbabilityDistribution 
	^self new from: aProbabilityDistribution ! !

!HOPPLParserTest methodsFor: 'as yet unclassified' stamp: 'mm 7/12/2026 19:41:27'!
test01ParsesCorrectlyToLiteralExpression
	| parser parsedProgram |
	parser := HOPPLParser new.
	parsedProgram := parser parseProgram: {3} .
	
	self assert: (parsedProgram second first isKindOf: LiteralExpr ).
	self assert: parsedProgram second first getValue equals: 3.
	! !

!HOPPLParserTest methodsFor: 'as yet unclassified' stamp: 'mm 7/12/2026 19:46:22'!
test02ParsesCorrectlyToVariableExpression
	| parser parsedProgram  |
	parser := HOPPLParser new.
	parsedProgram := parser parseProgram: {#x } .
	
	self assert: (parsedProgram second first isKindOf: VariableExpr  ).
	self assert: parsedProgram second first name equals: #x.
	! !

!HOPPLParserTest methodsFor: 'as yet unclassified' stamp: 'mm 7/12/2026 19:49:31'!
test03ParsesCorrectlyToIfExpression
	| parser parsedProgram ifExpr |
	parser := HOPPLParser new.
	parsedProgram := parser parseProgram: { {#if. true. 1. 0} }.

	ifExpr := parsedProgram second first.
	self assert: (ifExpr isKindOf: IfExpr).
	self assert: (ifExpr condition isKindOf: LiteralExpr).
	self assert: ifExpr condition getValue equals: true.
	self assert: (ifExpr trueBranch isKindOf: LiteralExpr).
	self assert: ifExpr trueBranch getValue equals: 1.
	self assert: (ifExpr falseBranch isKindOf: LiteralExpr).
	self assert: ifExpr falseBranch getValue equals: 0.! !

!HOPPLParserTest methodsFor: 'as yet unclassified' stamp: 'mm 7/12/2026 19:49:50'!
test04ParsesCorrectlyToIfExpressionWithCallCondition
	"condicion compuesta: [if, [<, 1, 2], 1, 0] -> ejercita que parseExpr
	 recurse bien sobre la condicion, no solo sobre ramas atomicas"
	| parser parsedProgram ifExpr condition |
	parser := HOPPLParser new.
	parsedProgram := parser parseProgram: { {#if. {#<. 1. 2}. 1. 0} }.

	ifExpr := parsedProgram second first.
	self assert: (ifExpr isKindOf: IfExpr).

	condition := ifExpr condition.
	self assert: (condition isKindOf: CallExpr).
	self assert: (condition name isKindOf: VariableExpr).
	self assert: condition name name equals: #<.
	self assert: condition arguments size equals: 2.
	self assert: (condition arguments first isKindOf: LiteralExpr).
	self assert: condition arguments first getValue equals: 1.! !

!HOPPLParserTest methodsFor: 'as yet unclassified' stamp: 'mm 7/12/2026 19:50:10'!
test05ParsesCorrectlyToLetExpressionSingleBind
	"[let, [x, 2], [+, x, 3]]"
	| parser parsedProgram letExpr bind |
	parser := HOPPLParser new.
	parsedProgram := parser parseProgram:
		{ {#let. {#x. 2}. {#+. #x. 3}} }.

	letExpr := parsedProgram second first.
	self assert: (letExpr isKindOf: LetExpr).
	self assert: letExpr binds size equals: 1.

	bind := letExpr binds first.
	self assert: (bind isKindOf: Bind).
	self assert: bind getVariable name equals: #x.
	self assert: (bind getValue isKindOf: LiteralExpr).
	self assert: bind getValue getValue equals: 2.

	self assert: letExpr body size equals: 1.
	self assert: (letExpr body first isKindOf: CallExpr).! !

!HOPPLParserTest methodsFor: 'as yet unclassified' stamp: 'mm 7/12/2026 19:50:22'!
test06ParsesCorrectlyToLetExpressionMultipleBindsAndBody
	"[let, [x, 2, y, 3], x, [+, x, y]]  -> dos binds, dos formas en el body"
	| parser parsedProgram letExpr |
	parser := HOPPLParser new.
	parsedProgram := parser parseProgram:
		{ {#let. {#x. 2. #y. 3}. #x. {#+. #x. #y}} }.

	letExpr := parsedProgram second first.
	self assert: (letExpr isKindOf: LetExpr).
	self assert: letExpr binds size equals: 2.

	self assert: (letExpr binds first getVariable name) equals: #x.
	self assert: (letExpr binds second getVariable name) equals: #y.
	self assert: ((letExpr binds second getValue) getValue) equals: 3.

	self assert: letExpr body size equals: 2.
	self assert: (letExpr body first isKindOf: VariableExpr).
	self assert: letExpr body first name equals: #x.
	self assert: (letExpr body second isKindOf: CallExpr).! !

!HOPPLParserTest methodsFor: 'as yet unclassified' stamp: 'mm 7/12/2026 19:50:34'!
test07ParsesCorrectlyToNestedIfInsideLet
	"caso mas parecido a 'bits': un bind cuyo valor es un if
	 [let, [b1, [if, true, 1, 0]], b1]"
	| parser parsedProgram letExpr bindValue |
	parser := HOPPLParser new.
	parsedProgram := parser parseProgram:
		{ {#let. {#b1. {#if. true. 1. 0}}. #b1} }.

	letExpr := parsedProgram second first.
	bindValue := letExpr binds first getValue.

	self assert: (bindValue isKindOf: IfExpr).
	self assert: bindValue condition getValue equals: true.
	self assert: bindValue trueBranch getValue equals: 1.
	self assert: bindValue falseBranch getValue equals: 0.! !

!HOPPLParserTest methodsFor: 'as yet unclassified' stamp: 'mm 7/12/2026 19:51:28'!
test08ParsesCorrectlyToSampleExpression
	"[sample, [normal, 0, 1]]"
	| parser parsedProgram sampleExpr dist |
	parser := HOPPLParser new.
	parsedProgram := parser parseProgram:
		{ {#sample. {#normal. 0. 1}} }.

	sampleExpr := parsedProgram second first.
	self assert: (sampleExpr isKindOf: SampleExpr).

	dist := sampleExpr distribution.
	self assert: (dist isKindOf: CallExpr).
	self assert: dist name name equals: #normal.
	self assert: dist arguments size equals: 2.
	self assert: dist arguments first getValue equals: 0.
	self assert: dist arguments second getValue equals: 1.! !

!HOPPLParserTest methodsFor: 'as yet unclassified' stamp: 'mm 7/12/2026 19:51:38'!
test09ParsesCorrectlyToObserveExpression
	"[observe, [normal, 7, 1], total]"
	| parser parsedProgram observeExpr |
	parser := HOPPLParser new.
	parsedProgram := parser parseProgram:
		{ {#observe. {#normal. 7. 1}. #total} }.

	observeExpr := parsedProgram second first.
	self assert: (observeExpr isKindOf: ObserveExpr).

	self assert: (observeExpr distribution isKindOf: CallExpr).
	self assert: observeExpr distribution name name equals: #normal.

	self assert: (observeExpr observedValue isKindOf: VariableExpr).
	self assert: observeExpr observedValue name equals: #total.! !

!HOPPLParserTest methodsFor: 'as yet unclassified' stamp: 'mm 7/12/2026 20:43:10'!
test10ParsesCorrectlyToFunctionExpression
	"[fn, [x], [+, x, 1]] -> anonima, sin defn"
	| parser parsedProgram fnExpr |
	parser := HOPPLParser new.
	parsedProgram := parser parseProgram:
		{ {#fn. {#x}. {{#+. #x. 1}}} }.

	fnExpr := parsedProgram second first.
	self assert: (fnExpr isKindOf: FunctionExpr).

	self assert: fnExpr arguments size equals: 1.
	self assert: (fnExpr arguments first isKindOf: VariableExpr).
	self assert: fnExpr arguments first name equals: #x.

	self assert: fnExpr body size equals: 1.
	self assert: (fnExpr body first isKindOf: CallExpr).! !

!HOPPLParserTest methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 00:40:32'!
test11ParsesCorrectlyToFunctionExpressionMultipleParamsAndBody
	"[fn, [x, y], x, [+, x, y]] -> dos parametros, dos formas en el body"
	| parser parsedProgram fnExpr |
	parser := HOPPLParser new.
	parsedProgram := parser parseProgram:
		{ {#fn. {#x. #y}.{#-. #x. #y}. {#+. #x. #y}}}.

	fnExpr := parsedProgram second first.
	self assert: fnExpr arguments size equals: 2.
	self assert: fnExpr arguments first name equals: #x.
	self assert: fnExpr arguments second name equals: #y.

	self assert: fnExpr body size equals: 2.
	self assert: (fnExpr body first isKindOf: CallExpr).
	self assert: (fnExpr body second isKindOf: CallExpr).
	! !

!HOPPLParserTest methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 00:21:09'!
test12ParsesDefnIntoClosureInEnvironment
	"[defn, f, [y], [+, y, 1]]  seguido de la expresion principal (f 3)"
	| parser parsedProgram env closure |
	parser := HOPPLParser new.
	parsedProgram := parser parseProgram:
		{ {#defn. #f. {#y}. {{#+. #y. 1}}}.
		  {#f. 3} }.

	env := parsedProgram first.
	self assert: (env includesKey: #f).

	closure := env at: #f.
	self assert: (closure isKindOf: Closure).
	self assert: closure parameters size equals: 1.
	self assert: closure parameters first name equals: #y.
	self assert: closure body size equals: 1.
	self assert: (closure body first isKindOf: CallExpr).
	self assert: closure environment = env. "closure captura el mismo entorno global"

	"la expresion principal (fuera del defn) SI aparece en mainForms"
	self assert: parsedProgram second size equals: 1.
	self assert: (parsedProgram second first isKindOf: CallExpr).
	self assert: parsedProgram second first name name equals: #f.! !

!HOPPLParserTest methodsFor: 'as yet unclassified' stamp: 'mm 7/12/2026 19:53:48'!
test13DefnDoesNotLeakIntoMainForms
	"asegura que un #defn nunca termina como una expresion mas del programa,
	 aunque haya varios defn antes de la expresion principal"
	| parser parsedProgram |
	parser := HOPPLParser new.
	parsedProgram := parser parseProgram:
		{ {#defn. #f. {#y}. #y}.
		  {#defn. #g. {#z}. #z}.
		  42 }.

	self assert: (parsedProgram first includesKey: #f).
	self assert: (parsedProgram first includesKey: #g).
	self assert: parsedProgram second size equals: 1.
	self assert: (parsedProgram second first isKindOf: LiteralExpr).
	self assert: parsedProgram second first getValue equals: 42.! !

!HOPPLParserTest methodsFor: 'as yet unclassified' stamp: 'mm 7/12/2026 19:54:04'!
test14ParsesVariadicPlusAsFoldedBinaryCalls
	"[+, b1, b2, b3, b4] -> (+ (+ (+ b1 b2) b3) b4), todo binario"
	| parser parsedProgram callExpr outer middle inner |
	parser := HOPPLParser new.
	parsedProgram := parser parseProgram:
		{ {#+. #b1. #b2. #b3. #b4} }.

	callExpr := parsedProgram second first.
	self assert: (callExpr isKindOf: CallExpr).
	self assert: callExpr arguments size equals: 2. "el mas externo siempre binario"

	outer := callExpr.
	middle := outer arguments first.
	self assert: (middle isKindOf: CallExpr).
	self assert: middle arguments size equals: 2.
	self assert: (outer arguments second isKindOf: VariableExpr).
	self assert: outer arguments second name equals: #b4.

	inner := middle arguments first.
	self assert: (inner isKindOf: CallExpr).
	self assert: inner arguments size equals: 2.
	self assert: (inner arguments first isKindOf: VariableExpr).
	self assert: inner arguments first name equals: #b1.
	self assert: (inner arguments second isKindOf: VariableExpr).
	self assert: inner arguments second name equals: #b2.
	self assert: (middle arguments second isKindOf: VariableExpr).
	self assert: middle arguments second name equals: #b3.! !

!HOPPLParserTest methodsFor: 'as yet unclassified' stamp: 'mm 7/12/2026 19:54:21'!
test15ParsesBinaryCallWithoutFoldingWhenOnlyTwoArguments
	"[+, a, b] con solo 2 argumentos no deberia pasar por el fold,
	 tiene que dar un unico CallExpr binario, no un arbol de 1 nodo redundante"
	| parser parsedProgram callExpr |
	parser := HOPPLParser new.
	parsedProgram := parser parseProgram:
		{ {#+. #a. #b} }.

	callExpr := parsedProgram second first.
	self assert: (callExpr isKindOf: CallExpr).
	self assert: callExpr arguments size equals: 2.
	self assert: (callExpr arguments first isKindOf: VariableExpr).
	self assert: callExpr arguments first name equals: #a.
	self assert: (callExpr arguments second isKindOf: VariableExpr).
	self assert: callExpr arguments second name equals: #b.! !

!HOPPLParserTest methodsFor: 'as yet unclassified' stamp: 'mm 7/12/2026 19:54:33'!
test16ParsesOrdinaryCallToUserFunction
	"[f, 1, 2] -> llamada comun, sin nada especial (no es primitiva foldable)"
	| parser parsedProgram callExpr |
	parser := HOPPLParser new.
	parsedProgram := parser parseProgram:
		{ {#f. 1. 2} }.

	callExpr := parsedProgram second first.
	self assert: (callExpr isKindOf: CallExpr).
	self assert: (callExpr name isKindOf: VariableExpr).
	self assert: callExpr name name equals: #f.
	self assert: callExpr arguments size equals: 2.! !

!HOPPLParserTest methodsFor: 'as yet unclassified' stamp: 'mm 7/12/2026 19:55:30'!
test17DefaultPrimitivesEnvironmentHasArithmeticAndComparison
	"chequeo minimo de que el diccionario de primitivas responde
	 lo que promete, sin re-testear cada una a fondo"
	| env |
	env := HOPPLParser new primitiveEnvironment.

	self assert: ((env at: #+) value: 2 value: 3) equals: 5.
	self assert: ((env at: #-) value: 5 value: 2) equals: 3.
	self assert: ((env at: #*) value: 2 value: 4) equals: 8.
	self assert: ((env at: #<) value: 1 value: 2) equals: true.
	self assert: ((env at: #=) value: 3 value: 3) equals: true.
	self assert: ((env at: #not) value: true) equals: false.
	self assert: ((env at: #max) value: #(1 5 3)) equals: 5.! !

!HOPPLParserTest methodsFor: 'as yet unclassified' stamp: 'mm 7/12/2026 21:21:35'!
test18ParsesImmediatelyAppliedFnAsCallExpression
	"((fn [x] (+ x 1)) 3) -> [[fn, [x], [+, x, 1]], 3]
	 tiene que dar un CallExpr cuya 'funcion' es el FunctionExpr parseado, no un FunctionExpr suelto"
	| parser parsedProgram callExpr fnExpr |
	parser := HOPPLParser new.
	parsedProgram := parser parseProgram:
		{ { {#fn. {#x}. {#+. #x. 1}}. 3 } }.

	callExpr := parsedProgram second first.
	self assert: (callExpr isKindOf: CallExpr).

	fnExpr := callExpr name.
	self assert: (fnExpr isKindOf: FunctionExpr).
	self assert: fnExpr arguments size equals: 1.
	self assert: fnExpr arguments first name equals: #x.

	self assert: callExpr arguments size equals: 1.
	self assert: (callExpr arguments first isKindOf: LiteralExpr).
	self assert: callExpr arguments first getValue equals: 3.! !

!HOPPLParserTest methodsFor: 'as yet unclassified' stamp: 'mm 7/12/2026 21:21:54'!
test19ParsesImmediatelyAppliedFnMultipleArguments
	"((fn [x y] (+ x y)) 3 4) -> chequea aridad > 1 en la aplicacion inmediata"
	| parser parsedProgram callExpr |
	parser := HOPPLParser new.
	parsedProgram := parser parseProgram:
		{ { {#fn. {#x. #y}. {#+. #x. #y}}. 3. 4 } }.

	callExpr := parsedProgram second first.
	self assert: (callExpr isKindOf: CallExpr).
	self assert: (callExpr name isKindOf: FunctionExpr).
	self assert: callExpr name arguments size equals: 2.
	self assert: callExpr arguments size equals: 2.
	self assert: callExpr arguments first getValue equals: 3.
	self assert: callExpr arguments second getValue equals: 4.! !

!HOPPLTest methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:31:47'!
test01SeCreaBienLaMaquina

	| aControlStack m env expr ev |
	
	env := Dictionary new.
	expr := 1 + 2.
	
	ev := LiteralExpr value: 3.
	aControlStack := {ev}.
	
	m := Machine withControlStack: aControlStack environment: env.
	
	self assert: m class equals: Machine.
	self assert: env class equals: Dictionary.
	self assert: ev class equals: LiteralExpr.
	
	! !

!HOPPLTest methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:31:41'!
test02CanEvaluateLiteralExpr

	| m result parsedProgram parser controlStack environment |
	
	parser := HOPPLParser new.
	parsedProgram := parser parseProgram: {3}.
	
	controlStack := parsedProgram second.
	environment := parsedProgram first.
	
	m := Machine withControlStack: controlStack environment: environment.
	result := [m resume]on: DoneNotification do: [:doneNotification | self assert: doneNotification result equals: 3. ].
	
! !

!HOPPLTest methodsFor: 'as yet unclassified' stamp: 'mm 7/12/2026 20:01:12'!
test03CanEvaluateVariableExpr

	| m controlStack environment parsedProgram parser |

	parser := HOPPLParser new.
	parsedProgram := parser parseProgram: {#x}.
	
	controlStack := parsedProgram second.
	environment := parsedProgram first.
	environment at: #x put: 4.
	
	m := Machine withControlStack: controlStack environment: environment.
	
	
	 [m resume]on: DoneNotification do: [:doneNotification | self assert: doneNotification result equals: 4. ].! !

!HOPPLTest methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:31:35'!
test04_aCanEvaluateIfExprWithLiteralCondition

	| m controlStack environment parsedProgram parser |
	
	parser := HOPPLParser new.
	parsedProgram := parser parseProgram: {{#if. true. 1. 0}}.
	
	controlStack := parsedProgram second.
	environment := parsedProgram first.
	
	m := Machine withControlStack: controlStack environment: environment.

	 [m resume]on: DoneNotification do: [:doneNotification | self assert: doneNotification result equals: 1. ].
	! !

!HOPPLTest methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:31:29'!
test04_bCanEvaluateIfExprWithComplexCondition

	| m controlStack environment parsedProgram parser |
	
	parser := HOPPLParser new.
	parsedProgram := parser parseProgram: {{#if. {#>. 1. 2}. 1. 0}}.
	
	controlStack := parsedProgram second.
	environment := parsedProgram first.
	
	m := Machine withControlStack: controlStack environment: environment.
	
	
	 [m resume]on: DoneNotification do: [:doneNotification | self assert: doneNotification result equals: 0. ].
	
	! !

!HOPPLTest methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:31:24'!
test05_aCanEvaluateLetExprWithSingleBind

	| m controlStack environment parsedProgram parser |
	
	parser := HOPPLParser new.
	parsedProgram := parser parseProgram: {{#let. {#x. 2}. {#+. #x. 3}}}.
	
	controlStack := parsedProgram second.
	environment := parsedProgram first.
	environment at: #x put: 0.
	
	m := Machine withControlStack: controlStack environment: environment.
	
	
	[m resume]on: DoneNotification do: [:doneNotification | self assert: doneNotification result equals: 5. ].
	self assert: (m environment at: #x ) equals: 0.
	
	! !

!HOPPLTest methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:31:19'!
test05_bCanEvaluateLetExprWithMultipleBinds

	| m controlStack environment parsedProgram parser |
	
	parser := HOPPLParser new.
	parsedProgram := parser parseProgram: {{#let. {#x. 2. #y. 3}. #x. {#+. #x. #y}} }.
	
	controlStack := parsedProgram second.
	environment := parsedProgram first.
	environment at: #x put: 0.
	
	m := Machine withControlStack: controlStack environment: environment.
	
	
	[m resume]on: DoneNotification do: [:doneNotification | self assert: doneNotification result equals: 5. ].
	self assert: (m environment at: #x ) equals: 0.
	self deny: (m environment includesKey: #y ).  
	
	! !

!HOPPLTest methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:28:57'!
test06CanEvaluateUserDefinedCallExprFunction
	
	| m controlStack environment parsedProgram parser |
	
	parser := HOPPLParser new.
	parsedProgram := parser parseProgram: {{#defn. #f. {#x}. {{#+. #x. 2}}}.{#f. 1.} }.
	
	controlStack := parsedProgram second.
	environment := parsedProgram first.
	environment at: #x put: 0.
	
	m := Machine withControlStack: controlStack environment: environment.
	
	
	[m resume]on: DoneNotification do: [:doneNotification | self assert: doneNotification result equals: 3. ].
	
! !

!HOPPLTest methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:28:50'!
test07CanEvaluateFunctionExpr
	
	| m controlStack environment parsedProgram parser  |
	
	parser := HOPPLParser new.
	parsedProgram := parser parseProgram: {{ {#fn. {#x. #y}. {#+. #x. #y}}. 3. 4 }}.
	
	controlStack := parsedProgram second.
	environment := parsedProgram first.
	
	m := Machine withControlStack: controlStack environment: environment.
	
     [m resume]on: DoneNotification do: [:doneNotification | self assert: doneNotification result equals: 7. ].
! !

!HOPPLTest methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:28:45'!
test08_aCanEvaluateSampleExpr

	| controlStack environment parsedProgram parser likelihoodIC |

	parser := HOPPLParser new.
	parsedProgram := parser parseProgram: {{#sample. {#bernoulli. 1}}}.
	
	controlStack := parsedProgram second.
	environment := parsedProgram first.
	
	likelihoodIC := LikelihoodIC for: parsedProgram .
	
	
	 [likelihoodIC run]on: DoneNotification do: [:doneNotification |
		
		 self assert: doneNotification result equals: 1. 
		self assert: doneNotification machine logWeight equals: 0].! !

!HOPPLTest methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:28:33'!
test08_bCanEvaluateSampleExpr

	| controlStack environment parsedProgram parser likelihoodIC |

	parser := HOPPLParser new.
	parsedProgram := parser parseProgram: {#sample.{#if. {false}. {#bernoulli. 0}. {#bernoulli. 1}}}.
	
	controlStack := parsedProgram second.
	environment := parsedProgram first.
	
	likelihoodIC := LikelihoodIC for: parsedProgram .
	
	
	 [likelihoodIC run]on: DoneNotification do: [:doneNotification |
		
		 self assert: doneNotification result equals: 1. 
		self assert: doneNotification machine logWeight equals: 0].
	! !

!HOPPLTest methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:28:21'!
test09CanEvaluateObserveExpr

	| controlStack environment parsedProgram parser likelihoodIC |
	
	parser := HOPPLParser new.
	parsedProgram := parser parseProgram: {#observe.{#bernoulli. 1.}. 1}.
	
	controlStack := parsedProgram second.
	environment := parsedProgram first.
	
	likelihoodIC := LikelihoodIC for: parsedProgram .
	
	
	 [likelihoodIC run]on: DoneNotification do: [:doneNotification |
		
		self assert: doneNotification result equals: 1. 
		self assert: doneNotification machine logWeight equals: 0].
	! !

!HOPPLTest methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:28:08'!
test10CanRunLikelihoodWeighting10Times

	|  parsedProgram parser likelihoodIC  result logWeights values | 

	parser := HOPPLParser new.
	parsedProgram := parser parseProgram: {#observe.{#bernoulli. 1.}. 1}.


	likelihoodIC := LikelihoodIC for: parsedProgram  .

	result := likelihoodIC run: 10.
	    
	values := OrderedCollection new .
	logWeights := OrderedCollection new. 
	10 timesRepeat: [values add: 1. logWeights add: 0.1.].


	self assert: {values.logWeights} asOrderedCollection equals: result! !

!HOPPLTest methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:25:33'!
test11CanRunSMC

	| smcIC  result parsedProgram parser | 

	parser := HOPPLParser new.
	parsedProgram := parser parseProgram: {{#observe.{#bernoulli. 1.}. 0}.{#sample. {#bernoulli. 1.}}.{#observe.{#bernoulli. 1}. 1}}.

	smcIC := SequentialMCIC for: parsedProgram.

	result := smcIC run: 1.

	self assert: (result allSatisfy: [:notification | notification isKindOf: DoneNotification]).
	self assert: (result allSatisfy: [:notification | notification result = 1]).! !

!HOPPLTest methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:26:35'!
test12SMCCanRunMultipleParticles

	| smcIC  result parsedProgram parser | 

	parser := HOPPLParser new.
	parsedProgram := parser parseProgram: {{#observe.{#bernoulli. 1.}. 0}.{#sample. {#bernoulli. 1.}}.{#observe.{#bernoulli. 1.}. 1}}.

	smcIC := SequentialMCIC for: parsedProgram.

	result := smcIC run: 3.

	self assert: (result allSatisfy: [:notification | notification isKindOf: DoneNotification]).
	self assert: (result allSatisfy: [:notification | notification result = 1]).! !

!HOPPLTest methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:28:00'!
test13SMCLogWeightsAreCoherent

	| smcIC parsedProgram expectedLogWeight result parser|

	parser := HOPPLParser new.
	parsedProgram := parser parseProgram: {{#observe.{#bernoulli. 0.5.}. 1}.{#observe.{#bernoulli. 0.5.}. 0}}.

	    smcIC := SequentialMCIC for: parsedProgram.
	    result := smcIC run: 5. 

	    expectedLogWeight := 0.25 ln. 
	    
	    self assert: (result allSatisfy: [ :notification | 
	        "Usamos #isWithin:floatsFrom: en lugar de = porque estamos comparando Floats"
	        notification machine logWeight isWithin: 10 floatsFrom: expectedLogWeight
	    ]).! !

!HOPPLTest methodsFor: 'as yet unclassified' stamp: 'mm 7/13/2026 01:27:33'!
test14CanRunSSMH
	| ssmhIC  result parsedProgram parser |

	  parser := HOPPLParser new.
	  parsedProgram := parser parseProgram: {{#sample.{#bernoulli. 0.5.}}.{#observe.{#bernoulli. 0.5.}. 1}}.
	  
	  ssmhIC := SSMetropolisHastingsIC for: parsedProgram .
	  result := ssmhIC runSteps:2.
	  
	  self assert: result size equals: 2.
	  self assert: result equals: {1. 1}asOrderedCollection! !

!OrderedCollection methodsFor: '*ILPP' stamp: 'mm 7/12/2026 19:03:55'!
softmax
	
"Para implementacion LPP"
	"Convierte una coleccion de log-weights en una distribucion de probabilidades usando Softmax"
    	| maxLog expValues sumExp |
     	self isEmpty ifTrue: [ ^ self copy ].
    
	"1. Encontramos el valor maximo para dar estabilidad numerica"
	maxLog := self max.
    
	"2. Restamos el maximo y aplicamos la exponencial a cada elemento"
	expValues := self collect: [ :each | (each - maxLog) exp ].
    
	 "3. Sumamos todos los valores exponenciales"
	sumExp := expValues sum.
    
	"4. Dividimos cada elemento por la suma para normalizar entre 0 y 1"
	^ expValues collect: [ :each | each / sumExp ]! !
