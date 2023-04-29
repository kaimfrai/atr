add_module(Any.cpp)

add_module_executable(
	evaluation_any
		Main.cpp
)

target_compile_options(
	evaluation_any
PRIVATE
	${MERGE_IDENTICAL_FUNCTIONS_COMPILE_OPTIONS}
)

target_link_options(
	evaluation_any
PRIVATE
	${MERGE_IDENTICAL_FUNCTIONS_LINK_FLAGS}
)
