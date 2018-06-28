package com.zly.site.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/depatment")
public class DepartmentController {
	
	//人力资源部门
	@RequestMapping("/departmentHR")
	public String getHR(){
		return "/company/department/companyOfHR";
	}
	//财务部门
	@RequestMapping("/departmentFD")
	public String getFD(){
		return "/company/department/companyOfCW";
	}
	//研发部门
	@RequestMapping("/departmentRDC")
	public String getRDC(){
		return "/company/department/companyOfYF2";
	}
	//自动邮箱
	@RequestMapping("/departmentAUTO")
	public String getAUTO(){
		return "/company/department/companyAUTO";
	}
	//总经理
	@RequestMapping("/departmentGM")
	public String getGM(){
		return "/company/department/company1067";
	}

}
