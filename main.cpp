#include <iostream>

#include "include/memory_pool.h"

int main() {
    MemoryPool *mem_pool = new MemoryPool();

    MemoryChunk *mem_chunk = mem_pool->new_chunk(78);

    mem_chunk->malloc(8);
    mem_chunk->malloc(16);
    mem_chunk->malloc(32);
    mem_chunk->malloc(24);

    // 模拟Chunk的内存分光了
//    mem_chunk->malloc(8);

    mem_pool->print_chunks();

    delete mem_pool;

    return 0;
}