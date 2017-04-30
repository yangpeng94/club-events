<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<html>
<head>
<%@ page isELIgnored="false"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>社团发布活动</title>
<link href="resources/css/common.css" rel="stylesheet" />
<link href="resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="resources/css/style.css" rel="stylesheet" />
<link href="resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="resources/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet" />
	<link href="resources/css/zyUpload.css" rel="stylesheet" />
<style type="text/css">
body {
	top: 0px;
	background: url(resources/img/4.jpg) repeat-y;
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
/* 	padding-top: 10px; */
	color: white;
/* 	font-family: fantasy; */
}

.nav li.hove:hover #info {
	display: block
}

#publish {
	width: 70%;
	height: 250px;
	background: white;
	margin-left: 15%;
	border-radius: 5px;
	margin-bottom: 20px;
}

.nav .dropdown-menu {
	background: #333;
	margin-left: 30px;
}

textarea {
	margin-left: 5%;
	margin-top: 2%;
	resize: none;
	border-radius: 5px;
	box-shadow: 2px 2px 2px 3px #c0c0c0;
}

#publish>form>div {
	margin-top: 2%;
	position: relative;
	float: left;
	width: 20%;
	margin-left: 5%;
}

#publish>form>input {
	border: #c0c0c0 solid 1px;
	font-size: 16px;
	width: 90%;
	border-radius: 5px;
	margin-left: 5%;
	margin-top: 2%;
	resize: none;
}

.nav-pills>li.active>a, .nav-pills>li.active>a:hover, .nav-pills>li.active>a:focus
	{
	color: #fff;
	background-color: #222;
}

ul.nav li {
	width: 60px
}
/* .panel{ */
/* height: 200px; */
/* } */
/* .panel .panel-heading,.panel .panel-footer{ */
/* position: relative; */
/* } */
.panel label,.panel img{
/* position: relative; */
/* float: left; */
/* margin-left: 5%; */
/* font-family: monospace; */
}
.panel span{
/* position: relative; */
/* float: right; */
/* right: 5%; */
}

</style>

</head>
<body>

	<ul class="nav nav-pills nav-justified navbar-inverse">
		<li class="active"><a href="clublook.jsp"><span
				class="icon-home3"> <label>主页</label></span></a></li>
		<li class="dropdown"><a href="##" data-toggle="dropdown"
			class="dropdown-toggle"><label>社团发布的活动</label><span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li>
				<form action="findAllActivitySelect.do" method="post">
				<input type="hidden" name="clubname" value="${clubname}">
	            <input type="hidden" name="img" value="${img}">
	            <input type="hidden" name="releasetime" value="${releasetime}">
				<button type="submit" class="btn btn-success btn-lg">发布成功的活动</button>
				</form>
				</li>
				<li><form action="findAllShenHeActivitySelect.do" method="post">
				<input type="hidden" name="clubname" value="${clubname}">
	            <input type="hidden" name="img" value="${img}">
	            <input type="hidden" name="releasetime" value="${releasetime}">
				<button type="submit"  class="btn btn-success btn-lg" style="margin-top: 5px;">发布失败的活动</button>
				</form></li>
			</ul></li>
		<li>
		<form action="findActbyClubname.do">
		<input type="text" name="context" placeholder="内容搜索"
			onfocus="this.placeholder=''" onblur="this.placeholder='内容搜索'" />
		<input id="clubname" name="clubname" type="hidden" value="${clubname}" />
		<input id="img" name="img" type="hidden" value="${img}" />
		<input id="releasetime" name="releasetime" type="hidden" value="${releasetime}" />
			<button type="submit" class="icon-search" style="background: rgba(255, 255, 255, 0);border: 0px"></button>
			</form>		
			</li>
		<li class="hove"><a> <img id="img"
				src="resources/img/${img}"></a>
			<div id="info">
				<dl>
					<dd>
						<img src="resources/img/${img}">
					</dd>
					<dt style="text-align: center;">
						<h3>
							<a>${clubname}</a>
						</h3>
						<br /> <label>上次发布活动:</label><label id="data">${releasetime}</label>
					</dt>
					<dt>
						<span style="position: relative; bottom: -20px;"><a
							href="index.jsp" style="color: black;">安全退出</a><span
							class="icon-redo2"></span></span>
					</dt>
				</dl>
			</div></li>
	</ul>

	<br />
	<div id="publish">
		<form action="insertAct.do" method="post">
			<input name="name" type="text" placeholder="请输入活动名称"
				onfocus="this.placeholder=''" onblur="this.placeholder='请输入活动名称'">
			<textarea name="context" placeholder="要发布什么活动呢？"
				onfocus="this.placeholder=''" onblur="this.placeholder='要发布什么活动呢？'"
				rows="5" cols="167"></textarea>
			<div class='input-group date' id='datetimepicker'>
				<input type="text" name="time" class="form-control"
					placeholder="输入活动日期" onfocus="this.placeholder=''"
					onblur="this.placeholder='输入活动日期'" /> <span
					class="input-group-addon"> <span
					class="glyphicon glyphicon-calendar"></span>
				</span>
			</div>
			<div class='input-group'>
				<input type='text' name="address" class="form-control"
					placeholder="输入活动地点" onfocus="this.placeholder=''"
					onblur="this.placeholder='输入活动地点'" style="border-radius: 5px" />
			</div>
			<div class='input-group'>
			<input type="hidden" name="img" id="scimg"> 
				<button type="button"  class="btn btn-info btn"
				data-toggle="modal" data-target=".activitymodal">上传图片</button>
			</div>
            <input type="hidden" name="clubname" value="${clubname}">
            <input type="hidden" name="clubimg" value="${img}">
            <input type="hidden" name="clubreleasetime" value="${releasetime}">
			<div class='input-group'>
				<button type="submit" class="btn btn-success btn">发布</button>
			</div>
		</form>

	</div>
	<br>

	<div style="width: 70%; margin-left: 15%">
	<c:forEach items="${activitys}" var="activitys">

		<div class="panel panel-info">
			<div class="panel-heading">
				<img  src="resources/img/${img}" height="30px" width="30px" style="border-radius: 50%;margin-left: 2%">
				<span style="margin-left: 3%;">${clubname}</span>
				<label style="margin-left: 50%">${activitys.name}</label><span>(${activitys.flag})</span>
		    </div>
			<div class="panel-body">
			${activitys.context}
				<br>
				<c:if test="${activitys.img!=null}">
				<img alt="" src="resources/img/${activitys.img}" width="80px" height="80px;"></c:if>
			</div>
			<div class="panel-footer">
				<label style="margin-left: 5%">地点:${activitys.address}</label>
				<label style="margin-left: 10%">时间：${activitys.time}</label>
				<span style="margin-left: 15%">
				提交时间:${activitys.releasetime}&nbsp&nbsp&nbsp
				<c:if test="${activitys.passtime!=null}">通过时间:${activitys.passtime}</c:if>
				</span>
			 </div>
		</div>
		</c:forEach>
		
