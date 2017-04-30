package com.yang.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yang.entity.ClubAndActivity;
import com.yang.entity.User;
import com.yang.service.StuService;


@Controller
public class StuCtrl {
	@Autowired
	private StuService stuService;

	@RequestMapping("/insertstu")
	@ResponseBody
	public void InsertStu(HttpServletRequest request) {
		stuService.InsertStu(request);
	}

	@RequestMapping("/findStuByStuno")
	@ResponseBody
	public ModelAndView findStuByStuno(int stuno, String password) {
		User u = stuService.findStuByStuno(stuno);
		ModelAndView mv = null;
		if (u != null) {
			if (u.getPassword().equals(password) && u != null) {
				mv = new ModelAndView("redirect:/stuFindAllActivity.do");
				String img = u.getImg();
				String lastlogtime = u.getLastlogtime();
//				mv = new ModelAndView("/view/stulook.jsp");
				int stuno1  = u.getStuno();
				mv.getModel().put("stuno", stuno1);
				mv.getModel().put("img", img);
				mv.getModel().put("lastlogtime", lastlogtime);
				mv.getModel().put("stuflag", "2");
				
				stuService.updataLastLogTime(stuno1);
			} else {
				mv = new ModelAndView("index.jsp");
				mv.getModel().put("stuerror", "密码错误！");
			}
		} else {
			mv = new ModelAndView("index.jsp");
			mv.getModel().put("stuerror", "账号不存在！");
		}
		return mv;
	}
	
	
	@RequestMapping("/findAllStu")
	@ResponseBody
	public List<User> findAllStu() {
		return stuService.findAllStu();
	}
	
	@RequestMapping("/stuFindAllActivity")
	@ResponseBody
	public ModelAndView stuFindAllActivity(int stuno, String img,String lastlogtime,String stuflag,String context) {
		List<ClubAndActivity> objects = stuService.stuFindAllActivity(stuflag,context);
		ModelAndView mv = null;
		mv = new ModelAndView("/view/stulook.jsp");
		mv.getModel().put("objects", objects);
		mv.getModel().put("stuno", stuno);
		mv.getModel().put("img", img);
		mv.getModel().put("lastlogtime", lastlogtime);
		mv.getModel().put("context", context);
		return mv;
	}
	@RequestMapping("/findStuById")
	@ResponseBody
	public User findStuById(int id) {
		return stuService.findStuById(id);
	}
	@RequestMapping("/delStuById")
	@ResponseBody
	public ModelAndView delStuById(int id) {
	   stuService.delStuById(id);
	   ModelAndView mv = null;
		mv = new ModelAndView("redirect:/findAdminByStuno.do");
		mv.getModel().put("adminno", 1111);
		mv.getModel().put("apassword", "1111");
		return mv;
	}
	@RequestMapping("/updateStuById")
	@ResponseBody
	public ModelAndView updateStuById(int id,int stuno,String password,String name) {
		 stuService.updateStuById(id,stuno,password,name);
		 ModelAndView mv = null;
			mv = new ModelAndView("redirect:/findAdminByStuno.do");
			mv.getModel().put("adminno", 1111);
			mv.getModel().put("apassword", "1111");
			return mv;
	}
	

}
