find_path(
	DYNO_INCLUDE_PATH
	"dyno.hpp"
PATHS
	"${PROJECT_SOURCE_DIR}/../dyno/include/"
REQUIRED
DOC	"Path for dyno includes"
)

if (NOT FASTER_BUILD_SPEED)
	set_source_files_properties(
		Dyno.cpp
	PROPERTIES
	COMPILE_OPTIONS
		"$<$<CXX_COMPILER_ID:Clang>:-Wno-gnu-string-literal-operator-template;-Wno-shadow-uncaptured-local;-Wno-reserved-identifier;-Wno-implicit-int-conversion;-Wno-missing-variable-declarations;-Wno-deprecated-declarations;-Wno-nrvo>"
	)
endif()

set_source_files_properties(
	Dyno.cpp
PROPERTIES
INCLUDE_DIRECTORIES
	"${DYNO_INCLUDE_PATH}"
)

find_path(
	POLYMORPHIC_INCLUDE_PATH
	"polymorphic.hpp"
PATHS
	"${PROJECT_SOURCE_DIR}/../cpp-from-the-sky-down/metaprogrammed_polymorphism/"
REQUIRED
DOC	"Path for polymorphic includes"
)

if	(NOT FASTER_BUILD_SPEED)
	set_source_files_properties(
		Polymorphic.cpp
	PROPERTIES
	COMPILE_OPTIONS
		"$<$<CXX_COMPILER_ID:Clang>:-Wno-cast-function-type-strict>"
	)
endif()

set_source_files_properties(
	Polymorphic.cpp
PROPERTIES
INCLUDE_DIRECTORIES
	"${POLYMORPHIC_INCLUDE_PATH}"
)

add_single_file_modules(
	CommonData.cpp
	DynamicArray.cpp
	TaggedArray.cpp

	Fraction.cpp
	PiFraction.cpp

	PseudoRandomSequence.cpp
	TransformReduce.cpp
	VerifyLoopSum.cpp

	Dyno.cpp
	Polymorphic.cpp
	TypeErasure.cpp
)

add_subdirectory(
	Visitor
)
