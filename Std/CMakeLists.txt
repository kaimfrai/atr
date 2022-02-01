if	(${CMAKE_CXX_COMPILER_ID} MATCHES Clang)
	add_module(
		Clang_Std.cpp
	BYPRODUCTS
		${MODULE_CACHE_PATH}/std.pcm
		${MODULE_CACHE_PATH}/std_config.pcm
		${MODULE_CACHE_PATH}/_Builtin_stddef_max_align_t.pcm
	)
else()
	message(FATAL_ERROR "Builing Std module not yet supported for compiler-id ${CMAKE_CXX_COMPILER_ID}!")
endif()

add_module(QualifierTemplate.cpp)
add_module(TemplateConcepts.cpp)
add_module(TemplateTraits.cpp)
add_module(TypeTraits.cpp)
