#PrestoProgramingKit (ppkit)
This is a programming kit that offers an all-in-one solution for building modern C and C++ applications. #NoNeedRorRust <br/>
It's completely written in Lua to be a nvim-plugin (pkit) and also a commandline-tool (ppkit). It could be also integrated in modern IDE's.<br/>
Because it's my private project currently only nvim and linux debian is supported.

OpenSource tools: 
-Ninja: building the applications
-CMake: generating the Ninja files
-Conan: package manager
-pkit: own core engine for managing the project
-cppcheck: detecting memory leaks, invalid pointer usage, buffer overflows, etc.
-Clang static analyzer: finding bugs
-Clang (LLVM): compiler system
