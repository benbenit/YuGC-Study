//
// Created by 章先生 on 2020-03-09.
//

#pragma once

#include "common.h"

using namespace std;

class MemoryCell {
private:
    uint m_start;
    uint m_end;

    /**
     *  Cell的数量，每个Cell占8字节
     */
    uint m_size;

public:
    MemoryCell(uint start, uint size);
    ~MemoryCell();

public:
    uint get_start();
    MemoryCell *set_start(uint val);

    uint get_end();
    MemoryCell *set_end(uint val);

    uint get_size();
    MemoryCell *set_size(uint val);

    /**
     * m_start已step为步长递增
     * @param step
     * @return
     */
    MemoryCell *inc_start(uint step);
    MemoryCell *desc_start(uint step);

    MemoryCell *inc_size(uint step);
    MemoryCell *desc_size(uint step);


public:
    void to_string();
    void to_string(char *msg);


};
