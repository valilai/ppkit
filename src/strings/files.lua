local files = {}

files.c_header = [[
/*
 * File: <filename>.h
 * Author: <author>
 * Created: <date>
 *
 * Description: <description>
 */

#ifndef <HEADER_GUARD>
#define <HEADER_GUARD>

#ifdef __cplusplus
extern "C" {
#endif

// Function declarations
<test>

#ifdef __cplusplus
}
#endif

#endif // <HEADER_GUARD>

]]

files.c_gitignore = [[
# Ignore build directories
build/
bin/

# Ignore external libraries
libs/

# Ignore common temporary files
*.tmp
*.log
*.swp
*~

# Ignore OS-specific files
.DS_Store
Thumbs.db

# Ignore CMake generated files
CMakeFiles/
CMakeCache.txt
cmake_install.cmake
Makefile

# Ignore compiled object files
*.o
*.a
*.so
*.exe

# Ignore editor-specific files
.idea/
.vscode/
*.iml
*.code-workspace
.*.vim
]]

files.licence_Apache2 = [[
** WIP **
]]

files.licence_MIT = [[
** WIP **
]]

files.licence_GPL3 = [[
** WIP **
]]
return files
