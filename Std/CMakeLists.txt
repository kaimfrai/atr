add_user_header_unit(
	Std.hpp
)

if	(${CMAKE_CXX_COMPILER_ID} MATCHES Clang)
	add_module(
		Clang_Std.hpp
	)
else()
	message(FATAL_ERROR "Builing Std module not yet supported for compiler-id ${CMAKE_CXX_COMPILER_ID}!")
endif()
