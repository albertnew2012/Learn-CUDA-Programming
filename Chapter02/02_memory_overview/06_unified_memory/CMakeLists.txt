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
add_executable(unified_memory_64align unified_memory_64align.cu)
# Specify link libraries
target_link_libraries(unified_memory_64align ${CUDA_LIBRARIES})

# Add the executable
add_executable(unified_memory_initialized unified_memory_initialized.cu)
# Specify link libraries
target_link_libraries(unified_memory_initialized ${CUDA_LIBRARIES})


# Add the executable
add_executable(unified_memory_prefetch unified_memory_prefetch.cu)
# Specify link libraries
target_link_libraries(unified_memory_prefetch ${CUDA_LIBRARIES})

# Add the executable
add_executable(unified_memory unified_memory.cu)
# Specify link libraries
target_link_libraries(unified_memory ${CUDA_LIBRARIES})