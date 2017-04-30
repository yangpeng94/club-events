<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<html>
<head>
<%@ page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生查看活动</title>
<link href="resources/css/common.css" rel="stylesheet" />
<link href="resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="resources/css/style.css" rel="stylesheet" />
<style type="text/css">
body {
	top: 0px;
	background: url(resources/img/5.jpg) repeat-y;
}

input:focus {
	outline: none;
}

ul li {
	text-align: center;
	cursor: pointer;
}

li input {
	background: #F0F0F0;
	width: 240px;
	font-size: 18px;
	border-radius: 15px;
	height: 40px;
	margin-left: 20px;
}

.icon-search {
	margin-left: -30px;
}

ul label {
	font-family: monospace;
	font-size: 18px;
	color: white;
}

li img {
	border-radius: 50%;
	width: 40px;
	height: 40px;
}

.nav li.hove {
	position: relative;
}

#info img {
	border-radius: 50%;
	width: 60px;
	height: 60px;
	/*  	position: relative;  */
	/*  	float: left;  */
	margin-left: 30px;
	margin-top: 30px
}

#info {
	display: none;
	background: white;
	height: 250px;
	width: 300px;
	float: right;
	right: 50px;
	top: 61px;
	position: absolute;
	z-index: 500;
	box-shadow: 2px 2px 2px 3px #c0c0c0;
}

h3 {
	font-family: cursive;
	margin-left: 20px;
}

#info label {
	font-size: 14px;
	font-family: cursive;
	margin-top: -15px;
	color: black;
}

.nav li.hove {
	width: 0.05%;
	padding-right: 70px;
}

#footer {
	position: relative;
	background: black;
	bottom: 0px;
	width: 100%;
	height: 50px;
}

#footer p {
	text-align: center;
	font: 14px;
	vertical-align: 50px;
	padding-top: 20px;
	color: white
}

.nav li.hove:hover #info {
	display: block
}
/* .icon-redo2{ */
/* font-family: sans-serif; */
/* padding-right: 10px; */
/* padding-bottom: 10px; */
/* } */

.nav-pills>li.active>a, .nav-pills>li.active>a:hover, .nav-pills>li.active>a:focus {
    color: #fff;
    background-color: #222;
}
</style>

</head>
<body>
	<ul class="nav nav-pills nav-justified navbar-inverse">
		<li class="active"><a href="stulook.jsp"><span
				class="icon-home3"> <label>主页</label></span></a></li>
		<li id="pulishTime">
		<form action="stuFindAllActivity.do">
		<input id="stuno" name="stuno" type="hidden" value="${stuno}" />
		<input id="img" name="img" type="hidden" value="${img}" />
		<input id="lastlogtime" name="lastlogtime" type="hidden" value="${lastlogtime}" />
		<input id="stuflag" name="stuflag" type="hidden" value="1" />
		<button type="submit" class="btn btn-inverse btn-lg">发布时间</button>
		</form></li>
		<li>
		<form action="stuFindAllActivity.do">
		<input id="stuno" name="stuno" type="hidden" value="${stuno}" />
		<input id="img" name="img" type="hidden" value="${img}" />
		<input id="lastlogtime" name="lastlogtime" type="hidden" value="${lastlogtime}" />
		<input id="stuflag" name="stuflag" type="hidden" value="2" />
		<button type="submit" class="btn btn-inverse btn-lg">举办时间</button>
		</form></li>
<!-- 		<a href="##"> <label>发布时间</label></a></li> -->
<!-- 		<li id="Time"><a href="##"> <label>举办时间</label></a></li> -->
		<li>
		<form action="stuFindAllActivity.do">
		<input  name="context" type="text" placeholder="搜索社团的发布"
			onfocus="this.placeholder=''" onblur="this.placeholder='搜索社团的发布'" />
		<input id="stuno" name="stuno" type="hidden" value="${stuno}" />
		<input id="img" name="img" type="hidden" value="${img}" />
		<input id="lastlogtime" name="lastlogtime" type="hidden" value="${lastlogtime}" />
		<input id="stuflag" name="stuflag" type="hidden" value="3" />
			<button type="submit" class="icon-search" style="background: rgba(255, 255, 255, 0);border: 0px"></button> 
</form>
			</li>
		<li>
		<form action="stuFindAllActivity.do">
		<input type="text" name="context" placeholder="内容搜索"
			onfocus="this.placeholder=''" onblur="this.placeholder='内容搜索'" />
		<input id="stuno" name="stuno" type="hidden" value="${stuno}" />
		<input id="img" name="img" type="hidden" value="${img}" />
		<input id="lastlogtime" name="lastlogtime" type="hidden" value="${lastlogtime}" />
		<input id="stuflag" name="stuflag" type="hidden" value="4" />
			<button type="submit" class="icon-search" style="background: rgba(255, 255, 255, 0);border: 0px"></button>
			</form>
			</li>
		<li class="hove"><a> <img 
				src="resources/img/${img}"></a>
			<div id="info">
				<dl>
					<dd>
						<img src="resources/img/${img}">
