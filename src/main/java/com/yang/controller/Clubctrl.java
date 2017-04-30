package com.yang.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yang.entity.Club;
import com.yang.entity.User;
import com.yang.service.ClubService;
@Controller
public class Clubctrl {
	@Autowired
	private ClubService clubService;
	
	@RequestMapping("/insertclub")
	@ResponseBody
	public void InsertClub(HttpServletRequest request) {
		clubService.InsertClub(request);
	}
	@RequestMapping("/findClubByClubno")
	@ResponseBody
	public ModelAndView findClubByClubno(int clubno,String cpassword) {
		Club c = clubService.findClubByClubno(clubno);
		ModelAndView mv = null;
		if (c != null) {
			String flag  = c.getFlag();
			if(c.getPassword().equals(cpassword) ){
				if (flag.equals("1")) {
					mv = new ModelAndView("index.jsp");
					mv.getModel().put("cluberror", "还不是社团！");
				} else if(flag.equals("2")){
					String clubname = c.getClubname();
					String img  = c.getImg();
					String releasetime = c.getReleasetime();
					mv = new ModelAndView("redirect:/findActbyClubname.do");
					mv.getModel().put("clubname", clubname);
					mv.getModel().put("img", img);
					mv.getModel().put("releasetime", releasetime);
				}
			}else{
				mv = new ModelAndView("index.jsp");
				mv.getModel().put("cluberror", "密码错误！");
			}
		} else {
			mv = new ModelAndView("index.jsp");
			mv.getModel().put("cluberror", "账号不存在！");
		}
		return mv;
	}
	@RequestMapping("/findAllClub")
	@ResponseBody
	public List<Club> findAllClub() {
		return clubService.findAllClub();
	}
	@RequestMapping("/findAllShenHeClub")
	@ResponseBody
	public List<Club> findAllShenHeClub() {
		return clubService.findAllShenHeClub();
	}
	
	@RequestMapping("/findClubById")
	@ResponseBody
	public Club findClubById(int id) {
		return clubService.findClubById(id);
	}

	
	@RequestMapping("/delClubById")
	@ResponseBody
	public ModelAndView delClubById(int id) {
		clubService.delClubById(id);
		ModelAndView mv =null;
		mv = new ModelAndView("redirect:/findAdminByStuno.do");
		mv.getModel().put("adminno", 1111);
		mv.getModel().put("apassword", "1111");
		return mv;
	}
	@RequestMapping("/updateClubById")
	@ResponseBody
	public ModelAndView updateClubById(int id,int clubno,String password,String clubname ,String natrue) {
		clubService.updateClubById(id,clubno,password,clubname,natrue);
		 ModelAndView mv = null;
			mv = new ModelAndView("redirect:/findAdminByStuno.do");
			mv.getModel().put("adminno", 1111);
			mv.getModel().put("apassword", "1111");
			return mv;
	}
	@RequestMapping("/shenHePassClubById")
	@ResponseBody
	public ModelAndView shenHePassClubById(int id) {
		clubService.shenHePassClubById(id);
		ModelAndView mv = null;
		mv = new ModelAndView("redirect:/findAdminByStuno.do");
		mv.getModel().put("adminno", 1111);
		mv.getModel().put("apassword", "1111");
		return mv;
	}
}
