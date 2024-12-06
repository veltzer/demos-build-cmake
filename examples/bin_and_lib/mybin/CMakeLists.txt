# Add executable called "mybin" that is built from the source file "mybin.cc"
add_executable("mybin" "mybin.cc")
# Link the executable to the mylib library.
target_link_libraries("mybin" "mylib")
target_include_directories(mybin PUBLIC "../mylib")
