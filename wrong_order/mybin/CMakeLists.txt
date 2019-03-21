# Add executable called "mybin" that is built from the source file "mybin.cc"
add_executable (mybin mybin)

# Link the executable to the mylib library. Since the mylib has
# public include directories we will use those link directories when building
# mybin
target_link_libraries (mybin LINK_PUBLIC mylibfoo)
