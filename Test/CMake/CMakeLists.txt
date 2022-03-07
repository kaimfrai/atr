add_module(
	TestModule.hpp
PARTITION
	Def.hpp
	Fwd.hpp
IMPLEMENTATION
	Bar.cpp
	Foo.cpp
	Fwd.cpp
)

add_module_executable(
${PROJECT_NAME}
	main.cpp
)
