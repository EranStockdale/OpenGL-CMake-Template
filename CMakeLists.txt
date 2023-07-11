cmake_minimum_required(VERSION 3.0.0)
project(MathGL VERSION 0.1.0 LANGUAGES C CXX)

include(CTest)
enable_testing()

set( GLFW_BUILD_DOCS OFF CACHE BOOL  "GLFW lib only" )
set( GLFW_INSTALL OFF CACHE BOOL  "GLFW lib only" )

add_subdirectory( libraries/glfw )
add_subdirectory( libraries/glad )

add_executable(MathGL src/main.cpp)
target_link_libraries(MathGL glfw glad)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)