# putting this include statement at the end of the CMakeLists.txt file does not work
include(../../include/all_include.cmake)

project("wrong_order")
# Recurse into the "mybin" and "mylib" subdirectories.
# We state the folders at the wrong order ON PURPOSE.
# This is to show that CMake has no issues with that.
add_subdirectory("mylib")
add_subdirectory("mybin")

