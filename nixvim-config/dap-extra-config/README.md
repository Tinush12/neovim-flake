# DAP Config
In order to get the Debugger up and running there are two more files required.
First is the `.vscode/launch.json` that points to the binary from the source code.
Second is a modified `CMakeLists.txt` that add debug flags for the compiler.
This is required in order for break points and other features to work.

## Debug Flags for clang++
`-g3 -gdwarf-4 -fstandalone-debug -O0`
