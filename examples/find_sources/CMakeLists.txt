cmake_minimum_required(VERSION "3.25.1")
project("find_sources")

# run the file function and it's sub function GLOB which
# scans, non recursivly a folder or list of folder.
# by default the current one is scanned.
# You can pass a list of directories if you want, see the docs for more.
# You can pass more than one glob expression if you want.
file(GLOB source_list "*.cc")
message("the list is ${source_list}")

# this line adds a binary, any number of sources can be listed here
add_executable("hello.elf" ${source_list})
