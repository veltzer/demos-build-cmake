# configure only and generate files in the current folder (not good)
# cmake .
# configure only and generate files in the "build" folder, this is the old way
# cmake -B build
# configure only and say where the sources are, the new way
cmake -B build -S .
cmake --build build
# run make directly
# make
