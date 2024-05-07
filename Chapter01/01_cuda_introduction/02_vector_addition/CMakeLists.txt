cmake_minimum_required(VERSION 3.8 FATAL_ERROR)
project(cuda_hello_world LANGUAGES CXX CUDA)

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Find CUDA package
find_package(CUDA REQUIRED)

# Include directories for CUDA
include_directories(${CUDA_INCLUDE_DIRS})

# # Add the executable
# add_executable(cuda_hello_world hello_world.cu)
# # Specify link libraries
# target_link_libraries(cuda_hello_world ${CUDA_LIBRARIES})

# Add the executable
add_executable(vector_addition_gpu_block_only vector_addition_gpu_block_only.cu)
# Specify link libraries
target_link_libraries(vector_addition_gpu_block_only ${CUDA_LIBRARIES})


# Add the executable
add_executable(vector_addition_gpu_thread_block vector_addition_gpu_thread_block.cu)
# Specify link libraries
target_link_libraries(vector_addition_gpu_thread_block ${CUDA_LIBRARIES})

# Add the executable
add_executable(vector_addition_gpu_thread_only vector_addition_gpu_thread_only.cu)
# Specify link libraries
target_link_libraries(vector_addition_gpu_thread_only ${CUDA_LIBRARIES})


# Add the executable
add_executable(vector_addition vector_addition.cu)
# Specify link libraries
target_link_libraries(vector_addition ${CUDA_LIBRARIES})
