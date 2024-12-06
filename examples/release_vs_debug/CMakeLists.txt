# you get a warning without this line
cmake_minimum_required(VERSION "3.25.1")

# putting this include statement at the end of the CMakeLists.txt file does not work
include(../../include/all_include.cmake)

project("release_vs_debug")
if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release)
endif()
add_executable("hello.elf" "hello.cc")
