package com.zly.site.dao;

import com.zly.site.model.SiteInfo;

public interface SiteInfoMapper {
    int insert(SiteInfo record);

    int insertSelective(SiteInfo record);
}