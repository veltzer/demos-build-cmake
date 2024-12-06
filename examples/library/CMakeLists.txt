# you get a warning without this line
cmake_minimum_required(VERSION "3.25.1")

# putting this include statement at the end of the CMakeLists.txt file does not work
include(../../include/all_include.cmake)

get_filename_component(CURRENT_FOLDER_NAME ${CMAKE_CURRENT_SOURCE_DIR} NAME)
project(${CURRENT_FOLDER_NAME}) # This is a comment in CMake

# You cannot call two targets with the same name since then how could
# you refer to each of them later on in the CMakeLists.txt file?
# So we name the libraries HelloDynamic and HelloStatic.
# But then we don't really want the names of the generated files
# to be different do we?
# That's why we use the 'set_target_properties' feature.

# this line adds a static library, any number of sources can be listed here
add_library("HelloDynamic" SHARED hello.cc)
add_library("HelloStatic" STATIC hello.cc)
# both libraries should be called "hello"
set_target_properties("HelloDynamic" PROPERTIES OUTPUT_NAME "hello")
set_target_properties("HelloStatic" PROPERTIES OUTPUT_NAME "hello")
