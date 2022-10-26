set(CMAKE_SYSTEM_NAME Linux)

set(CMAKE_C_COMPILER "gcc-11")
set(CMAKE_CXX_COMPILER "g++-11")

set(WARNING_FLAGS
	-Wall
	-Wextra
	-Wpedantic
	-Werror
)

set(CXX_STANDARD_VERSION_FLAG
	-std=c++2b
)
set(CXX_STANDARD_LIBRARY_FLAG
)
