# you get a warning without this line
cmake_minimum_required(VERSION "3.25.1")
# putting this include statement at the end of the CMakeLists.txt file does not work
include(../../include/all_include.cmake)

project("bad_variable_name")
set(hell "World")
message(STATUS "Hello, ${hello}!")
