# you get a warning without this line
cmake_minimum_required(VERSION "3.25.1")
# you get a warning without this too
project("hello") # This is a comment in CMake
# this line adds a binary, any number of sources can be listed here
add_library("a" SHARED "a.cc")
add_library("b" SHARED "b.cc")
target_link_libraries("a" "b")
