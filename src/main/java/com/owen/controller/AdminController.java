package com.owen.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.owen.entity.Admin;
import com.owen.service.AdminService;

@Controller
public class AdminController {
	//处理器就是Controller层==Handler层
	
	@Autowired
	private AdminService adminService;
	
//	@RequestMapping(value="index.action",method = RequestMethod.GET)
//	public ModelAndView goIndex() {
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("index.jsp");
//		return mav;
//	}

	@RequestMapping("adminLoginController")
	public String adminLogin(Admin admin,Model model) {
		System.out.println("---adminLoginController---");
		System.out.println(admin);
		Admin admin1 = adminService.adminLogin(admin);
		model.addAttribute("loginName", admin1.getAdmin_name());
		if(admin1 != null) {
			System.out.println("---Controller层:登陆成功!");
			return "redirect:main.jsp";
		}else
		return "redirect:index.jsp";
	}
	
}
