add_module(
	Primary.cpp
PARTITION
	Interface.cpp
IMPLEMENTATION
	Impl.cpp
)

add_module_executable(
Test.CMake.VirtualTable
	main.cpp
)
