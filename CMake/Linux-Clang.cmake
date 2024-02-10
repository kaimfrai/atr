set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR ${CMAKE_HOST_SYSTEM_PROCESSOR})

if	(COMPILER_SEARCH_PATHS)
	set(CMAKE_C_COMPILER ${COMPILER_SEARCH_PATHS}/bin/clang-19)
	set(CMAKE_CXX_COMPILER ${COMPILER_SEARCH_PATHS}/bin/clang++-19)
else()
	find_program(CMAKE_C_COMPILER clang-19 REQUIRED)
	find_program(CMAKE_CXX_COMPILER clang++-19 REQUIRED)
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
	-std=c++2c
	-mavx2
	-flto=full
	-fconstexpr-backtrace-limit=0
	-ftemplate-backtrace-limit=0
	-frelaxed-template-template-args
	-fconstexpr-steps=4194303
	-ffunction-sections
	-fdata-sections
	-ffast-math
)

add_link_options(
	-fuse-ld=lld
	-lc++
	-flto=full
	-Wl,--gc-sections,--icf=all
)

if	(BUILD_WITH_SANITIZER)

	add_compile_options(
		-O1
		-fsanitize=undefined
		-fsanitize=float-divide-by-zero
		-fsanitize=implicit-conversion
		-fsanitize=local-bounds
		-fsanitize=nullability
		-fno-omit-frame-pointer
		-fno-optimize-sibling-calls
	)

	if	("${BUILD_WITH_SANITIZER}" STREQUAL "address")

		add_compile_options(
			-fsanitize=address
			-fsanitize-address-use-after-return=always
			-fsanitize-address-use-after-scope
		)
		add_link_options(
			-fsanitize=address
		)

		message(STATUS "Building with address & undefined behaviour sanitizer")

	elseif("${BUILD_WITH_SANITIZER}" STREQUAL "memory")

		add_compile_options(
			-fsanitize=memory
			-fsanitize-memory-track-origins
		)
		add_link_options(
			-fsanitize=memory
		)

		message(STATUS "Building with memory & undefined behaviour sanitizer")

	else()

		message(FATAL_ERROR "Unknown value ${BUILD_WITH_SANITIZER} specified for BUILD_WITH_SANITIZER!")

	endif()
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
		# Floating point equals has its use to check if a value has changed
		-Wno-float-equal
		# Brace elision can be useful for readability
		# It's also more robust for refactorings
		-Wno-missing-braces
		# Using header units
		-Wno-experimental-header-units
		# Impacts build times negatively by being active alone
		# Imposes an implementation burden which may incur even more build time
		# If everything is evaluated at compile time, buffer usage is already checked
		-Wno-unsafe-buffer-usage
		# prohibits inline virtual classes
		-Wno-weak-vtables
		# not always preventable
		-Wno-padded
		# using C++26
		-Wno-c++98-compat-pedantic
		-Wno-c++20-compat-pedantic
		-Wno-c++20-extensions
		-Wno-pre-c++26-compat-pedantic
		# more useful as warning
		-Wno-error=deprecated-declarations

		# turned off for now as it conflicts with -Wcovered-switch-default
		-Wno-switch-default
	)

	# Only trace time when not measuring build speed
	add_compile_options(
		-ftime-trace
	)

endif()
