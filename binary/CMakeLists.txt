# you get a warning without this line
cmake_minimum_required(VERSION "3.25.1")
# you get a warning without this too
project("hello")
# this line adds a binary, any number of sources can be listed here
add_executable("hello.elf" "hello.cc")
