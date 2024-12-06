# you get a warning without this line
cmake_minimum_required(VERSION "3.25.1")

# putting this include statement at the end of the CMakeLists.txt file does not work
include(../../include/all_include.cmake)

project("large_project")
# Recurse into the "mylib" and "mybin" subdirectories. This does not actually
# cause another cmake executable to run. The same process will walk through
# the project's entire directory structure.
add_subdirectory(mylib)
add_subdirectory(mybin)
