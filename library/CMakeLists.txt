# you get a warning without this line
cmake_minimum_required(VERSION 3.12)
# this line adds a static library
add_library(HelloDynamic hello.cc)
set_target_properties(HelloDynamic PROPERTIES OUTPUT_NAME "hello")
# this line adds a shared library
add_library(HelloStatic SHARED hello.cc)
set_target_properties(HelloStatic PROPERTIES OUTPUT_NAME "hello")
