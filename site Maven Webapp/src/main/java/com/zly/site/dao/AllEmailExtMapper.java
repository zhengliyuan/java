package com.zly.site.dao;

import java.util.List;
import java.util.Map;

import com.zly.site.model.AllEmail;

public interface AllEmailExtMapper {
    //获得所有邮箱
	List<Map<String,Object>> selectAllSendEmail();
	//查询时候存在该邮箱
	int selectExist(String email);
	
	int insertOneEmail(AllEmail record);
}