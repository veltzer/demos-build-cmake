# you get a warning without this line
cmake_minimum_required(VERSION "3.25.1")

# putting this include statement at the end of the CMakeLists.txt file does not work
include(../../include/all_include.cmake)

project("helloz")
add_executable("helloz.elf" helloz.cc)
target_link_libraries("helloz.elf" PUBLIC "z")
