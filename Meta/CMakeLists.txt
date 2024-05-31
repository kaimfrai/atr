add_subdirectory(
	Unlinkable
)

add_single_file_modules(
	Size.cpp
)

add_subdirectory(Generic)
add_subdirectory(Math)
add_subdirectory(Memory)
add_subdirectory(Auto)
add_subdirectory(Random)
add_subdirectory(Arithmetic)
add_subdirectory(Byte)
add_subdirectory(Bit)
add_subdirectory(Buffer)
add_subdirectory(Token)
add_subdirectory(Logic)
add_subdirectory(Lex)
add_subdirectory(Trait)

add_subdirectory(Data)
add_subdirectory(Functional)
add_subdirectory(Predicate)
add_subdirectory(String)

add_module(
	ID/Base.cpp
	ID/ID.cpp
	ID/Make.cpp
	ID/Alias.cpp
	ID/Literals.cpp
	ID/Concept.cpp

	ID.cpp
)

add_subdirectory(Dispatch)

add_single_file_modules(
	Arithmetic.cpp
	Auto.cpp
	Bit.cpp
	Buffer.cpp
	Byte.cpp
	Data.cpp
	Functional.cpp
	String.cpp
	Dispatch.cpp
	Lex.cpp
	Logic.cpp
	Math.cpp
	Memory.cpp
	Predicate.cpp
	Token.cpp
	Trait.cpp

	Meta.cpp
)
