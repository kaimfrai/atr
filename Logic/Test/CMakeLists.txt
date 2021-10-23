add_library(LogicTest
	Constant_and_Constant.cpp
	Constant_or_Constant.cpp
	Constant_and_Literal.cpp
	Constant_or_Literal.cpp
	Constant_and_Clause.cpp
	Constant_or_Clause.cpp

	Literal_and_Constant.cpp
	Literal_or_Constant.cpp
	Literal_and_Literal.cpp
	Literal_or_Literal.cpp
	Literal_and_Clause.cpp
	Literal_or_Clause.cpp
)

add_dependencies(LogicTest Logic)
