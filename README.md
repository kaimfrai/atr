# Archetypal Recomposition

This project provides the ATR library. ATR is an experimental alternative to inheritance with virtual functions. ATR optimizes memory layout and merges identical functions to reduce overall cache use.

## Requirements
Supported OS:
* Current Linux Distributions (tested Ubuntu 22.04)

Required software:

* CMake version 3.20 oder higher
* Clang 16 (currently still in development, latest commit tested (2023-01-08): https://github.com/llvm/llvm-project/commits/f71ffd3b735b
* perf (package linux-tools-generic under Ubuntu 22.04)
* valgrind
* Boost.TypeErasure (tested version 1.74.0)

Required third party projects:

```
> cd ..
> git clone https://github.com/ldionne/dyno.git
> git clone https://github.com/google/cpp-from-the-sky-down.git
```

## ATR

The ATR module provides functionality to specify the data-members of a class with type and identifier. The given information is used to generate a new type with a memory optimized layout. Bit fields are supported with the type BitField<size>.
Functions can be implemented in a type-erased manner, while necessary information is stored as template arguments. This enables multiple functions with identical dependencies to only emit a single function in the final assembly.

The classes VirtualArgument and VirtualElement enable using different types with a common interface as arguments to functions or in a container. See files in Evaluation/Archetype for usage examples.

## Evaluation

This directory provides multiple implementations of a volume computation of different shape-types. Each implementation is measured in terms of compilation duration, memory usage, total runtime, cache behavior, and assembly size.

* Any: An implementation using std::any, CRTP, and function pointers.
* Archetype: An implementation using ATR.
* Dyno: An implementation using the dyno library and CRTP.
* Polymorphic: An implementation using the polymorphic library and CRTP.
* Replication: An hand-optimized implementation which resembles closely the result of ATR.
* TypeErasure: An implementation using the TypeErasure library from boost and CRTP.
* Variant: An implementation using std::variant, std::visit, and CRTP.
* Virtual: An implementation using interfaces, inheritance, virtual functions, and std::unique_ptr.

Note that the assembly of archetype is nearly identical to the assembly of replication.

To run all evaluation scripts do the following:
```
> cd Evaluation
> sudo bash evaluation.sh
```

To make use of perf the script requires elevated rights. If that is not desired, uncomment line 31 in evaluation.sh with # and run the following command instead:
```
> bash evaluation.sh
```

## CMake

Contains CMake specific configuration files. In particular custom scripts that enable the usage of C++20 modules with Clang before CMake officially supported modules.

Once set up, the standard library can be used with
```
> import Std;
```

## Meta
The Meta directory provides a collection of meta programming utilities, most of which are used in ATR.

### Arithmetic

Provides definitions of arithmetic types based on their width. Also contains a parser for user defined numeric literal operator templates.

### Bit

Type-safe abstractions over bit operations. The template Bit::Field uses the minimal amount of bytes for a bitfield of a given bit width and allows type-safe operations on them which guarantee that no more than the given amount of bits is ever used to represent the value.

### Buffer

Adaptor for sequence of elements where the capacity never changes after construction. The underlying Buffer may be static (array) or dynamic (heap).

### Byte

Abstraction over arrays of bytes that enable conversion of objects from and to arrays of bytes at compile time. 

### Data

Contains classes to store objects, arrays, and references in a uniform manner. Limits the available operations on the stored entities.

### Dispatch

Can be used to generate a switch-like dispatch function from a string to any function. For usage examples, refer to Test/Meta/Dispatch.

### Functional

Provides utility function objects for fold expressions as well as a helper to turn a template function into a regular addressable function.

### ID
The corner stone of ATR. Compile-time identifiers (unique stateless types) are generated with user defined literals. The mixed usage of references and integers as template arguments provides maximum readability of the identifier in debuggers.

### Lex

Function objects that analyse a certain type and separate it into multiple tokens. This is useful for partial template specialization. For example T* const will be result in the tokens T, Pointer and const. Substituting a ... for the const makes a particular specialization apply for T* and T* const without the need for concepts. Or functions types can specialized for in a single template without the infamous 48 specializations for each distinct function type.

### Logic

Allows for combination of predicates into a logical term. The term is optimized as much as possible, such as optimizing A or not A into a tautology. The optimization is performed without type-information which saves many template instantiations that would be required otherwise, saving hours of compilation time for complex terms with many different types of predicates. For efficient buffer usages, a maximum literal and clause limit applies. A term may be used as an argument for the concept ProtoConstraint, resulting in a concept which evaluates the type according to the predicates. Using a term as a template argument makes it possible to customize constraints in functions and classes via its template arguments. It is particularily useful to create ad-hoc constraints when specifying an interface in ATR.

### Math

A collection of basic mathmetical operations enabled for constexpr.

### Memory

Aims for type-safe operations on pointers. For example int* can nomrally be incremented by any integer number. Ideally, it should only be incremented by values representing multiples of the byte width of an integer: Memory::ByteWidth<int>.
Values representing a bit width can be easily converted to values representing a byte width, without mixing up the unit.

### Predicate

Provides the standard type_traits as function objects. These can be used in combination with the Logic module.

### Token

Provides classes that represent constructs in the C++ language which cannot be easily deduced in all potential combinations, such as cv-qualifiers, references, or an ellipsis. The TypeToken allows for a bi-directional mapping between types and unique identifier-values of the same type. This can be used to perform operations on type-lists with standard algorithms and without many template instantiations.

## Test

A collection of .cpp files with compile time assertions that verify upon compilation that the library works as intended.
Tests may be used as a reference for how the library is intended to be used.


