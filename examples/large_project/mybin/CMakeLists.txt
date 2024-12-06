# Add executable called "lp_mybin" that is built from the source file "mybin.cc"
add_executable(lp_mybin mybin.cc)

# Link the executable to the mylib library. Since the mylib has
# public include directories we will use those link directories when building
# mybin
target_link_libraries(lp_mybin LINK_PUBLIC lp_mylib)
