cmake_minimum_required(VERSION 3.18)
project ( RectIntersection VERSION 1.0 LANGUAGES CXX )

# Currently CMake (since 2.8.5) supports generation of compilation databases
# for Unix Makefile builds (Ninja builds in the works) with the option
# CMAKE_EXPORT_COMPILE_COMMANDS.
set(CMAKE_EXPORT_COMPILE_COMMANDS 1)

#=== App target ===
set( APP_NAME "program" )
add_executable( ${APP_NAME} src/main.cpp)
set_target_properties( ${APP_NAME} PROPERTIES CXX_STANDARD 17 )

#=== Testing by comparing OUTPUTs
add_custom_target(
    verify
    COMMAND python3 ${CMAKE_SOURCE_DIR}/scripts/verify-inputs.py ./${APP_NAME}
    DEPENDS ${APP_NAME}
)
