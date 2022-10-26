find_path(POLYMORPHIC_INCLUDE_PATH "polymorphic.hpp" PATHS "${PROJECT_SOURCE_DIR}/../cpp-from-the-sky-down/metaprogrammed_polymorphism/" REQUIRED DOC "Path for polymorphic includes")

add_user_header_unit(
	"${POLYMORPHIC_INCLUDE_PATH}/polymorphic.hpp"
)

set_source_files_properties(
	Library.hpp
PROPERTIES
INCLUDE_DIRECTORIES
	"${POLYMORPHIC_INCLUDE_PATH}"
)

add_module(
	Library.hpp
)

add_module(
	Polymorphic.hpp
)

add_module_executable(
	evaluation_polymorphic
		Main.cpp
)
