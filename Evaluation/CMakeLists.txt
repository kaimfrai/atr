add_subdirectory(Dependency)
add_subdirectory(CRTP)

################################################################################
add_module_executable(
	Any
		Any.cpp
)
set_target_properties(
	Any
PROPERTIES
RUNTIME_OUTPUT_DIRECTORY
	"${CMAKE_BINARY_DIR}/bin/"
)

################################################################################
add_subdirectory(Archetype)
add_module_executable(
	Archetype
		Archetype.cpp
)
set_target_properties(
	Archetype
PROPERTIES
RUNTIME_OUTPUT_DIRECTORY
	"${CMAKE_BINARY_DIR}/bin/"
)

################################################################################
find_path(
	DYNO_INCLUDE_PATH
	"dyno.hpp"
PATHS
	"${PROJECT_SOURCE_DIR}/../dyno/include/"
REQUIRED
DOC	"Path for dyno includes"
)

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
add_module_executable(
	Dyno
		Dyno.cpp
)
set_target_properties(
	Dyno
PROPERTIES
RUNTIME_OUTPUT_DIRECTORY
	"${CMAKE_BINARY_DIR}/bin/"
)

################################################################################
find_path(
	POLYMORPHIC_INCLUDE_PATH
	"polymorphic.hpp"
PATHS
	"${PROJECT_SOURCE_DIR}/../cpp-from-the-sky-down/metaprogrammed_polymorphism/"
REQUIRED
DOC	"Path for polymorphic includes"
)

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
add_module_executable(
	Polymorphic
		Polymorphic.cpp
)
set_target_properties(
	Polymorphic
PROPERTIES
RUNTIME_OUTPUT_DIRECTORY
	"${CMAKE_BINARY_DIR}/bin/"
)

################################################################################
add_subdirectory(Replication)
add_module_executable(
	Replication
		Replication.cpp
)
set_target_properties(
	Replication
PROPERTIES
RUNTIME_OUTPUT_DIRECTORY
	"${CMAKE_BINARY_DIR}/bin/"
)

################################################################################
add_subdirectory(SOAReplication)
add_module_executable(
	SOAReplication
		SOAReplication.cpp
)
set_target_properties(
	SOAReplication
PROPERTIES
RUNTIME_OUTPUT_DIRECTORY
	"${CMAKE_BINARY_DIR}/bin/"
)

################################################################################
add_subdirectory(TagATR)
add_module_executable(
	TagATR
		TagATR.cpp
)
set_target_properties(
	TagATR
PROPERTIES
RUNTIME_OUTPUT_DIRECTORY
	"${CMAKE_BINARY_DIR}/bin/"
)

################################################################################
add_subdirectory(TagReplication)
add_module_executable(
	TagReplication
		TagReplication.cpp
)
set_target_properties(
	TagReplication
PROPERTIES
RUNTIME_OUTPUT_DIRECTORY
	"${CMAKE_BINARY_DIR}/bin/"
)

################################################################################
force_import_std("${CMAKE_CURRENT_SOURCE_DIR}/Dependency/type_erasure/boost.hpp")
add_user_header_unit("${CMAKE_CURRENT_SOURCE_DIR}/Dependency/type_erasure/boost.hpp")

set_source_files_properties(
	TypeErasure.cpp
PROPERTIES
INCLUDE_DIRECTORIES
	"${CMAKE_CURRENT_SOURCE_DIR}/Dependency/type_erasure/"
)
add_module_executable(
	TypeErasure
		TypeErasure.cpp
)
set_target_properties(
	TypeErasure
PROPERTIES
RUNTIME_OUTPUT_DIRECTORY
	"${CMAKE_BINARY_DIR}/bin/"
)

################################################################################
add_module_executable(
	Variant
		Variant.cpp
)
set_target_properties(
	Variant
PROPERTIES
RUNTIME_OUTPUT_DIRECTORY
	"${CMAKE_BINARY_DIR}/bin/"
)

################################################################################
add_subdirectory(Virtual)
add_module_executable(
	Virtual
		Virtual.cpp
)
set_target_properties(
	Virtual
PROPERTIES
RUNTIME_OUTPUT_DIRECTORY
	"${CMAKE_BINARY_DIR}/bin/"
)

################################################################################
add_module_executable(
	Visitor
		Visitor.cpp
)
set_target_properties(
	Visitor
PROPERTIES
RUNTIME_OUTPUT_DIRECTORY
	"${CMAKE_BINARY_DIR}/bin/"
)
