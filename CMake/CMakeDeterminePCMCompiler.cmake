set(CMAKE_PCM_COMPILER
    "${CMAKE_CXX_COMPILER}"
)

configure_file(
    ${CMAKE_CURRENT_LIST_DIR}/CMakePCMCompiler.cmake.in
    ${CMAKE_PLATFORM_INFO_DIR}/CMakePCMCompiler.cmake
)
