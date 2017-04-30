package com.yang.controller;

import java.io.File;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import com.yang.service.UserService;

@Controller 
@RequestMapping("/upload")
public class Upload {
//	 @Autowired  
//	    private HttpServletRequest request;  
//	   @Autowired  
//	    private  HttpServletResponse response;
	 @RequestMapping("/UploadAction")  
//	    public String fileUpload(@RequestParam(value = "file",required = false) MultipartFile file) {  
//     // 判断文件是否为空  
//     if (!file.isEmpty()) {  
//         try {  
//             // 文件保存路径  
//         	System.out.println(request);
//         	System.out.println(request.getSession());
//         	System.out.println(request.getSession().getServletContext());
//         	System.out.println(request.getSession().getServletContext().getRealPath("/") );
//         	System.out.println(request.getSession().getServletContext().getRealPath("/") + "upload/");
//             String filePath = request.getSession().getServletContext().getRealPath("/") + "upload/"  
//                     + file.getOriginalFilename();  
//             // 转存文件  
//             file.transferTo(new File(filePath));  
//         } catch (Exception e) {  
//             e.printStackTrace();  
//         }  
//     }  
//     // 重定向  
//     return "redirect:/list.do";  
// }  
	 
	 
	 
	 
	 public void  handleRequest(HttpServletRequest request,
	            HttpServletResponse response) throws Exception {
		
		
		 System.out.println("ffffffffffff");
//		 System.out.println(request.getSession().getServletContext());
//		 System.out.println(request.getParameter("formdata"));
		 
		// 转型为MultipartHttpRequest：   
	        MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;   
	        // 获得文件：   
	        MultipartFile file = multipartRequest.getFile("fileList");   
//	        String contextPath = request.getContextPath();
//            String CurrentClassFilePath = this.getClass().getResource("").getPath();
//            String realPath = request.getSession().getServletContext().getRealPath("");
            String Filename = file.getOriginalFilename();
//            String RequestURI= request.getRequestURI();
//	        System.out.println(contextPath);
//	        System.out.println(CurrentClassFilePath);
//	        System.out.println(realPath);
//	        System.out.println(Filename);
//	        System.out.println(RequestURI);
//	        MultipartResolver resolver = new CommonsMultipartResolver(request.getSession().getServletContext());
//
//	        MultipartHttpServletRequest multipartRequest = resolver.resolveMultipart(request);
//	        MultipartFile file = multipartRequest.getFile("fileList");
	        InputStream inputStream = file.getInputStream();
	         System.out.println(file);
//	         System.out.println(request.getSession().getServletContext().getRealPath("/") + "upload/");

	            try {
	                // 拷贝文件到指定的目录
	                FileUtils.copyInputStreamToFile(inputStream,
	                        new File("E:/workspace/club-events/src/main/webapp/resources/images/upload/" + file.getOriginalFilename()));
	                // 判断上传的文件的格式是否符合要求
	            } catch (Exception e) {
	                e.printStackTrace();
	                
	            }
	            
	            
//	            return new ModelAndView("E:/workspace/club-events/src/main/webapp/view/demo.jsp","Filename",Filename);
//	            return "view/demo.jsp";
//	            return "view/demo.jsp?Filename="+Filename;
//	         return Filename;
			
	    }  
}
