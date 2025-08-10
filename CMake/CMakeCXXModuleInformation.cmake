set(CMAKE_CXXModule_FLAGS
    ${CMAKE_CXX_FLAGS}
)
set(CMAKE_CXXModule_SOURCE_FILE_EXTENSIONS
    .cpp
    .cppm
)
set(CMAKE_CXXModule_FLAGS
    ${CMAKE_CXX_FLAGS}
)
set(CMAKE_CXXModule_FLAGS_DEBUG
    "${CMAKE_CXX_FLAGS_DEBUG} ${CMAKE_CXX${CMAKE_CXX_STANDARD}_STANDARD_COMPILE_OPTION}"
)
set(CMAKE_CXXModule_FLAGS_MINSIZEREL
    "${CMAKE_CXX_FLAGS_MINSIZEREL} ${CMAKE_CXX${CMAKE_CXX_STANDARD}_STANDARD_COMPILE_OPTION}"
)
set(CMAKE_CXXModule_FLAGS_RELEASE
    "${CMAKE_CXX_FLAGS_RELEASE} ${CMAKE_CXX${CMAKE_CXX_STANDARD}_STANDARD_COMPILE_OPTION}"
)
set(CMAKE_CXXModule_FLAGS_RELWITHDEBINFO
    "${CMAKE_CXX_FLAGS_RELWITHDEBINFO} ${CMAKE_CXX${CMAKE_CXX_STANDARD}_STANDARD_COMPILE_OPTION}"
)

_cmake_common_language_platform_flags(
    CXXModule
)

if( FASTER_BUILD_SPEED
)
    # Compile from .cpp => .pcm => .o in one step
    # This prevents .pcm files being recompiled with each link step
    # However this prevents compile_commands.json from being readable by clangd
    set(CMAKE_CXXModule_IMPORT_EXTENSION
        .pcm
    )
    set(CMAKE_CXXModule_COMPILE_OPTIONS_EXPLICIT_LANGUAGE
    )
    set(CMAKE_CXXModule_COMPILE_OBJECT
        "<CMAKE_CXXModule_COMPILER> <DEFINES> <INCLUDES> -xc++-module <FLAGS> ${CMAKE_CXX_MODULE_BMI_ONLY_FLAG} <SOURCE> --output <OBJECT>${CMAKE_CXXModule_IMPORT_EXTENSION} && <CMAKE_CXXModule_COMPILER> <FLAGS> --compile <OBJECT>${CMAKE_CXXModule_IMPORT_EXTENSION} --output <OBJECT>"
    )
    set(CMAKE_CXXModule_OUTPUT_EXTENSION
        "${CMAKE_CXX_OUTPUT_EXTENSION}"
    )
else(
)
    # This is a bit slower to compiler but generated the correct compile_commands.json for clangd
    set(CMAKE_CXXModule_IMPORT_EXTENSION
    )
    set(CMAKE_CXXModule_COMPILE_OPTIONS_EXPLICIT_LANGUAGE
        "-xc++-module"
    )
    set(CMAKE_CXXModule_COMPILE_OBJECT
        "<CMAKE_CXXModule_COMPILER> <DEFINES> <INCLUDES> <FLAGS> ${CMAKE_CXX_MODULE_BMI_ONLY_FLAG} <SOURCE> --output <OBJECT>"
    )
    set(CMAKE_CXXModule_OUTPUT_EXTENSION
        .pcm
    )
endif()
set(CMAKE_CXXModule_INFORMATION_LOADED
    1
)
