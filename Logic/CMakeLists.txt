add_custom_command(
OUTPUT
	${PREBUILT_MODULE_PATH}/Logic.pcm
COMMAND
	${CMAKE_CXX_COMPILER}
	${CXX_STANDARD_VERSION_FLAG}
	${CXX_STANDARD_LIBRARY_FLAG}
	${WARNING_FLAGS}
	${MODULE_FLAGS}
	-c ${CMAKE_CURRENT_SOURCE_DIR}/Module.cpp
	-Xclang -emit-module-interface
	-o ${PREBUILT_MODULE_PATH}/Logic.pcm
VERBATIM
MAIN_DEPENDENCY
	Module.cpp
DEPENDS
	TermTag.hpp
	Concepts.hpp
	Types.hpp

	Equivalence.hpp

	Substitute.hpp
	LiteralRedundancy.hpp
	ClauseRedundancy.hpp
	LiteralFilter.hpp
	ClauseFilter.hpp
	Simplifier.hpp

	Negation.hpp
	Disjunction.hpp
	Conjunction.hpp
COMMENT
	"Generating precompiled module Logic"
)

add_custom_target(
	Logic
DEPENDS
	${PREBUILT_MODULE_PATH}/Logic.pcm
)

add_subdirectory(
	Test
)
