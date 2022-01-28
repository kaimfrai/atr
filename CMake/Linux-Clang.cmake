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
	#-Wmissing-variable-declarations
	#-Wcomma
	#-Wauto-import
	#-Werror
	#-Weverything
	-Wno-weak-vtables
	-Wno-padded
	#triggered when using std::sort with defaulted comparison
	-Wno-logical-op-parentheses
	-Wno-zero-as-null-pointer-constant
	-Wno-c++98-compat-pedantic		#using c++23
	-Wno-pre-c++17-compat-pedantic	#using c++23
	-Wno-c++20-compat-pedantic		#using c++23
)

set(ADDITIONAL_COMPILE_OPTIONS
	-fconstexpr-backtrace-limit=0
	-ftemplate-backtrace-limit=0
	-frelaxed-template-template-args
	-fconstexpr-steps=4294967295
	-ftime-trace
)
