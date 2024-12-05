# putting this include statement at the end of the CMakeLists.txt file does not work
include(../../include/all_include.cmake)

project("bad_variable_name")
set(hell "World")
message(STATUS "Hello, ${hello}!")
