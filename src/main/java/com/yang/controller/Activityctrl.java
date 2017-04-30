package com.yang.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yang.entity.Activity;
import com.yang.entity.Club;
import com.yang.service.ActivityService;

@Controller
public class Activityctrl {
	@Autowired
	private ActivityService activityService;
	@RequestMapping("/insertAct")
	@ResponseBody
	public ModelAndView InsertAct(HttpServletRequest request) {
		String clubname = activityService.InsertAct(request);
		String clubreleasetime = request.getParameter("clubreleasetime");
		String clubimg = request.getParameter("clubimg");
		
		ModelAndView mv = null;
				mv = new ModelAndView("redirect:/findActbyClubname.do");
				mv.getModel().put("clubname", clubname);
				mv.getModel().put("releasetime", clubreleasetime);
				mv.getModel().put("img", clubimg);
				return mv;
	}
	@RequestMapping("/findActbyClubname")
	@ResponseBody
	public ModelAndView findActbyClubname(String clubname,String img,String releasetime,String context) {
//		String clubname = club.getClubname();
		List<Activity> activitys = activityService.findActbyClubname(clubname,context);
		ModelAndView mv = null;
		if(activitys!=null){
			for(Activity activity : activitys){
				if(activity.getFlag().equals("1")){
					activity.setFlag("活动审核暂未通过！");
				}else{
					activity.setFlag("活动审核发布成功！");
				}
			}
		}
				mv = new ModelAndView("/view/clublook.jsp");
				mv.getModel().put("activitys", activitys);
				mv.getModel().put("clubname", clubname);
				mv.getModel().put("img", img);
				mv.getModel().put("releasetime", releasetime);
				
				return mv;
	}

	@RequestMapping("/findAllActivity")
	@ResponseBody
	public List<Activity> findAllActivity() {
		return activityService.findAllActivity();
	}
	@RequestMapping("/findAllShenHeActivity")
	@ResponseBody
	public List<Activity> findAllShenHeActivity() {
		return activityService.findAllShenHeActivity();
	}
	
//	@RequestMapping("/findAllActivitySelect")
//	@ResponseBody
//	public List<Activity> findAllActivitySelect(String clubname,String img,String releasetime) {
//		List<Activity> activitys =  activityService.findAllActivitySelect(clubname);
////		ModelAndView mv = null;
//		if(activitys!=null){
//			for(Activity activity : activitys){
////				if(activity.getFlag()=="1"){
////					activity.setFlag("活动审核发布失败！");
////				}else{
//					activity.setFlag("活动审核发布成功l！");
////				}
//			}
//		}
		
//				mv = new ModelAndView("/view/clublook.jsp");
//				mv.getModel().put("activitys", activitys);
//				mv.getModel().put("clubname", clubname);
//				mv.getModel().put("img", img);
//				mv.getModel().put("releasetime", releasetime);
				
//				return activitys;
//	}
	@RequestMapping("/findAllActivitySelect")
	@ResponseBody
	public ModelAndView findAllActivitySelect(String clubname,String img,String releasetime) {
		List<Activity> activitys =  activityService.findAllActivitySelect(clubname);
		ModelAndView mv = null;
		if(activitys!=null){
			for(Activity activity : activitys){
//				if(activity.getFlag()=="1"){
//					activity.setFlag("活动审核发布失败！");
//				}else{
					activity.setFlag("活动审核发布成功！");
//				}
			}
		}
		
				mv = new ModelAndView("/view/clublook.jsp");
				mv.getModel().put("activitys", activitys);
				mv.getModel().put("clubname", clubname);
				mv.getModel().put("img", img);
				mv.getModel().put("releasetime", releasetime);
				
				return mv;
	}
	
	
	@RequestMapping("/findAllShenHeActivitySelect")
	@ResponseBody
	public ModelAndView findAllShenHeActivitySelect(String clubname,String img,String releasetime) {
		List<Activity> activitys =  activityService.findAllShenHeActivitySelect(clubname);
		ModelAndView mv = null;
		if(activitys!=null){
			for(Activity activity : activitys){
//				if(activity.getFlag()=="1"){
					activity.setFlag("活动审核发布失败！");
//				}else{
//					activity.setFlag("活动审核发布成功！");
//				}
			}
		}
				mv = new ModelAndView("/view/clublook.jsp");
				mv.getModel().put("activitys", activitys);
				mv.getModel().put("clubname", clubname);
				mv.getModel().put("img", img);
				mv.getModel().put("releasetime", releasetime);
				
				return mv;
	}
	@RequestMapping("/findActById")
	@ResponseBody
	public Activity findActById(int id) {
		return activityService.findActById(id);
	}
	@RequestMapping("/delActById")
	@ResponseBody
	public ModelAndView delActById(int id) {
		activityService.delActById(id);
		ModelAndView mv = null;
		mv = new ModelAndView("redirect:/findAdminByStuno.do");
		mv.getModel().put("adminno", 1111);
		mv.getModel().put("apassword", "1111");
		return mv;
	}
	@RequestMapping("/updateActById")
	@ResponseBody
	public ModelAndView updateActById(int id,String name,String context,String address,String time) {
		activityService.updateActById(id,name,context, address, time);
		ModelAndView mv = null;
		mv = new ModelAndView("redirect:/findAdminByStuno.do");
		mv.getModel().put("adminno", 1111);
		mv.getModel().put("apassword", "1111");
		return mv;
	}
	@RequestMapping("/shenHePassActById")
	@ResponseBody
	public ModelAndView shenHePassActById(int id) {
		activityService.shenHePassActById(id);
		ModelAndView mv = null;
		mv = new ModelAndView("redirect:/findAdminByStuno.do");
		mv.getModel().put("adminno", 1111);
		mv.getModel().put("apassword", "1111");
		return mv;
	}
	
}
