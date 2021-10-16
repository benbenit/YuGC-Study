//
// Created by 章先生 on 2020-03-09.
//

#include "../include/common.h"
#include "../include/memory_cell.h"

MemoryCell::MemoryCell(uint start, uint size): m_start(start), m_size(size)
{
    m_end = m_start + m_size;
}

MemoryCell::~MemoryCell()
{
    INFO_PRINT("[调用析构函数%s]释放资源\n", __func__);
}

uint MemoryCell::get_start()
{
    return m_start;
}

MemoryCell *MemoryCell::set_start(uint val)
{
    m_start = val;

    return this;
}

uint MemoryCell::get_end()
{
    return m_end;
}

MemoryCell *MemoryCell::set_end(uint val)
{
    m_end = val;

    return this;
}

uint MemoryCell::get_size()
{
    return m_size;
}

MemoryCell *MemoryCell::set_size(uint val)
{
    m_size = val;

    return this;
}

MemoryCell *MemoryCell::inc_start(uint step)
{
    m_start += step;

    if (m_start > m_end) {
        ERROR_PRINT("cell end overflow\n");

        exit(1);
    }

    return this;
}

MemoryCell *MemoryCell::desc_start(uint step)
{
    m_end -= step;

    if (m_end < 0) {
        ERROR_PRINT("cell start overflow\n");

        exit(1);
    }

    return this;
}

MemoryCell *MemoryCell::inc_size(uint step)
{
    m_size += step;

    return this;
}

MemoryCell *MemoryCell::desc_size(uint step)
{
    m_size -= step;

    if (m_size < 0) {
        ERROR_PRINT("cell size overflow\n");

        exit(1);
    }

    return this;
}

//======
void MemoryCell::to_string()
{
    PRINT("[Cell信息]start=%d, end=%d, size=%d\n", m_start, m_end, m_size);
}

void MemoryCell::to_string(char *msg)
{
    PRINT("[Cell信息]%s:start=%d, end=%d, size=%d\n", msg, m_start, m_end, m_size);
}

