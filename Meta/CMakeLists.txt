add_single_file_modules(
	Size.cpp
)

add_subdirectory(Math)
add_subdirectory(Memory)
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
add_subdirectory(ID)
add_subdirectory(Dispatch)

add_single_file_modules(
	Arithmetic.cpp
	Bit.cpp
	Buffer.cpp
	Byte.cpp
	Data.cpp
	Dispatch.cpp
	Functional.cpp
	ID.cpp
	Lex.cpp
	Logic.cpp
	Math.cpp
	Memory.cpp
	Predicate.cpp
	Token.cpp
	Trait.cpp

	Meta.cpp
)
