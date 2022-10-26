set_source_files_properties(
	boost.hpp
PROPERTIES
COMPILE_OPTIONS
	-fmodule-file=${PREBUILT_MODULE_PATH}/algorithm${MODULE_INTERFACE_EXTENSION}
OBJECT_DEPENDS
	${PREBUILT_MODULE_PATH}/algorithm${MODULE_INTERFACE_EXTENSION}
)

add_user_header_unit(boost.hpp)

add_module_executable(
	evaluation_type_erasure
		Main.cpp
)
