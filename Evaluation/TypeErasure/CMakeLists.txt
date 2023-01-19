force_import_std(boost.hpp)
add_user_header_unit(boost.hpp)

add_module(Library.cpp)

add_module(TypeErasure.cpp)

add_module_executable(
	evaluation_type_erasure
		Main.cpp
)
