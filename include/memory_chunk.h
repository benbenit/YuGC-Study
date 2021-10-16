//
// Created by 章先生 on 2020-03-08.
//

#pragma once

#include "common.h"
#include "memory_cell.h"
#include <list>

using namespace std;

class MemoryChunk {

private:
    /**
     * 创建Chunk的文件名
     */
    char *m_filename;

    /**
     * 创建Chunk的文件位置
     */
    uint m_line;

    /**
     * 该Chunk的内存大小
     */
    uint m_size;

    /**
     * 以多少字节对齐
     */
    uint m_align_size;

    /**
     * 该Chunk包含多少Cell
     */
    uint m_cell_num;

    /**
     * 被用了的Chunk数量
     */
    uint m_used_cell_num;

    /**
     * 需要释放内存的数据
     */
private:
    /**
     * 存储数据的地方
     */
    pvoid m_data;

    list<MemoryCell *> m_available_table;
    list<MemoryCell *> m_used_table;

private:
    pvoid real_malloc(MemoryCell *cell, uint cell_num);

public:
    MemoryChunk(uint size, char *filename, uint line);
    ~MemoryChunk();

public:
    char *get_filename();
    uint get_line();
    uint get_size();
    pvoid get_data();
    uint get_align_size();

    MemoryChunk *inc_used_cell_num(uint step);
    MemoryChunk *desc_used_cell_num(uint step);

public:
    pvoid malloc(uint size);

    void free_available_table();
    void free_used_table();


public:
    void to_string();

    void print_available_table();
    void print_used_table();
    void print_all_table();

};
