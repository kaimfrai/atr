force_import_std(boost.hpp)
add_user_header_unit(boost.hpp)

add_module(Library.cpp)

add_module(TypeErasure.cpp)

add_module_executable(
	evaluation_type_erasure
		Main.cpp
)

target_compile_options(
	evaluation_type_erasure
PRIVATE
	${MERGE_IDENTICAL_FUNCTIONS_COMPILE_OPTIONS}
)

target_link_options(
	evaluation_type_erasure
PRIVATE
	${MERGE_IDENTICAL_FUNCTIONS_LINK_FLAGS}
)
