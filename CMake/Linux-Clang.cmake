set(CMAKE_SYSTEM_NAME Linux)

set(CMAKE_C_COMPILER "clang-13")
set(CMAKE_CXX_COMPILER "clang++-13")

set(CXX_STANDARD_VERSION_FLAG
	-std=c++2b
)
set(CXX_STANDARD_LIBRARY_FLAG
	-stdlib=libc++
)

set(WARNING_FLAGS
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

set(ADDITIONAL_COMPILE_OPTIONS
	-fconstexpr-backtrace-limit=0
	-ftemplate-backtrace-limit=0
	-frelaxed-template-template-args
	-fconstexpr-steps=4294967295
	#-ftime-trace
)
