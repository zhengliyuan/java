package com.zly.site.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/secray")
public class SecrayController {
	@RequestMapping("/index")
	public String getIndex(){
		return "/secray/secrayIndex";
	}
	
	@RequestMapping("/attack")
	public String getAttack(){
		return "/secray/attack";
	}
	
	@RequestMapping("/loop")
	public String getLoop(){
		return "/secray/loop";
	}
	
	@RequestMapping("/rank")
	public String getRank(){
		return "/secray/rank";
	}
}
