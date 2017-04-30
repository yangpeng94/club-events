package com.yang.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yang.entity.User;
import com.yang.service.AdminService;
@Controller
public class Adminctrl {
	@Autowired
	private AdminService adminService;

	@RequestMapping("/findAdminByStuno")
	@ResponseBody
	public ModelAndView findAdminByStuno(int adminno,String apassword) {
		// System.out.println(userService.findNameById(id));
//		return adminService.findAdminByStuno(stuno);
		User a = adminService.findAdminByStuno(adminno);
		ModelAndView mv = null;
		if(a!=null){
			int id = a.getId();
			if (a.getPassword().equals(apassword)&&id==1){
				mv = new ModelAndView("/view/adminlook.jsp");
				mv.getModel().put("admin", a);
				int adminno1  = a.getStuno();
				adminService.updataLastLogTime(adminno1);
			}else{
				mv = new ModelAndView("index.jsp");
				mv.getModel().put("adminerror", "密码错误！");
			}
		}else{
			mv = new ModelAndView("index.jsp");
			mv.getModel().put("adminerror", "账号错误！");
		}
		
		return mv;
	}
	
	@RequestMapping("/total")
	@ResponseBody
	public String total() {
		return adminService.total();
	}
}
