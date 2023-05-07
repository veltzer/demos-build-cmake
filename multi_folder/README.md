# Large project

* Create a multi folder solution for the following project:
* executables: bin1 bin2
* libraries: l1 l2 l3
* dependencies:
	bin1: l1
	bin2: l3
	l1: l2 l3
* make sure that every library has some h files and exports their
	path properly
* make sure that binaries or libraries that use other libraries
	actually make function calls to them.
* add compile flag -O3 -Werror to all code.
* add compile flag -Wuninitialized to l2
* add compile flag -Wconversion-null to l3 and all who depend on it.

References:
* git clone https://github.com/veltzer/demos-cmake.git