<%-- 						<input id="img" type="hidden" value="${img}" /> --%>
					</dd>
					<dt style="text-align: center;">
						<h3>
						    <a>${stuno}</a>
<%-- 						    <input id="stuno" type="hidden" value="${stuno}" /> --%>
						</h3>
						<br /> <label>上次登录:</label><label>${lastlogtime}</label>
<%-- 						<input id="lastlogtime" type="hidden" value="${lastlogtime}" /> --%>
					</dt>
					<dt>
						<span style="position:relative; bottom: -20px;"><a href="index.jsp" style="color: black;">安全退出</a><span class="icon-redo2"></span></span>
					</dt>
				</dl>
			</div></li>
	</ul>

	<br/>
	<div style="width: 70%; margin-left: 15%">
		<c:forEach items="${objects}" var="objects">
			<div class="panel panel-warning">
				<div class="panel-heading">
					<img src="resources/img/${objects.cimg}" height="30px" width="30px"
						style="border-radius: 50%; margin-left: 2%"> <span
						style="margin-left: 3%;">${objects.clubname}</span> 
						<label
						style="margin-left: 50%">${objects.name}</label>
				</div>
				<div class="panel-body">
					${objects.context} <br>
					<c:if test="${objects.aimg!=null}">
						<img alt="" src="resources/img/${objects.aimg}" width="80px"
							height="80px;">
					</c:if>
				</div>
				<div class="panel-footer">
					<label style="margin-left: 40%">地点:${objects.address}</label> <label
						style="margin-left: 20%">时间：${objects.time}</label> 
				</div>
			</div>
		</c:forEach>
	</div>
	<div id="footer" style="">
		<p style="">Copyright © 2017 com.yang All Rights Reserved |作者:杨鹏</p>
	</div>


</body>
<script src="resources/js/jquery.min.js"></script>
<script>
$(function() {
	$(".nav li").mouseover(function() {
		$(this).addClass("active").siblings().removeClass("active");
	});
	$(".nav li.hove").mouseout(function() {
		$(this).removeClass("active");
	}).mouseover(function() {
		$(this).removeClass("active");
	});
	
// $("#pulishTime").click(function(){
// 	debugger;
// 	var lastlogtime = $("#lastlogtime").val();
// 	var img = $("#img").val();
// 	var stuno = $("#stuno").val();
// 	$.ajax({
// 		type : "post",
// 		url : "stuFindAllActivity.do",
// 		async : false,//同步：意思是当有返回值以后才会进行后面的js程序。
// 		data : {
// 			"stuno" : stuno,
// 			"img" : img,
// 			"lastlogtime" : lastlogtime,
// 			"stuflag":"1" //按发布时间排序
// 		}//请求需要发送的处理数据
// // 		dataType : "json"
// 	});
// });
// $("#Time").click(function(){
// 	debugger;
// 	var lastlogtime = $("#lastlogtime").val();
// 	var img = $("#img").val();
// 	var stuno = $("#stuno").val();
// 	$.ajax({
// 		type : "post",
// 		url : "stuFindAllActivity.do",
// 		async : false,//同步：意思是当有返回值以后才会进行后面的js程序。
// 		data : {
// 			"stuno" : stuno,
// 			"img" : img,
// 			"lastlogtime" : lastlogtime,
// 			"stuflag":"2" //按举办时间排序
// 		}//请求需要发送的处理数据
// // 		dataType : "json"
// 	});
// });
	

		//     var stuno = $("#info a:eq(0)").val();
		//     debugger;
		// 		$.ajax({
		// 	    type:"get",
		// 	    url: "updataLastLogTime.do",
		// 	    async:false,//同步：意思是当有返回值以后才会进行后面的js程序。
		// 	    data:{"stuno":stuno},//请求需要发送的处理数据
		// 	    dataType:"json",
		// 	    success:function(data){
		// // 		    	debugger;
		// // 		        console.log(data);
		// //      	        var data1 =JSON.parse(JSON.stringify(data)); 
		// 	    	if (data.password==$(".tab1 input[name=password]").val()) {//根据返回值进行跳转
		// 	            window.location.href="view/stulook.jsp?data="+data;
		// 	        }else{  
		// 	        	alert(data.password);
		// 	        }
		// 	    }
		// 	 });

		// 	function show() {
		// 			var mydate = new Date();
		// 			var str = "" + mydate.getFullYear() + "年";
		// 			str += (mydate.getMonth() + 1) + "月";
		// 			str += mydate.getDate() + "日";
		// 			return str;
		// 	}
		// 	$("#data").html(show());
		// debugger;

		// function GetQueryString(name)
		// {
		//      var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
		//      var r = window.location.search.substr(1).match(reg);
		//      if(r!=null)return  unescape(r[2]); return null;
		// }
		// var data1=  GetQueryString("data");
		// var data=JSON.parse(data1); 
		// console.log(data.password);
		// console.log(data1.name);
	});
</script>
</html>