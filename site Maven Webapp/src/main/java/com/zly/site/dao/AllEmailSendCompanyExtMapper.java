package com.zly.site.dao;

import java.util.List;
import java.util.Map;

import com.zly.site.model.AllEmailSendCompany;

public interface AllEmailSendCompanyExtMapper {
	 List<Map<String,Object>> selectAllCompanySendLink();
}