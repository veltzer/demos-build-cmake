# Create a library called "mylib" which includes the source file "mylib.cc".
# The extension is already found. Any number of sources could be listed here.
add_library("wo_mylib" SHARED mylib.cc)

# Make sure the compiler can find include files for our Hello library
# when other libraries or executables link to Hello
target_include_directories("wo_mylib" PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
