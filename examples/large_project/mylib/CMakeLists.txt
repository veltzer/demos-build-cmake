# Create a library called "lp_mylib" which includes the source file "mylib.cc".
# The extension is already found. Any number of sources could be listed here.
add_library(lp_mylib SHARED mylib.cc)

# Make sure the compiler can find include files for our Hello library
# when other libraries or executables link to Hello
target_include_directories(lp_mylib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
