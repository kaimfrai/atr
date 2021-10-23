add_library(LogicTest
	Literal_and_Literal.cpp
	Literal_or_Literal.cpp
)

add_dependencies(LogicTest Logic)
