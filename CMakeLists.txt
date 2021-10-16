cmake_minimum_required(VERSION 3.14)
project(YuGC)

set(CMAKE_CXX_STANDARD 14)

add_executable(YuGC main.cpp src/memory_pool.cpp include/memory_pool.h src/memory_chunk.cpp include/memory_chunk.h include/common.h src/memory_cell.cpp include/memory_cell.h)