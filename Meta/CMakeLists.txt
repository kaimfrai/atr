add_subdirectory(Math)
add_subdirectory(Memory)
add_subdirectory(Bit)
add_subdirectory(Byte)
add_subdirectory(Buffer)


add_subdirectory(Arithmetic)
add_subdirectory(Token)
add_subdirectory(Lex)
add_subdirectory(Data)
add_subdirectory(Functional)
add_subdirectory(Logic)
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
	Logic.cpp
	Math.cpp
	Memory.cpp
	Size.cpp
	Token.cpp

	Meta.cpp
)
