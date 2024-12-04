cmake_minimum_required(VERSION "3.25.1")
# turn off rpath which is default in cmake (ugggggrrrr!)
set(CMAKE_SKIP_RPATH TRUE)
project("wrong_order")
# Recurse into the "mybin" and "mylib" subdirectories.
# We state the folders at the wrong order ON PURPOSE.
# This is to show that CMake has no issues with that.
add_subdirectory("mylib")
add_subdirectory("mybin")
