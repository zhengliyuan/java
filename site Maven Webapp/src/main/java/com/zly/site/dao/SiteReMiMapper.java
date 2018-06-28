package com.zly.site.dao;

import com.zly.site.model.SiteReMi;

public interface SiteReMiMapper {
    int insert(SiteReMi record);

    int insertSelective(SiteReMi record);
}