package com.zly.site.dao;

import java.util.List;
import java.util.Map;

import com.zly.site.model.PostEmail;

public interface PostEmailExtMapper {
	//得到所有邮箱
	List<Map<String,Object>> seclectAllList();
}