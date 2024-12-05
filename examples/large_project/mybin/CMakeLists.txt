# putting this include statement at the end of the CMakeLists.txt file does not work
include(../../include/all_include.cmake)

# Add executable called "mybin" that is built from the source file "mybin.cc"
add_executable(mybin mybin.cc)

# Link the executable to the mylib library. Since the mylib has
# public include directories we will use those link directories when building
# mybin
target_link_libraries(mybin LINK_PUBLIC mylib)
