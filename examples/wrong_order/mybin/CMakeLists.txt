# Add executable called "mybin" that is built from the source file "mybin.cc"
add_executable("wo_mybin" "mybin.cc")
# Link the executable to the mylib library.
target_link_libraries("wo_mybin" "wo_mylib")
target_include_directories(wo_mybin PUBLIC "../mylib")
