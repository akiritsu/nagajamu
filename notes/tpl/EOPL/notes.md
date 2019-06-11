## Chapter 1

* eq?, eqv?, equal? and = in scheme
  - = : numerical equal
  - eq? : whether two parameters represent the SAME OBJECT.<br>the result for two primitive values like 2 and "a" depends on the implementation.
  - eqv? : whether same object.<br>#t if two paramters are identical primitive values.
  - equal? : can be used to data structures (lists, vectors) whether they have same elements.
  - **Conclusion**:<br>= for numbers; eqv? for non-numeric values; equal? for vectors, lists, etc.; DON'T use eq? unless you know exactly what you're doing.

### Chapter 2

#### 2.1

1. Data abstraction -> interface, implementation
2. Representation-independent
3. Example: nonnegative integers.
   <br>Interface:
   <br>&nbsp; Constant: zero
   <br>&nbsp; Procedures: iszero?, succ, pred
4. Opague <-> Transparent

#### 2.2

1. Kinds of data types:

- aggregate: contains values of other types, e.g. array, record
- union: values are of one or the other of multiple given types.
- discriminated union: contain a value of one of the union's types and a tag indicating which type the value are belongs to.

2. ENVIRONMENT:

- associates values with variables.

3. Variables may be represented by: symbols, strings, references into a hash table or even numbers.
4. Environment interface:

```scheme
   (empty-env)
   (apply-env env var)
   (extend-env var val env)
```

#### 2.3

Designing an interface for a recursive data type

1. Include one constructor for each kind of data in the data type.
2. Include one predicate for each kind of data in the data type.
3. Include one extractor for each piece of data passed to a constructorof the data type.

#### 2.4

1.

```scheme
   (define-datatype
        <type-name>
        <type-predicator-name>
        (<variant-name>                           ; 1+ variants
            (<field-name> <predicator>)           ; 0+ fields
            ...)
        ...)
```

2.

```scheme
   (case
       <typename>
       <expression>
       (<variant-name>
           (<field-name> ...)
           <consequent>)
           ...)
       (else <default>)
```

#### 2.5

1. Abstract Syntax Tree
2. Parse and un-parse
