# PrestoProgramingKit (ppkit)
This is a programming kit that offers an all-in-one solution for building modern C and C++ applications. #NoNeedRorRust<br/>

> ### Disclaimer 
> Devolping good software is like composing a symphony. To truly create beautiful music you have to know your instruments inside out. Part of a software developer's instruments are the software building tools or IDE's. The <font color="red">**ppkit**</font> or <font color="red">**pkit**</font> project is primarily created for me to learn how these tools work. I know it's not magic even if it looks like that, so I decided to really dive deep into it and create a tool for me that on the one hand teaches me how these tools works and on the other hand simplifies creating good C and Cpp applications and make it a joy. It's designed to be modular and flexible so it grows with me and the challenges I am facing during my devolpment carrier.<br/>
---

Pkit is designed 
It's completely written in Lua to be a nvim-plugin (pkit) and also a commandline-tool (ppkit).<br/>
It could therefore also be integrated in other IDE's (CLion, vscode, Eclipse) but because it's my private project currently only nvim and linux debian is supported.

OpenSource tools:<br/> 
- Ninja: building the applications
- CMake: generating the Ninja files
- Conan: package manager
- pkit: own (nvim) core engine for managing the project
- cppcheck: detecting memory leaks, invalid pointer usage, buffer overflows, etc.
- Clang static analyzer: finding bugs
- Clang (LLVM): compiler system

## Development
This is a WIP and currently before alpha-1.0 so don't expect anything to work!

## Installation
WIP
