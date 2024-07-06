package = "ppkit"
version = "dev-1"
source = {
    url = "*** please add URL for source tarball, zip or repository here ***"
}
description = {
    summary = "PrestoProgrammingKit - Easy to use devolpment tool-kit for memory safe C/C++ applications. #NoNeedRorRust",
    detailed = [[
    This is a command-line tool that offers an all-in-one solution for building modern C and C++ applications.

    OpenSource tools: 
        -Ninja: building the applications
        -CMake: generating the Ninja files
        -Conan: package manager
        -pkit: own core engine for managing the project
        -cppcheck: detecting memory leaks, invalid pointer usage, buffer overflows, etc.
        -Clang static analyzer: finding bugs
        -Clang (LLVM): compiler system
    ]],
    homepage = "*** please enter a project homepage ***",
    maintainer = "Valentin Lairich <valentin.lairich@gmail.com>"
}
dependencies = {"lua >= 5.1, < 5.5", "penlight >= 1.9.0"}
supported_platforms = {"linux", "macosx", "windows"}
build = {
    type = "builtin",
    modules = {
        ["pkit"] = "src/init.lua",
        -- ["pkit"] = "src/pkit.lua",
        ["pkit.modules.parser"] = "src/modules/parser.lua",
        ["pkit.modules.ptree"] = "src/modules/ptree.lua"
    },
    install = {bin = {ppkit = "bin/ppkit"}}
}
