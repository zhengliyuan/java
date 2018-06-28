package com.zly.site.dao;

import com.zly.site.model.PostEmail;

public interface PostEmailMapper {
    int insert(PostEmail record);

    int insertSelective(PostEmail record);
}