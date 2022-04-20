set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR ${CMAKE_HOST_SYSTEM_PROCESSOR})

#resolve real path for clang-tidy
find_program(CMAKE_C_COMPILER clang-15 REQUIRED)
file(REAL_PATH ${CMAKE_C_COMPILER} CMAKE_C_COMPILER EXPAND_TILDE)
find_program(CMAKE_CXX_COMPILER clang++-15 REQUIRED)
file(REAL_PATH ${CMAKE_CXX_COMPILER} CMAKE_CXX_COMPILER EXPAND_TILDE)
#add ++ to real path
set(CMAKE_CXX_COMPILER "${CMAKE_CXX_COMPILER}++")

#do not use libc++ for C objects
add_compile_options($<$<COMPILE_LANGUAGE:CXX>:-stdlib=libc++>)
add_link_options($<$<COMPILE_LANGUAGE:CXX>:-stdlib=libc++>)
add_link_options($<$<COMPILE_LANGUAGE:CXX>:-lm>)
add_link_options($<$<COMPILE_LANGUAGE:CXX>:-lc++>)
add_link_options($<$<COMPILE_LANGUAGE:CXX>:-lc++abi>)
add_link_options(-fuse-ld=lld)

if	(BUILD_WITH_SANITIZER)
	add_compile_options(
		-O1
		-fsanitize=address
		-fno-omit-frame-pointer
		-fno-optimize-sibling-calls
		-fsanitize-address-use-after-return=always
		-fsanitize-address-use-after-scope
	)
	add_link_options(
		-fsanitize=address
	)

endif()


add_compile_options(
	-Wall
	-Wextra
	-Wpedantic
	-Wconversion
	-Wdeprecated
	-Wmissing-variable-declarations
	-Wctad-maybe-unsupported
	-Wcomma
	-Wauto-import
	-Werror
	-Weverything
	# useful for nested aggregates
	-Wno-missing-braces
	# prohibits inline virtual classes
	-Wno-weak-vtables
	# not always preventable
	-Wno-padded
	# necessary to define concepts in DNF
	-Wno-logical-op-parentheses
	# triggered when using std::sort with defaulted comparison
	-Wno-zero-as-null-pointer-constant
	# using C++23
	-Wno-c++98-compat-pedantic
	# using c++23
	-Wno-c++20-compat-pedantic
)

add_compile_options(
	-fconstexpr-backtrace-limit=0
	-ftemplate-backtrace-limit=0
	-frelaxed-template-template-args
	-fconstexpr-steps=4294967295
	#-ftime-trace
)
