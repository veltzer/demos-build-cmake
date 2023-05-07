# you get a warning without this line
cmake_minimum_required(VERSION 3.12)
# you get a warning without this too
project("hello")

# You cannot call two targets with the same name since then how could
# you refer to each of them later on in the CMakeLists.txt file?
# So we name the libraries HelloDynamic and HelloStatic.
# But then we don't really want the names of the generated files
# to be different do we?
# That's why we use the 'set_target_properties' feature.

# this line adds a static library, any number of sources can be listed here
add_library("HelloDynamic" "hello.cc")
set_target_properties(HelloDynamic PROPERTIES OUTPUT_NAME "hello")
# this line adds a shared library, any number of sources can be listed here
add_library(HelloStatic SHARED hello.cc)
set_target_properties(HelloStatic PROPERTIES OUTPUT_NAME "hello")
