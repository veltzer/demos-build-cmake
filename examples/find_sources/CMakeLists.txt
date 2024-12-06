# you get a warning without this line
cmake_minimum_required(VERSION "3.25.1")

# putting this include statement at the end of the CMakeLists.txt file does not work
include(../../include/all_include.cmake)

get_filename_component(CURRENT_FOLDER_NAME ${CMAKE_CURRENT_SOURCE_DIR} NAME)
project(${CURRENT_FOLDER_NAME}) # This is a comment in CMake

# run the file function and it's sub function GLOB which
# scans, non recursivly a folder or list of folder.
# by default the current one is scanned.
# You can pass a list of directories if you want, see the docs for more.
# You can pass more than one glob expression if you want.
file(GLOB source_list "*.cc")
message("the list is ${source_list}")

# this line adds a binary, any number of sources can be listed here
add_executable("find_sources.elf" ${source_list})
