# Archetypal Recomposition

This project provides the ATR library. ATR is an experimental alternative to inheritance with virtual functions. ATR optimizes memory layout and merges identical functions to reduce overall cache use. 2 strategies are implemented so far using ATR, one is in planning:

* Function pointer: Stores a pointer to the function implementation alongside the object.
* Tag: Stores an 8-bit tag in a separate array that maps to the object type. The tag value is determined at compile time and validated at link time. At runtime with full optimization it is dispatched with a singular jump instruction, similar to how a switch with consecutive cases would.
* SOA: A structure of array implemenation leveraging SIMD instructions to process multiple elements at one. For dispatching a tag is stored. Not yet implemented an exists only on paper.

All 3 strategies define the same archetype definition from which the actual data structures are recomposed.

The entirety of this project is built using C++20 modules.

## Requirements
Supported OS:

* Current Linux Distributions (tested Ubuntu 22.04)

Required software:

* CMake version 3.20 oder higher
* Clang 19 (currently not fully released, requires pack indexing to be supported)
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

The classes VirtualArgument and VirtualElement enable using different types with a common interface as arguments to functions or in a container. See files in Evaluation/Archetype for usage examples. Alternatively a fixed amount of types can be mapped to a runtime index and dispatched from the index back to a function implementation.

Using the same archetype definition, it is possible to distribute an object over multiple districts, such as a part that's allocated on the stack and one that is allocated on the heap.

A bare bones data-member name reflection is supported that may be used in the future to automatically generate serialization code.

For a struct like

```C++
struct Color
{
  float Red;
  float Green;
  float Blue;
  float Alpha;
};
```
the corresponding definition of an archetype may look like this:

```C++
auto constexpr inline Recompose(ProtoComposer auto&& composer, ID<"Color">) -> auto&&
{
  return
    composer
    . Member("Red",	Type<float>)
    . Member("Green",	Type<float>)
    . Member("Blue",	Type<float>)
    . Member("Alpha",	Type<float>)
  ;
}
```
More examples of corresponding definitions can be found in Evaluation/Replication and Evaluation/Archetype.

## Evaluation

This directory provides multiple implementations of a volume computation of different shape-types. Each implementation is measured in terms of compilation duration, memory usage, total runtime, cache behavior, and assembly size.

* Any: An implementation using std::any, CRTP, and function pointers.
* Archetype: An implementation using ATR with function pointers.
* Dyno: An implementation using the dyno library and CRTP.
* Polymorphic: An implementation using the polymorphic library and CRTP.
* Replication: A hand-optimized implementation which resembles closely the result of ATR.
* SOAReplication: A hand-optimized implementation using a structure of arrays approach and SIMD intrinsics. This is intended to be a reference point for the future SOA-ATR
* TagATR: An implementation using ATR with a separate array of tags.
* TagReplication: A hand-optimized implementation which resembles closely the result of TagATR.
* TypeErasure: An implementation using the TypeErasure library from boost and CRTP.
* Variant: An implementation using std::variant, std::visit, and CRTP.
* Virtual: An implementation using interfaces, inheritance, virtual functions, and std::unique_ptr.
* Visitor: An experimental alternative that is not using ATR. When calling a function of a type-erased stored object, all possibly stored types need to be explicitly mentioned. This works similar to std::variant but does not require the types to be specified until later.

Note that the assembly of archetype is nearly identical to the assembly of replication.

To run all evaluation scripts do the following:

```
> bash evaluation.sh assembly all
> bash evaluation.sh cachegrind all
> bash evaluation.sh compile all
> bash evaluation.sh memcheck all
> sudo bash evaluation.sh perf all
```

You may optionally specify exactly one argument out of

* Virtual
* Any
* Dyno
* Polymorphic
* TypeErasure
* Archetype
* Replication
* TagATR
* TagReplication
* Variant
* Visitor
* SOAReplication

instead of "all" to run the evaluation only on the corresponding implementation.

To make use of perf the script requires elevated rights.

You may also run the following:

```
> bash evaluation.sh assembly all Z
> bash evaluation.sh cachegrind all Z
> bash evaluation.sh compile all Z
> bash evaluation.sh memcheck all Z
> sudo bash evaluation.sh perf all Z
```
This will run each implementation by only zero-initializing all data members instead of pseudo randomly intializing them. For ATR this has a significant impact on compilation duration, as member access has not yet been optimized in that regard. You may find that despite ATR making heavy use of meta-programming, it's compilation duration without member access is shorter than the implementation using virtual functions!

#### Highlights of Evaluation/Results computing the sum over all volumes of 100'000 pseudo-randomly generated 3D bodies using polymorphism

* -7% Compilation time with zero-initialization of Virtual compared to TagATR:
  0.91s vs 0.85s
* +15% Compilation time with pseudo-random initialization of Virtual compared to TagATR:
  1.09s vs 1.25s
* -37% Memory consumption of Virtual compared to TagATR:
  7'049'464 bytes vs 4'407'296 bytes
* -41% Memory consumption of Virtual compared to SOAReplication:
  7'049'464 bytes vs 4'172'704 bytes
* -43% Total program run duration of Virtual compared to TagATR:
  8.74 ms vs 4.94 ms
* -81% Total program run duration of Virtual compared to SOAReplication:
  8.74 ms vs 1.66 ms

## CMake

