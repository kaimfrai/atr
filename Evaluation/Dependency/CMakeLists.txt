add_single_file_modules(
	CopyConstruct.cpp
	InPlaceConstruct.cpp
	TypeConstruct.cpp
	DynamicArray.cpp

	DataTypes.cpp
	Fraction.cpp
	PiFraction.cpp

	PseudoRandomSequence.cpp
	MainTemplate.cpp
)

find_path(DYNO_INCLUDE_PATH "dyno.hpp" PATHS "${PROJECT_SOURCE_DIR}/../dyno/include/" REQUIRED DOC "Path for dyno includes")

set_source_files_properties(
	${DYNO_INCLUDE_PATH}/dyno.hpp
PROPERTIES
INCLUDE_DIRECTORIES
	"${DYNO_INCLUDE_PATH}"
)

if (NOT FASTER_BUILD_SPEED)
	set_source_files_properties(
		${DYNO_INCLUDE_PATH}/dyno.hpp
	PROPERTIES
	COMPILE_OPTIONS
		"$<$<CXX_COMPILER_ID:Clang>:-Wno-gnu-string-literal-operator-template;-Wno-shadow-uncaptured-local;-Wno-reserved-identifier;-Wno-implicit-int-conversion;-Wno-missing-variable-declarations>"
	)
endif()

force_import_std(
	"${DYNO_INCLUDE_PATH}/dyno.hpp"
)

add_user_header_unit(
	"${DYNO_INCLUDE_PATH}/dyno.hpp"
)

set_source_files_properties(
	Dyno.cpp
PROPERTIES
INCLUDE_DIRECTORIES
	"${DYNO_INCLUDE_PATH}"
)

add_module(
	Dyno.cpp
)

find_path(POLYMORPHIC_INCLUDE_PATH "polymorphic.hpp" PATHS "${PROJECT_SOURCE_DIR}/../cpp-from-the-sky-down/metaprogrammed_polymorphism/" REQUIRED DOC "Path for polymorphic includes")

set_source_files_properties(
	${POLYMORPHIC_INCLUDE_PATH}/polymorphic.hpp
PROPERTIES
INCLUDE_DIRECTORIES
	"${POLYMORPHIC_INCLUDE_PATH}"
)

if	(NOT FASTER_BUILD_SPEED)
	set_source_files_properties(
		${POLYMORPHIC_INCLUDE_PATH}/polymorphic.hpp
	PROPERTIES
	COMPILE_OPTIONS
		"$<$<CXX_COMPILER_ID:Clang>:-Wno-cast-function-type-strict>"
	)
endif()

force_import_std(
	"${POLYMORPHIC_INCLUDE_PATH}/polymorphic.hpp"
)

add_user_header_unit(
	"${POLYMORPHIC_INCLUDE_PATH}/polymorphic.hpp"
)

set_source_files_properties(
	Polymorphic.cpp
PROPERTIES
INCLUDE_DIRECTORIES
	"${POLYMORPHIC_INCLUDE_PATH}"
)

add_module(
	Polymorphic.cpp
)

force_import_std("${CMAKE_CURRENT_SOURCE_DIR}/type_erasure/boost.hpp")
add_user_header_unit("${CMAKE_CURRENT_SOURCE_DIR}/type_erasure/boost.hpp")

set_source_files_properties(
	TypeErasure.cpp
PROPERTIES
INCLUDE_DIRECTORIES
	"${CMAKE_CURRENT_SOURCE_DIR}/type_erasure/"
)

add_module(TypeErasure.cpp)
