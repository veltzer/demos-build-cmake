# putting this include statement at the end of the CMakeLists.txt file does not work
include(../../include/all_include.cmake)

project("message")
message(STATUS "Hello From CMake!")
