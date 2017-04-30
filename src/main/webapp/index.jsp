<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>系统登录</title>
<link href="resources/css/common.css" rel="stylesheet" />
<link href="resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="resources/css/style.css" rel="stylesheet" />
<style type="text/css">
body {
	/* background:red; */
	background: url(resources/img/1.jpg) no-repeat;
}

input:focus {
	outline: none;
}

#index {
	background: #5cb85c;
	height: 55%;
	width: 24%;
	border-radius: 5px;
	position: relative;
	float: right;
	top: 100px;
	right: 150px
}

#index  ul {
	opacity: 0.7;
	margin: 0px auto;
	padding-left: 53.3px;
	margin-top: 10px;
	margin-bottom: 10px;
}

#index  ul li {
	cursor: pointer;;
}

#index  ul li a {
	font-family: fantasy;
	font-size: 14px;
	color: white;
}

#index  .tab, #index  .tab .tab1, #index  .tab .tab2, #index  .tab .tab3
	{
	background: white;
	height: 356.9px;
	width: 100%;
	border-radius: 5px;
	top: 0px;
	left: 0px;
}

.tab {
	overflow: hidden;
}

#index  .tab span {
	margin-left: 10px;
	font-family: monospace;
	font-size: 18px;
	margin-top: 30px;
}

#index  .tab input {
	background: #F0F0F0;
	width: 240px;
	font-size: 18px;
	border-radius: 5px;
	height: 40px;
	margin-left: 5px;
	margin-top: 30px
}

#index  .tab button {
	margin-left: 25%;
	width: 50%;
	margin-top: 10%;
}

.nav-pills>li.active>a, .nav-pills>li.active>a:hover, .nav-pills>li.active>a:focus
	{
	color: #fff;
	background-color: #222;
}

.prompt {
	color: red;
	text-align: center;
	font-size: 16px;
	font-family: fantasy;
	margin-top: 10px
}
</style>
</head>
<body>
	<div id="index">
			<ul class="nav nav-pills">
				<li class="active"><a>学生登录</a></li>
				<li><a>社团登录</a></li>
				<li><a>管理员登录</a></li>
			</ul>
			<div class="tab">
				<div class="tab1">
                    <form action="findStuByStuno.do" method="post">
                    <div class="prompt">${stuerror}</div>
						<span class="icon-user"> <span>账号:</span>
						</span> <input type="text" name="stuno" /> <br> <span
							class="icon-key"> <span>密码:</span>
						</span> <input style="" type="text" name="password" />
						<button type="submit" class="btn btn-success btn-lg active">学生登录</button>
						<a href="view/reg.html"><button type="button" class="btn btn-success btn-lg active">学生注册</button></a>
					</form>
				</div>
				<div class="tab2">
				 <form action="findClubByClubno.do" method="post">
                    <div class="prompt">${cluberror}</div>
					<span class="icon-user"> <span>账号:</span>
					</span> <input type="text" name="clubno" /> <br> <span
						class="icon-key"> <span>密码:</span>
					</span> <input style="" type="text" name="cpassword" />
					<button type="submit" class="btn btn-warning btn-lg active">社团登录</button>
					<a href="view/reg.html"><button type="button" class="btn btn-warning btn-lg active">社团注册</button></a>
					</form>
				</div>
				<div class="tab3">
				    <form action="findAdminByStuno.do" method="post">
	                    <div class="prompt">${adminerror}</div>
						<span class="icon-user"> <span>账号:</span>
						</span> <input type="text" name="adminno" /> <br> <span
							class="icon-key"> <span>密码:</span>
						</span> <input style="" type="text" name="apassword" />
						<button type="submit" class="btn btn-danger btn-lg active">管理员登录</button>
					</form>
				</div>
			</div>
		</div>
</body>

<script src="resources/js/jquery.min.js"></script>
<script>
$(function() {

	
	$(".nav li").click(function() {
			$(this).addClass("active").siblings().removeClass("active");
			$(".tab>div").hide().eq($(this).index()).show();
		});
	$("input").focusin(function(){
		$(this).css("background","white");
	}).focusout(function(){
		$(this).css("background","#F0F0F0");
	});
	$("#index  ul li:eq(0)").click(function(){
		$("#index").css("background","#5cb85c");
		$("#index .tab .tab1").css("background","white");
	});
	$("#index  ul li:eq(1)").click(function(){
		$("#index").css("background","#f0ad4e");
		$("#index .tab .tab2").css("background","white");
	});
	$("#index  ul li:eq(2)").click(function(){
		$("#index").css("background","#d9534f");
		$("#index .tab .tab3").css("background","white");
	});

// 	$(".tab1>button").click(function(){
// 		debugger;
// 		var stuno = $("input[name=stuno]").val();
// 		$.ajax({
// 		    type:"get",
// 		    url: "findStuByStuno.do",
// 		    async:false,//同步：意思是当有返回值以后才会进行后面的js程序。
// 		    data:{"stuno":stuno},//请求需要发送的处理数据
// 		    dataType:"json",
// 		    success:function(data){
// // 		    	debugger;
// // 		        console.log(data);
// //      	        var data1 =JSON.parse(JSON.stringify(data)); 
// 		    	if (data.password==$(".tab1 input[name=password]").val()) {//根据返回值进行跳转
// 		            window.location.href="view/stulook.jsp?data="+data;
// 		        }else{  
// 		        	alert(data.password);
// 		        }
// 		    }
// 		 });
// 	});
	
	
// 	$(".tab2>button").click(function(){
// 		debugger;
// 		var clubno = $("input[name=clubno]").val();
// 		$.ajax({
// 		    type:"POST",
// 		    url: "findClubByClubno.do",
// 		    async:false,//同步：意思是当有返回值以后才会进行后面的js程序。
// 		    data:{"clubno":clubno},//请求需要发送的处理数据
// 		    dataType:"json",
// 		    success:function(data){
// 		        if (data.password==$("input[name=cpassword]").val()) {//根据返回值进行跳转
// 		            window.location.href = 'view/clublook.jsp?data='+data;
// 		        }else{  
// 		        	alert(data.password);
// 		        }
// 		    }
// 		 });
// 	});
	
	
// 	$(".tab3>button").click(function(){
// 		debugger;
// 		var adminno = $("input[name=adminno]").val();
// 		$.ajax({
// 		    type:"POST",
// 		    url: "findAdminByStuno.do",
// 		    async:false,//同步：意思是当有返回值以后才会进行后面的js程序。
// 		    data:{"stuno":adminno},//请求需要发送的处理数据
// 		    dataType:"json",
// 		    success:function(data){
// 		        if (data.password==$("input[name=apassword]").val()) {//根据返回值进行跳转
// 		            window.location.href = 'view/adminlook.jsp?data='+data
// 		        }else{  
// 		        	alert(data.password);
// 		        }
// 		    }
// 		 });
// 	});
	
});
</script>
</html>