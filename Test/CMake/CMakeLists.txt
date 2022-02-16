add_module(
	TestModule.cpp
IMPLEMENTATION
	Foo.cpp
	Bar.cpp
)

add_module_executable(
${PROJECT_NAME}
	main.cpp
)
