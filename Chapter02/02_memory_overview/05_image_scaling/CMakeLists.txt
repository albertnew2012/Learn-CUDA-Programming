cmake_minimum_required(VERSION 3.8 FATAL_ERROR)
project(cuda_hello_world LANGUAGES CXX CUDA)

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Find CUDA package
find_package(CUDA REQUIRED)

# Include directories for CUDA
include_directories(${CUDA_INCLUDE_DIRS})

# Add the executable
add_executable(image_scaling image_scaling.cu)

# Specify link libraries
target_link_libraries(image_scaling ${CUDA_LIBRARIES})