# you get a warning without this line
cmake_minimum_required(VERSION "3.25.1")

# putting this include statement at the end of the CMakeLists.txt file does not work
include(../../include/all_include.cmake)

# you get a warning without this too
project("hello") # This is a comment in CMake
# this line adds a binary, any number of sources can be listed here
add_executable("hello.elf" "hello.cc")
