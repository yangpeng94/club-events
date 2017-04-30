<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<div class="alert alert-success"></div>
<div class="alert alert-error">æ­åæä½æå</div>
<input name="name" id="a" type="text"/>
${Filename}
${request.Filename}
${requestScope.Filename}
${session.Filename}
${sessionScope.Filename}
srgadgvadrgvae
<button id="b">anniu</button>

<input name="name" id="a" type="text"/>
</body>
<link href="resources/css/bootstrap.min.css" rel="stylesheet"/>
<link href="resources/css/common.css" rel="stylesheet"/>
<script src="resources/js/jquery.min.js"></script>
<script >
$(function() {
	debugger;
	var alert_success = $(".alert-success");
	var alert_error = $(".alert-error");
// 	$.ajax({
// 	    url:"Demo2.do", 
// 	    type:"POST", 
// 	    async:true,
// 	    data:{"id":1},    
// 	    success:function(data){
// 	    	alert_success.show().text("æä½æå").fadeOut(5000);
// // 	       alert_success.show();
// // 	       alert_success.fadeOut(5000);
// // 	       alert_success.text("æä½æå");
// 			$("#a").val(data);
// 	    },
// 	    error:function(data){
// 	    	alert_error.show().text("æä½å¤±è´¥").fadeOut(5000);
// // 	    	alert_error.fadeOut(5000);
// // 	    	alert_success.text("æä½å¤±è´¥");
// 	    }
// 	});
});

</script>

</html>