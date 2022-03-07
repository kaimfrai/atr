if	(${CMAKE_CXX_COMPILER_ID} MATCHES Clang)
	add_module(
		Clang_Std.hpp
	BYPRODUCTS
		${MODULE_CACHE_PATH}/std.pcm
		${MODULE_CACHE_PATH}/std_config.pcm
		${MODULE_CACHE_PATH}/_Builtin_stddef_max_align_t.pcm
	)
else()
	message(FATAL_ERROR "Builing Std module not yet supported for compiler-id ${CMAKE_CXX_COMPILER_ID}!")
endif()
