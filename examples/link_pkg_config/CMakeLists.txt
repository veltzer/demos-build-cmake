# you get a warning without this line
cmake_minimum_required(VERSION "3.25.1")

# putting this include statement at the end of the CMakeLists.txt file does not work
include(../../include/all_include.cmake)

get_filename_component(CURRENT_FOLDER_NAME ${CMAKE_CURRENT_SOURCE_DIR} NAME)
project(${CURRENT_FOLDER_NAME}) # This is a comment in CMake

find_package(PkgConfig REQUIRED)
pkg_check_modules(GTK3 REQUIRED gtk+-3.0)

add_executable("hellogtk.elf" hellogtk.cc)

target_include_directories(hellogtk.elf PUBLIC ${GTK3_INCLUDE_DIRS})
target_link_libraries("hellogtk.elf" ${GTK3_LIBRARIES})