</div>
	<div id="footer">
		<p>Copyright © 2017 com.yang All Rights Reserved |作者:杨鹏</p>
	</div>
<div class="modal fade activitymodal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
				<h4 class="modal-title">活动照片上传</h4>
			</div>
			<div class="modal-body">
			<div id="demo" class="demo"></div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
			</div>
		</div>
	</div>
</div>

</body>
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.js"></script>
<script src="resources/js/moment-with-locales.min.js"></script>
<script src="resources/js/bootstrap-datetimepicker.min.js"></script>
<script src="resources/js/zyFile.js"></script>
<script src="resources/js/zyUpload.js"></script>
<script src="resources/js/jq22.js"></script>
<script>
	$(function() {
		var currentId,currentSrc;
// 		$("#publish input[name=img]").val($(".tab img").attr('src').substring(17, 22));
// 		    $("img").click(function(){
// 		    	currentId = $(this).attr('id');
// 		    	currentSrc = $(this).attr('src');
// 			});
			$(".upload_btn").click(function(){
				$('.activitymodal').modal('hide');
			});
			$('.activitymodal').on('hide.bs.modal', function () {
				debugger;
				if($("#haha").val()==null||$("#haha").val()==''){
// 					$("#"+currentId).attr('src',currentSrc); 
// 					$("#publish  input[name=img]").val(currentSrc);
				}else{
// 					$("#"+currentId).attr('src',"../resources/images/upload/"+$("#haha").val()); 
					$("#scimg").val($("#haha").val());
				}
			});
		
		
		$(".dropdown-menu").mouseleave(function() {
			$(".dropdown").addClass("active");
		});
		$("ul.nav>li").not(".dropdown").mouseenter(function() {
			$(".dropdown").removeClass("open");
			$(".dropdown>a").css({
				"background" : "#222"
			});
		});
		$(".nav li").mouseover(function() {
			$(this).addClass("active").siblings().removeClass("active");
		});
		$(".nav li.hove").mouseout(function() {
			$(this).removeClass("active");
		}).mouseover(function() {
			$(this).removeClass("active");
		});
		$('#datetimepicker').datetimepicker({
			format : 'YYYY-MM-DD HH:mm:ss',
			locale : moment.locale('zh-cn')
		});
// 		var clubname = $("input[name=clubname]").val();
// 		var clubreleasetime = $("input[name=clubreleasetime]").val();
// 		var clubimg = $("input[name=clubimg]").val();
// 		$(".dropdown-menu li:eq(0)").click(function(){
// 			debugger;
// 			$.ajax({
// 				type : "post",
// 				url : "findAllActivitySelect.do",
// 				data:{
// 					clubname:clubname,
// 					releasetime:clubreleasetime,
// 					img:clubimg
// 				},
// 				async : false,//同步：意思是当有返回值以后才会进行后面的js程序。
// 		 	    success:function(data){
// 		 	    	$("#a").html(data);
// // 		 	   	window.location.reload(true);
// 	 	    }
// 			});
// 		});
		
// 		$(".dropdown-menu li:eq(1)").click(function(){
// 			debugger;
// 			$.ajax({
// 				type : "post",
// 				url : "findAllShenHeActivitySelect.do",
// 				data:{
// 					clubname:clubname,
// 					releasetime:clubreleasetime,
// 					img:clubimg
// 				},
// 				async : false,//同步：意思是当有返回值以后才会进行后面的js程序。
// // 		 	    success:function(data){
// // 		 	   	window.location.reload(true);
// // 	 	    }
			
// 			});
// 		});
		
		
		
		
		// 				$('#datetimepicker2').datetimepicker({  
		// 				    format: 'YYYY-MM-DD HH:mm',  
		// 				    locale: moment.locale('zh-cn')  
		// 				}); 
		// 	function show() {
		// 			var mydate = new Date();
		// 			var str = "" + mydate.getFullYear() + "年";
		// 			str += (mydate.getMonth() + 1) + "月";
		// 			str += mydate.getDate() + "日";
		// 			return str;
		// 	}
		// 	$("#data").html(show());
	});
</script>
</html>