# you get a warning without this line
cmake_minimum_required(VERSION "3.25.1")

# putting this include statement at the end of the CMakeLists.txt file does not work
include(../../include/all_include.cmake)

get_filename_component(CURRENT_FOLDER_NAME ${CMAKE_CURRENT_SOURCE_DIR} NAME)
project(${CURRENT_FOLDER_NAME}) # This is a comment in CMake

add_library("helloz" SHARED helloz.cc)

# one way
# target_link_libraries("helloz" PRIVATE "z")

# second way
# find_package(ZLIB 1.2.11 REQUIRED)
# target_link_libraries("helloz" PRIVATE ZLIB::ZLIB)

# third way
find_library(ZLIB_STATIC libz.a REQUIRED)
target_link_libraries("helloz" PRIVATE ${ZLIB_STATIC})
