set(CMAKE_CXXModule_COMPILER
    "${CMAKE_CXX_COMPILER}"
)

configure_file(
    ${CMAKE_CURRENT_LIST_DIR}/CMakeCXXModuleCompiler.cmake.in
    ${CMAKE_PLATFORM_INFO_DIR}/CMakeCXXModuleCompiler.cmake
)
