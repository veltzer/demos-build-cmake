cmake_minimum_required(VERSION "3.10")
project("large_project")
# Recurse into the "mylib" and "mybin" subdirectories. This does not actually
# cause another cmake executable to run. The same process will walk through
# the project's entire directory structure.
add_subdirectory(mylib)
add_subdirectory(mybin)
