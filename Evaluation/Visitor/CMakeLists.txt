add_module_executable(
	evaluation_visitor
		Main.cpp
)

target_compile_options(
	evaluation_visitor
PRIVATE
	${MERGE_IDENTICAL_FUNCTIONS_COMPILE_OPTIONS}
)

target_link_options(
	evaluation_visitor
PRIVATE
	${MERGE_IDENTICAL_FUNCTIONS_LINK_FLAGS}
)
