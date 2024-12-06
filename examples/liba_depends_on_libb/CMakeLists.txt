# you get a warning without this line
cmake_minimum_required(VERSION "3.25.1")

# putting this include statement at the end of the CMakeLists.txt file does not work
include(../../include/all_include.cmake)

project("liba_depends_on_libb")
add_library("a" SHARED "a.cc")
add_library("b" SHARED "b.cc")
target_link_libraries("a" "b")
