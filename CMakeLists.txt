# Minimum CMake version
cmake_minimum_required(VERSION 3.27)

# Project definition
project(CrossMake LANGUAGES CXX)

# Output directories
set(CMAKE_OUTPUT_DIR "${CMAKE_SOURCE_DIR}/out")

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_OUTPUT_DIR}/obj")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_OUTPUT_DIR}/bin")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_OUTPUT_DIR}/bin")

# Separate configurations
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_DEBUG   "${CMAKE_OUTPUT_DIR}/obj/Debug")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_RELEASE "${CMAKE_OUTPUT_DIR}/obj/Release")

set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_DEBUG   "${CMAKE_OUTPUT_DIR}/bin/Debug")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_RELEASE "${CMAKE_OUTPUT_DIR}/bin/Release")

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG   "${CMAKE_OUTPUT_DIR}/bin/Debug")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE "${CMAKE_OUTPUT_DIR}/bin/Release")

# Gather source files
file(GLOB_RECURSE
	PROJECT_SOURCE
    CONFIGURE_DEPENDS
    "source/*.cpp"
)

# Create executable
add_executable(${PROJECT_NAME} ${PROJECT_SOURCE})

# Include directory
target_include_directories(${PROJECT_NAME} PUBLIC "include")

# Set C++ standard
target_compile_features(${PROJECT_NAME} PRIVATE cxx_std_20)

# Add tests if needed.
# Example: add_subdirectory(tests) and create a test executable.

# Add vendor libraries if needed.
# Example: put dependencies in /vendor and link them with target_link_libraries().

# Add install rules if needed.
# Example: install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION bin).