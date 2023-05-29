set_source_files_properties(
	TypeErasure.cpp
PROPERTIES
INCLUDE_DIRECTORIES
	"${CMAKE_CURRENT_SOURCE_DIR}/../Dependency/type_erasure/"
)

add_module(TypeErasure.cpp)
