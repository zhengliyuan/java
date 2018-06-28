package com.zly.site.dao;

import java.util.List;
import java.util.Map;

import com.zly.site.model.AllEmailSend;

public interface AllEmailSendExtMapper {
	//获得所有的邮件发送路径
    List<Map<String,Object>> selectAllLink();
}