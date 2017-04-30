package com.yang.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yang.service.UserService;

@Controller 
public class Demo {
	@Autowired
	private UserService userService;

	@RequestMapping("/Demo1")
	public String index() {
		
		return "view/demo.jsp?Filename="+"10";
	}

	@RequestMapping("/Demo2")
	@ResponseBody
	public String findNameById(int id) {
		// System.out.println(userService.findNameById(id));
		return userService.findNameById(id);
	}

	
	
	
	
	
	
	
	
//	@RequestMapping("/admin/addImage.do")
//	public ModelAndView handleRequest(HttpServletRequest request,
//
//			HttpServletResponse response) throws Exception {
//
//		MultipartResolver resolver = new CommonsMultipartResolver(request
//
//				.getSession().getServletContext());
//
//		MultipartHttpServletRequest multipartRequest = resolver
//
//				.resolveMultipart(request);
//
//		MultipartFile file = multipartRequest.getFile("fileList");
//		return file;
//	}
}