Contains CMake specific configuration files. In particular custom scripts that enable the usage of C++20 modules with Clang before CMake officially supported modules.

Once set up, the standard library can be used with

```C++
import Std;
```

In the future this is supposed to be replaced with standard CMake support for modules and the standardized C++ module std;

## Meta
The Meta directory provides a collection of meta programming utilities, most of which are used in ATR.

### Arithmetic

Provides definitions of arithmetic types based on their width. Also contains a parser for user defined numeric literal operator templates.

### Auto

Incomplete implementation of universal proxy objects. The idea is to be able to express all kinds of utility objects as a single template.For example `std::array<int, 5>` would be `Auto<int[5]>` and `std::span<int>` would be `Auto<int(&)[]>`. Additional Tags may be specified, for example `Auto<float[8], SimdTag>` instead of `std::fixed_size_simd<float, 8>`.
The primary intent is for template arguments so that arrays, references, and values can be represented with a single Auto.

### Bit

Type-safe abstractions over bit operations. The template Bit::Field uses the minimal amount of bytes for a bitfield of a given bit width and allows type-safe operations on them which guarantee that no more than the given amount of bits is ever used to represent the value.

### Buffer

Adaptor for sequence of elements where the capacity never changes after construction. The underlying Buffer may be static (array) or dynamic (heap).

### Byte

Abstraction over arrays of bytes that enable conversion of objects from and to arrays of bytes at compile time. 

### Data (deprecated, to be superceded by Auto)

Contains classes to store objects, arrays, and references in a uniform manner. Limits the available operations on the stored entities.

### Dispatch

Can be used to generate a switch-like dispatch function from a runtime string to any function. For usage examples, refer to Test/Meta/Dispatch.
Excerpt:

```C++
namespace Meta::Dispatch
{
  auto Block(ProtoPath<int(int), "Multiply1"> auto) = delete;
  auto constexpr inline Call(Path<int(int), "Multiply1">, int arg) -> int
  {
    return arg * 1;
  }

  auto Block(ProtoPath<int(int), "Multiply2"> auto) = delete;
  auto constexpr inline Call(Path<int(int), "Multiply2">, int arg) -> int
  {
    return arg * 2;
  }
}

static_assert(Meta::DispatchFor<int(int)>::Dispatch("Multiply1")(5) == 5);
static_assert(Meta::DispatchFor<int(int)>::Dispatch("Multiply2")(5) == 10);
```

### Functional

Provides utility function objects for fold expressions as well as a helper to turn a template function into a regular addressable function.

### Generic

Utilities that do not (yet) fit into their own submodule. Most prominently, this features Meta.Generic.Map, which allows compile-time mapping of one value to another using friend injection. This technique is the main reason why type manipulation and sorting in ATR compiles as fast as it does.

### ID
A major corner stone of ATR. Compile-time identifiers (unique stateless types) are generated with user defined literals. The mixed usage of references and integers as template arguments provides maximum readability of the identifier in debuggers and compiler error messages.

### Lex

Function objects that analyse a certain type and separate it into multiple tokens. This is useful for partial template specialization. For example `T* const` will be result in the tokens T, Pointer and const. Substituting a `...` for the const makes a particular specialization apply for `T*` and `T* const` without the need for concepts. Or functions types can specialized for in a single template without the infamous 48 specializations for each distinct function type.

### Logic

Allows for combination of predicates into a logical term. The term is optimized as much as possible, such as optimizing A or not A into a tautology. The optimization is performed without type-information which saves many template instantiations that would be required otherwise, saving literal hours of compilation time for complex terms with many different types of predicates. For efficient buffer usages, a maximum literal and clause limit applies. A term may be used as an argument for the concept ProtoConstraint, resulting in a concept which evaluates the type according to the predicates. Using a term as a template argument makes it possible to customize constraints in functions and classes via its template arguments. It is particularily useful to create ad-hoc constraints when specifying an interface in ATR.

Despite saving hours compared to a solution using a cusotm expression template DSL the compilation duration is still suboptimal. The logic submodule is to be refactored in the future, if possible with compile time SIMD.

The optimization of the Logic submodule is verified by 1460 static_asserts in Test.

### Math

A collection of basic mathmetical operations enabled for constexpr.

### Memory

Aims for type-safe operations on pointers. For example int* can normally be incremented by any integer number. Ideally, it should only be incremented by values representing multiples of the byte width of an integer: Memory::ByteWidth<int>.
Values representing a bit width can be easily converted to values representing a byte width, without mixing up the unit.

### Predicate

Chains together multiple function objects from the Trait submodule. These can be used in combination with the Logic module.

### String

Compile time string literals that can be converted to a hash. They can also be chained together in place of a concatenation, to prefix a compile time constant string with another.

### Token

Provides classes that represent constructs in the C++ language which cannot be easily deduced in all potential combinations, such as cv-qualifiers, references, or an ellipsis. The TypeToken allows for a bi-directional mapping between types and unique identifier-values of the same type. This can be used to perform operations on type-lists with standard algorithms and without many template instantiations.

### Trait

Provides the standard type_traits as function objects.

### Unlinkable

Utility function used to detect errors at link time in release builds or at runtime in debug builds.

## Test

A collection of .cpp files with compile time assertions that verify upon compilation that the library works as intended.
Tests may be used as a reference for how the library is intended to be used.
