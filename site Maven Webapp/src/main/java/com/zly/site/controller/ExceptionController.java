package com.zly.site.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/exceptionExt")
public class ExceptionController {

	@RequestMapping("/exception1")
	public String getException1(){
		return "/company/exception1/exceptionPort2";
	}
	
	@RequestMapping("/exception2")
	public String getException2(){
		return "/company/exception2/exceptionFlowForQuit";
	}
	
	@RequestMapping("/exception3")
	public String getException3(){
		return "/company/exception3/exceptionForDB";
	}
	
	@RequestMapping("/exception4")
	public String getException4(){
		return "/company/exception4/exceptionPort";
	}
	
	@RequestMapping("/exception5")
	public String getException5(){
		return "/company/exception5/exceptionTrojar";
	}
	
	@RequestMapping("/exception6")
	public String getException6(){
		return "/company/exception6/exceptionFlow";
	}
}
