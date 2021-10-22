add_custom_target(
	Logic
COMMAND
	${CMAKE_CXX_COMPILER}
	-std=c++20
	${WARNING_FLAGS}
	${MODULE_FLAGS}
	-c ${CMAKE_CURRENT_SOURCE_DIR}/Module.cpp
	-Xclang -emit-module-interface
	-o ${PREBUILT_MODULE_PATH}/Logic.pcm
COMMENT
	"Generating precompiled module Logic"
)

#add_subdirectory(Test)
