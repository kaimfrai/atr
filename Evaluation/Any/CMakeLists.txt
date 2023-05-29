add_module(Any.cpp)

add_module_executable(
	any
		Main.cpp
)

target_compile_options(
	any
PRIVATE
	${MERGE_IDENTICAL_FUNCTIONS_COMPILE_OPTIONS}
)

target_link_options(
	any
PRIVATE
	${MERGE_IDENTICAL_FUNCTIONS_LINK_FLAGS}
)
