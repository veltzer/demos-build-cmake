cmake_minimum_required(VERSION "3.25.1")
project("helloz")
add_executable("helloz.elf" helloz.cc)
target_link_libraries("helloz.elf" PUBLIC "z")
