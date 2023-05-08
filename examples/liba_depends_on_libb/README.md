This is an example of two libraries: a and b where a depends on b.
We create them both in dynamic fashion and you can see tha CMake did the right
thing if you do:
    $ ldd liba.so
after the build and see 'libb.so' as a dependency.
