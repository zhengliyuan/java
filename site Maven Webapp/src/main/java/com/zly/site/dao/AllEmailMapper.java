package com.zly.site.dao;

import com.zly.site.model.AllEmail;

public interface AllEmailMapper {
    int insert(AllEmail record);

    int insertSelective(AllEmail record);
}