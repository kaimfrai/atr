set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR ${CMAKE_HOST_SYSTEM_PROCESSOR})

if	(COMPILER_SEARCH_PATHS)
	set(CMAKE_C_COMPILER ${COMPILER_SEARCH_PATHS}/bin/clang-17)
	set(CMAKE_CXX_COMPILER ${COMPILER_SEARCH_PATHS}/bin/clang++-17)
else()
	find_program(CMAKE_C_COMPILER clang-17 REQUIRED)
	find_program(CMAKE_CXX_COMPILER clang++-17 REQUIRED)
	#resolve real path for clang-tidy
	file(REAL_PATH ${CMAKE_C_COMPILER} CMAKE_C_COMPILER EXPAND_TILDE)
	file(REAL_PATH ${CMAKE_CXX_COMPILER} CMAKE_CXX_COMPILER EXPAND_TILDE)
	#add ++ to real path
	set(CMAKE_CXX_COMPILER "${CMAKE_CXX_COMPILER}++")
endif()

if (EXISTS "${CMAKE_CXX_COMPILER}" AND NOT IS_DIRECTORY "${CMAKE_CXX_COMPILER}")
	message("Found C++ Compiler at ${CMAKE_CXX_COMPILER}")
else()
	message(FATAL_ERROR "Could not find C++ Compiler at ${CMAKE_CXX_COMPILER}")
endif()

if	(USE_LIBCPP)
	set(
		STANDARD_LIBRARY_FLAG
		"-stdlib=libc++"
	)
else()
	set(
		STANDARD_LIBRARY_FLAG
	)
endif()

add_compile_options(
	-march=native
	-flto=thin
	-fconstexpr-backtrace-limit=0
	-ftemplate-backtrace-limit=0
	-frelaxed-template-template-args
	-fconstexpr-steps=4194303
	-ffunction-sections
	-fdata-sections
)

add_link_options(
	-fuse-ld=lld
	-lc++
	-flto=thin
	-Wl,--gc-sections,--icf=all
)

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

if	(FASTER_BUILD_SPEED)

	add_compile_options(
		--no-warnings
	)

else()

	# Warnings will slow down the build speed
	add_compile_options(
		-Wall
		-Wextra
		-Wpedantic
		-Wconversion
		-Wdeprecated
		-Wctad-maybe-unsupported
		-Wcomma
		-Wmissing-variable-declarations
		-Werror
		-Weverything
		# Using header units
		-Wno-experimental-header-units
		# False positives?
		-Wno-read-modules-implicitly
		# Impacts build times negatively by being active alone
		# Imposes an implementation burden which may incur even more build time
		# If everything is evaluated at compile time, buffer usage is already checked
		-Wno-unsafe-buffer-usage
		# prohibits inline virtual classes
		-Wno-weak-vtables
		# not always preventable
		-Wno-padded
		# using C++23
		-Wno-c++98-compat-pedantic
		# using c++23
		-Wno-c++20-compat-pedantic
		# using C++23
		-Wno-c++20-extensions
		# more useful as warning
		-Wno-error=deprecated-declarations
	)

	# Only trace time when not measuring build speed
	add_compile_options(
		-ftime-trace
	)

endif()
