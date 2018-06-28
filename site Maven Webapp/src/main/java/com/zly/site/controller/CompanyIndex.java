package com.zly.site.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/companyIndex")
public class CompanyIndex extends BaseController {

	@RequestMapping("index")
	public String index(){
		return "/company/index/companyIndex";
	}
}
