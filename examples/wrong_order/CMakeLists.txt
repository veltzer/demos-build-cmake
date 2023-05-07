# CMakeLists files in this project can
# refer to the root source directory of the project as ${HELLO_SOURCE_DIR} and
# to the root binary directory of the project as ${HELLO_BINARY_DIR}.
cmake_minimum_required(VERSION "3.10")
project("hello")

# Recurse into the "mybin" and "mylib" subdirectories.
# We state the folders at the wrong order ON PURPOSE.
# This is to show that CMake has no issues with that.
add_subdirectory("mybin")
add_subdirectory("mylib")
