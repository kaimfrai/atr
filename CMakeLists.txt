cmake_minimum_required(VERSION 3.0)

project(archetype)

add_executable(archetype main.cpp)

install(TARGETS archetype RUNTIME DESTINATION bin)
