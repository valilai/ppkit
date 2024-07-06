# PrestoProgramingKit (ppkit)
This is a programming kit that provides an all-in-one solution for creating modern C and C++ applications (#NoNeedRorRust). If you're looking for a simple and easy-to-use cmd tool with integration as an Nvim plugin, you've come to the right place! Yes, there are certainly better tools that are much more modular, but I think this tool can be very useful due to its easy to use design which is very much inspired by cargo, zig, go, gradle etc. The C/Cpp ecosystem lacks an all-in-one pocket knife like build automation tool, so let's change that!

> ### Disclaimer 
> Devolping good software is like composing a symphony. To truly create beautiful music you have to know your instruments inside out. Part of a software developer's instruments are the software building tools or IDE's. The <span style="color:red;">**ppkit**</span> or <span style="color:red;">**pkit**</span> project is primarily created for me to learn how these tools work. 
>I know it's not magic, even though it looks like it is, so I decided to really dive deep into it and develop a tool for myself that would both teach me all the magic and make creating good C and Cpp applications easier and a joy. It is designed to be modular and flexible so that it grows with me and the challenges I face during my development career. I know it's not the best, maybe even the worst tool out there, but it's **mine!** Feel free to use it too.<br/>

Translated with DeepL.com (free version)

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
