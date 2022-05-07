How to run the code in this project.

Running LLFI:
Once you have a .ll file, you can run LLFI (you will need to install it first) using the following commands:
1. instrument xxxxx.ll
2. profile ./llfi/xxxxx-profiling.exe
3. injectfault ./llfi/xxxxx-faultinjection.exe
4. python3 measure.py

Compiling C with Clang:
1. Use Clang version 3.4
2. clang -S -emit-llvm xxxxx.c
3. produces xxxxx.ll

Compiling C++ with Clang++:
1. Use Clang++ version 3.4
2. clang++ -S -emit-llvm xxxxx.cpp
3. produces xxxxx.ll

Compiling C with cbe:
1. Compiled binaries for cbe are included with the project
2. Use Clang version 8
3. clang -S -emit-llvm xxxxx.c
4. llvm-cbe xxxxx.ll
5. Switch to Clang version 3.4
6. clang -S -emit-llvm xxxxx.cbe.c
7. produces xxxxx.cbe.ll

Note that the following don't work with LLFI

Compiling Haskell:
1. install GHC & a corresponding LLVM version according to this chart (https://gitlab.haskell.org/ghc/ghc/-/wikis/commentary/compiler/backends/llvm/installing)
2. ghc -fllvm -keep-llvm-files xxxxx.hs
3. produces xxxxx.ll

Compiling Rust:
1. Install Rust
2. rustc emit=llvm-bc xxxxx.rs
3. produces xxxxx.ll
