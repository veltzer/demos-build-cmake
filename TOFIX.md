# TOFIX

Findings from a code scan on 2026-10-04.

## Medium

- `examples/simple/hello/hello:1` - a compiled x86-64 ELF executable (in-source build output) is tracked in git; `git rm --cached` it and let `examples/.gitignore` cover nested build outputs.
- `examples/bin_and_lib/mybin/mybin:1` - same: a compiled ELF executable is tracked; remove it from the index.
- `examples/.gitignore:1` - patterns are anchored one level deep (`*/CMakeCache.txt`, `*/Makefile`, `*/build/`), so in-source builds of nested subprojects (`simple/hello`, `bin_and_lib/mybin`) are not ignored, which is how the binaries above got committed; use `**/` patterns or ignore the produced executables.
- `examples/verbose/README.md:6` - says "Look at the build.sh script and the --verbose parameter there", but there is no build.sh in `examples/verbose/` and `scripts/build.sh:10` runs `cmake --build build` without `--verbose`; add the verbose invocation the README describes or fix the text.

## Low

- `examples/empty/README.md:5` - says "The CMakeLists.txt file is empty", but `examples/empty/CMakeLists.txt` has `cmake_minimum_required`, an `include` and `project`; reword (e.g. "defines no targets").
- `examples/bin_and_lib/CMakeLists.txt:10` - comment says the folders are stated "at the wrong order ON PURPOSE", but `mylib` is added before `mybin` (the correct order); copy-paste from `wrong_order`, drop it.
- `examples/simple/CMakeLists.txt:9` - comment about recursing into "mybin" and "mylib" in the wrong order is a copy-paste leftover; only `hello` is added.
- `examples/simple/hello/CMakeLists.txt:1` - comment says executable "mybin" from "mybin.cc" but builds `hello` from `hello.cc`; and `examples/simple/hello/hello.cc:5` prints "Hello from mybin".
- `exercises/multi_folder/README.md:20` - links `https://github.com/veltzer/demos-cmake.git`, the repo's old name (GitHub now redirects to `demos-build-cmake`); update the URL. The heading on line 1 ("Large project") also does not match the exercise name.
