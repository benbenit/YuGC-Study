//
// Created by 章先生 on 2020-03-08.
//

#include "../include/common.h"
#include "../include/memory_chunk.h"

MemoryChunk::MemoryChunk(uint size, char *filename, uint line): m_size(size), m_filename(filename), m_line(line)
{
    m_align_size = ALIGN_SIZE;
    m_cell_num = ((size - 1) / m_align_size) + 1;
    m_size = m_cell_num * m_align_size;

    this->m_data = calloc(m_size, sizeof(byte));
    if (NULL == this->m_data) {
        ERROR_PRINT("分配内存失败\n");

        exit(1);
    }

    m_used_cell_num = 0;

    m_available_table.push_front(new MemoryCell(0, m_cell_num));

    print_available_table();
}

MemoryChunk::~MemoryChunk()
{
    PRINT("[调用析构函数%s]释放资源\n", __func__);

    if (m_data) {
        PRINT("\t 释放资源, 申请内存位置( %s:%d )，内存大小:%d 字节\n", m_filename, m_line, m_size);

        free(m_data);
    }

    free_available_table();

    free_used_table();
}

//=====
pvoid MemoryChunk::real_malloc(MemoryCell *cell, uint cell_num)
{
    /* 计算出内存地址 */
    pvoid ret = (pvoid)((ulong)get_data() + cell->get_start() * get_align_size());

    INFO_PRINT("[真正分配内存]Data起始地址=%X, cell_start=%d, ret=%X\n", get_data(), cell->get_start(), ret);

    /**
     * 创建used cell并加入list
     */
    m_used_table.push_front(new MemoryCell(cell->get_start(), cell_num));

    /**
     * 处理Cell信息
     */
    cell->inc_start(cell_num)->desc_size(cell_num);

    /**
     * 更新used_cell_num
     */
    inc_used_cell_num(cell_num);

    /**
     * 如果Chunk用光了，就清空available_table
     */
    if (m_cell_num == m_used_cell_num) {
        free_available_table();
    }

    return ret;
}

//=====
pvoid MemoryChunk::get_data()
{
    return this->m_data;
}

char *MemoryChunk::get_filename()
{
    return m_filename;
}

uint MemoryChunk::get_line()
{
    return m_line;
}

uint MemoryChunk::get_size()
{
    return m_size;
}

uint MemoryChunk::get_align_size()
{
    return m_align_size;
}

MemoryChunk *MemoryChunk::inc_used_cell_num(uint step)
{
    m_used_cell_num += step;

    if (m_used_cell_num > m_cell_num) {
        ERROR_PRINT("cell of chunk size overflow\n");

        exit(1);
    }

    return this;
}

MemoryChunk *MemoryChunk::desc_used_cell_num(uint step)
{
    m_used_cell_num -= step;

    if (m_used_cell_num < 0) {
        ERROR_PRINT("cell of chunk size overflow\n");

        exit(1);
    }

    return this;
}

//=====
pvoid MemoryChunk::malloc(uint size)
{
    pvoid ret = NULL;

    if (0 == size) {
        ERROR_PRINT("申请的内存大小不得等于0\n");

        exit(1);
    }

    uint cell_num = ((size - 1) / m_align_size) + 1;
    if (cell_num > m_cell_num) {
        ERROR_PRINT("需要的内存(%d字节)超过最大可用内存(%d字节)\n", size, m_size);

        exit(1);
    }

    /**
     * 遍历available_table查找满足条件的MemoryCell
     */
    list<MemoryCell *>::iterator available_iterator;
    for (available_iterator = m_available_table.begin(); available_iterator != m_available_table.end(); available_iterator++) {
        MemoryCell *cell = *available_iterator;

        if (cell->get_size() >= cell_num) {
            cell->to_string("找到了满足条件的Cell");

            ret = real_malloc(cell, cell_num);
        }
    }

    if (NULL == ret) {
        ERROR_PRINT("没有满足条件的Chunk，无法分成内存，程序退出\n");

        exit(1);
    }

    print_all_table();

    return ret;
}

void MemoryChunk::free_available_table()
{
    PRINT("[释放available_table]开始\n");

    list<MemoryCell *>::iterator tmp;
    for (tmp = m_available_table.begin(); tmp != m_available_table.end(); tmp++) {
        delete (*tmp);
    }

    m_available_table.clear();
}

void MemoryChunk::free_used_table()
{
    PRINT("[释放used_table]开始\n");

    list<MemoryCell *>::iterator tmp;
    for (tmp = m_used_table.begin(); tmp != m_used_table.end(); tmp++) {
        delete (*tmp);
    }

    m_available_table.clear();
}

//=====
void MemoryChunk::to_string() {
    PRINT("占 %d 个Cell，占 %d 字节\n", m_cell_num, m_size);
}

void MemoryChunk::print_available_table()
{
    PRINT("[打印available_table]开始\n");

    list<MemoryCell *>::iterator tmp;

    for (tmp = m_available_table.begin(); tmp != m_available_table.end(); tmp++) {
        PRINT("\t cell_start=%d, cell_end=%d, cell_size=%d\n", (*tmp)->get_start(), (*tmp)->get_end(), (*tmp)->get_size());
    }

    PRINT("[打印available_table]结束\n");
}

void MemoryChunk::print_used_table()
{
    PRINT("[打印used_table]开始\n");

    list<MemoryCell *>::iterator tmp;

    for (tmp = m_used_table.begin(); tmp != m_used_table.end(); tmp++) {
        PRINT("\t cell_start=%d, cell_end=%d, cell_size=%d\n", (*tmp)->get_start(), (*tmp)->get_end(), (*tmp)->get_size());
    }

    PRINT("[打印used_table]结束\n");
}

void MemoryChunk::print_all_table()
{
    print_available_table();

    print_used_table();
}