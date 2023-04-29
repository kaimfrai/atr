add_module_executable(
	evaluation_variant
		Main.cpp
)

target_compile_options(
	evaluation_variant
PRIVATE
	${MERGE_IDENTICAL_FUNCTIONS_COMPILE_OPTIONS}
)

target_link_options(
	evaluation_variant
PRIVATE
	${MERGE_IDENTICAL_FUNCTIONS_LINK_FLAGS}
)
