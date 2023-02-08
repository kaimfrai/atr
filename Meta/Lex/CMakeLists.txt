add_single_file_modules(
	CV.cpp
	Array.cpp
	Function.cpp
	Member.cpp
	Pointer.cpp
	Reference.cpp
	Match.cpp
)

add_subdirectory(CV)
add_subdirectory(Array)
add_subdirectory(Pointer)
add_subdirectory(Reference)
add_subdirectory(Member)
add_subdirectory(Function)

add_single_file_modules(
	ObjectTokenizer.cpp
	ReferenceTokenizer.cpp
	FreeFunctionTokenizer.cpp
	FreeEllipsisFunctionTokenizer.cpp
	OwnedFunctionTokenizer.cpp
	OwnedEllipsisFunctionTokenizer.cpp
	Tokenizer.cpp
	Transform.cpp
	TransformComposer.cpp
)
