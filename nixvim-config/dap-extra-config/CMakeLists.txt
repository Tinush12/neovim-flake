# Minimum CMake version
cmake_minimum_required(VERSION 3.10)

# Project name
project(HelloWorld)

# Generate compile_commands.json
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Specify C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Force using Clang compiler
set(CMAKE_C_COMPILER clang)
set(CMAKE_CXX_COMPILER clang++)

# Set build type to Debug
set(CMAKE_BUILD_TYPE Debug)

# Add the specific debug flags that worked
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -g3 -gdwarf-4 -fstandalone-debug -O0")

# Create executable
add_executable(hello_world main.cpp)
