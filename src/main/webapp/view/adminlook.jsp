<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ page isELIgnored="false" %>
<title>管理员审核</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="resources/css/style.css" rel="stylesheet" />
<link href="resources/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet" />
<style type="text/css">
#info img {
	border-radius: 50%;
	width: 60px;
	height: 60px;
	/*  	position: relative;  */
	/*  	float: left;  */
	margin-left: 42%;
	margin-top: 30px
}

#info {
	/* 	display: none; */
	border-radius: 5px; background : white;
	height: 250px;
	width: 300px;
	float: left;
/* 	right: 50px; */
/* 	top: 61px; */
	position:relative;
/* 	z-index: 500; */
	box-shadow: 2px 2px 2px 3px #c0c0c0;
	background: white;
}

h3 {
	font-family: cursive;
	margin-left: 5px;
}

#info label {
	font-size: 14px;
	font-family: cursive;
	margin-top: -15px;
	color: black;
}

#menu {
/* 	background: red; */
   margin-top:10px;
	width: 300px;
	border-radius: 5px;
	position: relative;
	float: left;
}

#footer{
position: relative;
float:left;
background: black;
width: 100%;
height: 50px;
margin-top: 48px;
}

#footer p {
	text-align: center;
	font: 14px;
	vertical-align: 50px;
	padding-top: 20px;
	color: white
}
#accordion a,.panel-body a{
margin-left:30%;
font-family: monospace;
text-decoration: none;
/* text-align: center; */
}
#menu a{
 text-align: center; 
}
#menu-bar{
width: 300px;
	border-radius: 5px;
	position: relative;
	float: left;
	margin-left: 10px;
	margin-top: 10px;
}
.tab,.tab1,.tab2,.tab3,.tab4,.tab5{
/* background: red; */
border-radius: 5px;
	position: relative;
	float: left;
	width: 1150px;
	margin-left: 30px;
	margin-top: 10px;
	height: 650px;
		
}
.tab{
overflow: hidden;
box-shadow: 2px 2px 2px 3px #c0c0c0;
}
.table{
margin-left:2%;
width: 90%;
height: 75%;
/* background: blue; */
}

caption{
font-size: 20px;
text-align: center;
font-family: cursive;

}
/* #header{ */
/* height: 100px; */
/* position: relative; */
/* float: right; */
/* width: 1150px; */
/* /* background: red; */ */
/* margin-right: 50px; */
/* 	margin-top: 10px; */
/* 	border-radius: 5px; */
/* } */
.nav-pills>li.active>a, .nav-pills>li.active>a:hover, .nav-pills>li.active>a:focus {
    color: #fff;
    background-color: #222;
}
.modal .modal-body form>input,.modal .modal-body form>select{
	background: #F0F0F0;
	width: 220px;
	font-size: 18px;
	border-radius: 5px;
	height: 40px;
	margin-left: 5px;
	margin-top: 30px
}
.modal .modal-body form>span {
	margin-left: 100px;
	font-family: monospace;
	font-size: 18px;
	margin-top: 30px;
}

.modal .modal-body form>label {
	font-family: monospace;
	font-size: 18px;
	margin-top: 30px;
	width: 90px;
}
.modal .modal-body form>div{
width: 55%;
margin-top: 30px;
margin-left: 20%;
}

}
</style>
</head>
<body>
<div id="menu-bar">
	<div id="info">
		<dl>
			<dd>
				<img src="resources/img/${admin.img}">
			</dd>
			<dt style="text-align: center;">
				<h3>
					<a>${admin.name}</a>
				</h3>
				<br /> <label>最后登录时间</label><label id="data">${admin.lastlogtime}</label>
			</dt>
			<dt>
				<span style="position: relative; bottom: -20px;left: 42%"><a
					href="index.jsp" style="color: black;">安全退出</a><span
					class="icon-redo2"></span></span>
			</dt>
		</dl>
	</div>
	<div id="menu">
		<div class="list-group" style="margin-bottom: 5px">
			<a href="##" class="list-group-item active">信息查看和审核<span class="badge"></span></a>
			
		</div>
		<div class="panel-group" id="accordion">
			<div class="panel panel-success">
				<div class="panel-heading">
					<h4 class="panel-title" >
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapseOne">学生信息<span
							class="badge"></span> </a> 
					</h4>
				</div>
				<div id="collapseOne" class="panel-collapse collapse in">
					<div class="panel-body"><a href="#">学生信息<span
							class="badge"></span></a></div>
						
				</div>
			</div>
			<div class="panel panel-info">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapseTwo"> 社团信息<span
							class="badge"></span></a> 
					</h4>
				</div>
				<div id="collapseTwo" class="panel-collapse collapse">
					<div class="panel-body"><a href="#">社团信息<span
							class="badge"></span></a></div>
						<div class="panel-body"><a href="#">社团审核<span
							class="badge"></span></a></div>
				</div>
			</div>
			<div class="panel panel-warning">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapseThree"> 活动信息<span
							class="badge"></span> </a></span>
					</h4>
				</div>
				<div id="collapseThree" class="panel-collapse collapse">
					<div class="panel-body"><a href="#">活动信息 <span
							class="badge"></a></div>
						<div class="panel-body"><a href="#">活动审核 <span
							class="badge"> </a></span></div>
				</div>
			</div>

		</div>
	</div>
	</div>

	<div class="tab">
		<div class="tab1">
			<table class="table table-striped table-hover">
				<caption>学生信息</caption>
				<thead>
					<tr>
<!-- 					 style="display: none" -->
<!-- 					    <th>id</th> -->
						<th>学号</th>
						<th>姓名</th>
						<th>最后登录时间</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
			<ul class="pagination pagination" style="margin-left: 35%">
				<li><a class="prvpage" href="#">&laquo;前一页</a></li>
				<li><a class="totalpage" href="#">
				<label>共</label>
				<input style="width: 20px" type="text" >
				<span></span>
				<label>/</label>
				<label>页</label></a></li>
				<li><a href="#"><button class="btn btn-sm btn-primary tiao">跳转</button></a></li>
				<li><a class="nextpage" href="#">后一页&raquo;</a></li>
			</ul>
		</div>
		<div class="tab2">
		<table class="table table-striped table-hover">
				<caption>社团信息</caption>
				<thead>
					<tr>
						<th>社团名称</th>
						<th>社团类别</th>
						<th>最后发布活动时间</th>
						<th>社团成立时间</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
			<ul class="pagination pagination" style="margin-left: 35%">
				<li><a class="prvpage" href="#">&laquo;前一页</a></li>
				<li><a class="totalpage" href="#">
				<label>共</label>
				<input style="width: 20px" type="text" >
				<span></span>
				<label>/</label>
				<label>页</label></a></li>
				<li><a href="#"><button class="btn btn-sm btn-primary tiao">跳转</button></a></li>
				<li><a class="nextpage" href="#">后一页&raquo;</a></li>
			</ul>
		</div>
		<div class="tab3">
		<table class="table table-striped table-hover">
				<caption>社团审核</caption>
				<thead>
					<tr>
						<th>社团名称</th>
						<th>社团类别</th>
						<th>申请时间</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
			<ul class="pagination pagination" style="margin-left: 35%">
				<li><a class="prvpage" href="#">&laquo;前一页</a></li>
				<li><a class="totalpage" href="#">
				<label>共</label>
				<input style="width: 20px" type="text" >
				<span></span>
				<label>/</label>
				<label>页</label></a></li>
				<li><a href="#"><button class="btn btn-sm btn-primary tiao">跳转</button></a></li>
				<li><a class="nextpage" href="#">后一页&raquo;</a></li>
			</ul>
		</div>
		<div class="tab4">
		<table class="table table-striped table-hover">
				<caption>活动信息</caption>
				<thead>
					<tr>
						<th>活动名称</th>
						<th>社团名称</th>
						<th>活动地址</th>
						<th>活动时间</th>
						<th>活动申请时间</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
			<ul class="pagination pagination" style="margin-left: 35%">
				<li><a class="prvpage" href="#">&laquo;前一页</a></li>
				<li><a class="totalpage" href="#">
				<label>共</label>
				<input style="width: 20px" type="text" >
				<span></span>
				<label>/</label>
				<label>页</label></a></li>
				<li><a href="#"><button class="btn btn-sm btn-primary tiao">跳转</button></a></li>
				<li><a class="nextpage" href="#">后一页&raquo;</a></li>
			</ul>
		</div>
		<div class="tab5">
		<table class="table table-striped table-hover" >
				<caption>活动审核</caption>
				<thead>
					<tr>
						<th>活动名称</th>
						<th>社团名称</th>
						<th>活动地址</th>
						<th>活动时间</th>
						<th>活动申请时间</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
			<ul class="pagination pagination" style="margin-left: 35%">
				<li><a class="prvpage" href="#">&laquo;前一页</a></li>
				<li><a class="totalpage" href="#">
				<label>共</label>
				<input style="width: 20px" type="text" >
				<span></span>
				<label>/</label>
				<label>页</label></a></li>
				<li><a href="#"><button class="btn btn-sm btn-primary tiao">跳转</button></a></li>
				<li><a class="nextpage" href="#">后一页&raquo;</a></li>
			</ul>
		</div>
	</div>
	<input type="hidden" id="pagelength"/>
	<input type="hidden" id="nowpage" value="0"/>
	<input type="hidden" id="pagedata" value="0"/>
<div id="footer">
		<p>Copyright © 2017 com.yang All Rights Reserved |作者:杨鹏</p>
</div>

<div class="modal fade stuupdatemodal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	<div class="modal-dialog ">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
				<h4 class="modal-title">修改学生信息</h4>
			</div>
			<div class="modal-body">
<!-- 			修改学生信息 -->
				<form action="updateStuById.do" method="post">
				<input type="hidden" name="id" />
				<span class="icon-user"> <label>学生账号:</label>
					</span> <input type="text" name="stuno" /> <br> 
					<span class="icon-key"> <label>密码:</label>
					</span> <input  type="text" name="password" />
					<br> <span
						class="icon-profile"> <label>学生姓名:</label>
					</span> <input  type="text" name="name" />
<!-- 					<button type="submit" class="btn btn-info btn-lg active">修改</button> -->
			</div>
			<div class="modal-footer">
			<button type="submit" class="btn btn-info updatebtn">修改</button>
			<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
			</div>
			</form>
		</div>
	</div>
</div>
<div class="modal fade clubupdatemodal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	<div class="modal-dialog ">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
				<h4 class="modal-title">修改社团信息</h4>
			</div>
			<div class="modal-body">
			<form action="updateClubById.do" method="post">
				<input type="hidden" name="id" />
				<span class="icon-user"> <label>社团账号:</label>
					</span> <input type="text" name="clubno" /> <br> <span
						class="icon-key"> <label>密码:</label>
					</span> <input  type="text" name="password" />
					<br> <span
						class="icon-profile"> <label>社团姓名:</label>
					</span> <input  type="text" name="clubname" />
					<br> <span
						class="icon-pacman"> <label>社团性质:</label>
					</span> 
					
					  <select name="natrue"> 
					    <option value="文学">文学</option> 
					    <option value="体育">体育</option> 
					    <option value="公益">公益</option> 
					    <option value="娱乐">娱乐</option> 
					    <option value="话剧">话剧</option> 
					    </select>
			</div>
			<div class="modal-footer">
			<button type="submit" class="btn btn-info updatebtn">修改</button>
			<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
			</div>
			</form>
		</div>
	</div>
</div>
<div class="modal fade actupdatemodal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	<div class="modal-dialog ">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
				<h4 class="modal-title">修改活动信息</h4>
			</div>
			<div class="modal-body">
			
			<form action="updateActById.do" method="post">
						<input type="hidden" name="id" /> <span class="icon-user">
							<label>活动名称:</label>
						</span> <input type="text" name="name" /> <br> <span
							class="icon-key"> <label>活动内容:</label>
						</span> <input type="text" name="context" /> <br> <span
							class="icon-profile"> <label>活动地址:</label>
						</span> <input type="text" name="address" />
						
						<div class='input-group date' id='datetimepicker' >
							<input type="text" name="time" class="form-control"
								placeholder="输入活动日期" onfocus="this.placeholder=''"
								onblur="this.placeholder='输入活动日期'" /> <span
								class="input-group-addon"> <span
								class="glyphicon glyphicon-calendar"></span>
							</span>
						</div>

						<!-- 					<button type="submit" class="btn btn-info btn-lg active">修改</button> -->
			</div>
			<div class="modal-footer">
			<button type="submit" class="btn btn-info ">修改</button>
			<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
			</form>
			</div>
			
		</div>
	</div>
</div>

</body>
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.js"></script>
<script src="resources/js/moment-with-locales.min.js"></script>
<script src="resources/js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript">
$(function() {
	$("#collapseOne .panel-body a").click(function() {
		$(".tab .tab1").show().siblings().hide();
	});
	$("#collapseTwo .panel-body a:eq(0)").click(function() {
		$(".tab .tab2").show().siblings().hide();
	});
	$("#collapseTwo .panel-body a:eq(1)").click(function() {
		$(".tab .tab3").show().siblings().hide();
	});
	$("#collapseThree .panel-body a:eq(0)").click(function() {
		$(".tab .tab4").show().siblings().hide();
	});
	$("#collapseThree .panel-body a:eq(1)").click(function() {
		$(".tab .tab5").show().siblings().hide();
	});
	var pagesize = 3;
	var page;
// 	页面加载时直接在在所有学生信息
	$.ajax({
		type : "post",
		url : "findAllStu.do",
		async : false,//同步：意思是当有返回值以后才会进行后面的js程序。
		dataType : "json",
		success : function(data) {
			debugger;
			console.log(data);
			$("#pagedata").val(JSON.stringify(data));
			var pagelength =Math.ceil(data.length/pagesize); 
			$("#pagelength").val(pagelength);
			var html = "";
			if(data.length<pagesize){
				page =data.length;
			}else{
				page = pagesize;
			}
// 			
				for (var i = 0; i < page; i++) {
					html += "<tr><td style='display: none;'>" + data[i].id
					        +"</td><td>" + data[i].stuno
							+ "</td><td>" + data[i].name
							+ "</td><td>" + data[i].lastlogtime
							+ "</td><td>" +
							"<button class='btn btn-sm btn-info stuupdate'"
							+"data-toggle='modal' data-target='.stuupdatemodal'>"+
							"修改"+"</button>"+
							"<button class='btn btn-sm btn-info studel'>"+
// 							+"data-toggle='modal' data-target='.studelmodal'>"+
							"删除"+"</button>"
							+ "</td></tr>";
				}
				$('.tab .tab1').find('tbody').html(html);
				$('.tab .tab1 span').text(pagelength);
				$('.tab .tab1 .totalpage input').val("1");
		}
	});
// 	查找表格中需要修改的学生数据，显示在弹出框中
	$(".tab1").on("click",".stuupdate",function(){
		debugger;
		var id =$(this).parents("tr").children("td:nth-child(1)").text();
		$.ajax({
			type : "post",
			url : "findStuById.do",
			data:{
				id:id
			},
			async : false,//同步：意思是当有返回值以后才会进行后面的js程序。
			dataType : "json",
			success : function(data) {
				var stuno = data.stuno;
				var password = data.password;
				var name = data.name;
				var id = data.id;
				$("input[name=id]").val(id);
				$("input[name=stuno]").val(stuno);
				$("input[name=password]").val(password);
				$("input[name=name]").val(name);
				$('.stuupdatemodal').modal('hide');
				
// 				console.log(data);
			}
		});	
	});
// 	学生信息是否删除
	$(".tab1").on("click",".studel",function(){
// 	$(".studel").click(function(){
// 		debugger;
		var id =$(this).parents("tr").children("td:nth-child(1)").text();
		var con= confirm("确定删除该学生？");
		if(con==true){
		$.ajax({
			type : "post",
			url : "delStuById.do",
			data:{
				id:id
			},
			async : false,//同步：意思是当有返回值以后才会进行后面的js程序。
			dataType : "json",
			success : function(data) {
				$("#menu .badge:eq(1)").text($("#menu .badge:eq(1)").text()-1);
				$("#menu .badge:eq(0)").text($("#menu .badge:eq(0)").text()-1);
				 $("#menu .badge:eq(2)").text($("#menu .badge:eq(2)").text()-1);
			
				console.log(data);
			}
		});	
		}
	});
// 	查找表格中需要修改的社团数据，显示在弹出框中
	$(".tab2").on("click",".clubupdate",function(){
// 	$(".clubupdate").click(function(){
		debugger;
		var id =$(this).parents("tr").children("td:nth-child(1)").text();
		$.ajax({
			type : "post",
			url : "findClubById.do",
			data:{
				id:id
			},
			async : false,//同步：意思是当有返回值以后才会进行后面的js程序。
			dataType : "json",
			success : function(data) {
				debugger;
				var clubno = data.clubno;
				var password = data.password;
				var clubname = data.clubname;
				var natrue = data.natrue;
				var id = data.id;
				$("input[name=id]").val(id);
				$("input[name=clubno]").val(clubno);
				$("input[name=password]").val(password);
				$("input[name=clubname]").val(clubname);
				$("select[name=natrue]").val(natrue);
				$('.clubupdatemodal').modal('hide');
				alert("社团信息修改成功！");
			}
		});	
	});
// 	是否删除社团信息
	$(".tab2").on("click",".clubdel",function(){
// 	$(".clubdel").click(function(){
// 		debugger;
		var id =$(this).parents("tr").children("td:nth-child(1)").text();
		var con= confirm("确定删除该社团？");
		if(con==true){
		$.ajax({
			type : "post",
			url : "delClubById.do",
			data:{
				id:id
			},
			async : false,//同步：意思是当有返回值以后才会进行后面的js程序。
			dataType : "json",
			success : function(data) {
				$("#menu .badge:eq(3)").text($("#menu .badge:eq(3)").text()-1);
				$("#menu .badge:eq(0)").text($("#menu .badge:eq(0)").text()-1);
			
				 $("#menu .badge:eq(4)").text($("#menu .badge:eq(4)").text()-1);
				console.log(data);
				alert("社团删除成功！");
			}
		});	
		}
	});
// 	审核社团信息
	$(".tab3").on("click",".clubshenhe",function(){

			var id =$(this).parents("tr").children("td:nth-child(1)").text();
			var con= confirm("通过社团注册申请？（确定同意，取消不同意）");
			if(con==true){
			$.ajax({
				type : "post",
				url : "shenHePassClubById.do",
				data:{
					id:id
				},
				async : false,//同步：意思是当有返回值以后才会进行后面的js程序。
// 				dataType : "json",
				success : function() {
					
				debugger;
					$("#menu .badge:eq(5)").text($("#menu .badge:eq(5)").text()-1);
					 $("#menu .badge:eq(4)").text(parseInt($("#menu .badge:eq(4)").text())+1);
// 					 alert("社团注册成功！");
// 					   window.location.reload();
				}
			});	
			}else{
				$.ajax({
					type : "post",
					url : "delClubById.do",
					data:{
						id:id
					},
					async : false,//同步：意思是当有返回值以后才会进行后面的js程序。
// 					dataType : "json",
					success : function() {
						$("#menu .badge:eq(5)").text($("#menu .badge:eq(5)").text()-1);
						$("#menu .badge:eq(0)").text($("#menu .badge:eq(0)").text()-1);
						 $("#menu .badge:eq(3)").text($("#menu .badge:eq(3)").text()-1);
// 						 window.location.reload();
						 alert("社团注册失败！");
					}
				});	
			}
			$.ajax({
				type : "post",
				url : "findAllShenHeClub.do",
				async : false,//同步：意思是当有返回值以后才会进行后面的js程序。
				dataType : "json",
				success : function(data) {
					debugger;
					console.log(data);
					$("#pagedata").val(JSON.stringify(data));
					var pagelength =Math.ceil(data.length/pagesize); 
					$("#pagelength").val(pagelength);
					var html = "";
					if(data.length<pagesize){
						page =data.length;
					}else{
						page = pagesize;
					}
					for (var i = 0; i < page; i++) {
						
						html += "<tr><td style='display: none;'>" + data[i].id
				        +"</td><td>" + data[i].clubname
						+ "</td><td>" + data[i].natrue
						+ "</td><td>" + data[i].regtime
						+ "</td><td>" +
						"<button class='btn  btn-info clubshenhe'>"+"审核"+"</button>"
						+ "</td></tr>";
					}
					$('.tab .tab3').find('tbody').html(html);
					$('.tab .tab3 span').text(pagelength);
					$('.tab .tab3 .totalpage input').val("1");
				}
			});
		});
	
// 	查找表格中需要修改的活动数据，显示在弹出框中
	$(".tab4").on("click",".actupdate",function(){
// 	$(".actupdate").click(function(){
// 		debugger;
		var id =$(this).parents("tr").children("td:nth-child(1)").text();
		$.ajax({
			type : "post",
			url : "findActById.do",
			data:{
				id:id
			},
			async : false,//同步：意思是当有返回值以后才会进行后面的js程序。
			dataType : "json",
			success : function(data) {
				console.log(data);
				debugger;
// 				id,name,context, address, time
				var name = data.name;
				var context = data.context;
				var address = data.address;
				var natrue = data.natrue;
				var time = data.time;
				var id = data.id;
				$("input[name=id]").val(id);
				$("input[name=name]").val(name);
				$("input[name=address]").val(address);
				$("input[name=context]").val(context);
				$("input[name=time]").val(time);
// 				$('.actupdatemodal').modal('hide');
// 				alert("活动信息修改成功！");
			}
		});	
	});
// 	删除活动信息
	$(".tab4").on("click",".actdel",function(){
// 	$(".actdel").click(function(){
// 		debugger;
		var id =$(this).parents("tr").children("td:nth-child(1)").text();
		var con= confirm("确定删除该活动？");
		if(con==true){
		$.ajax({
			type : "post",
			url : "delActById.do",
			data:{
				id:id
			},
			async : false,//同步：意思是当有返回值以后才会进行后面的js程序。
			dataType : "json",
			success : function(data) {
				$("#menu .badge:eq(6)").text($("#menu .badge:eq(6)").text()-1);
				$("#menu .badge:eq(0)").text($("#menu .badge:eq(0)").text()-1);
				$("#menu .badge:eq(7)").text($("#menu .badge:eq(7)").text()-1);
				console.log(data);
				alert("活动删除成功！");
			}
		});	
		}
	});
// 	是否通过社团活动申请
	$(".tab5").on("click",".actshenhe",function(){

		var id =$(this).parents("tr").children("td:nth-child(1)").text();
		var con= confirm("通过活动发布申请？（确定同意，取消不同意）");
		if(con==true){
		$.ajax({
			type : "post",
			url : "shenHePassActById.do",
			data:{
				id:id
			},
			async : false,//同步：意思是当有返回值以后才会进行后面的js程序。
// 			dataType : "json",
			success : function() {
				$("#menu .badge:eq(8)").text($("#menu .badge:eq(8)").text()-1);
				 $("#menu .badge:eq(7)").text(parseInt($("#menu .badge:eq(7)").text())+1);
				 
				 alert("活动发布成功！");
// 				 window.location.reload();
			}
		});	
		}else{
			$.ajax({
				type : "post",
				url : "delActById.do",
				data:{
					id:id
				},
				async : false,//同步：意思是当有返回值以后才会进行后面的js程序。
// 				dataType : "json",
				success : function() {
					$("#menu .badge:eq(8)").text($("#menu .badge:eq(8)").text()-1);
					$("#menu .badge:eq(0)").text($("#menu .badge:eq(0)").text()-1);
					 $("#menu .badge:eq(6)").text($("#menu .badge:eq(6)").text()-1);
					 
					 alert("活动发布失败！");
// 					 window.location.reload();
				}
			});	
		}
		
		$.ajax({
			type : "post",
			url : "findAllShenHeActivity.do",
			async : false,//同步：意思是当有返回值以后才会进行后面的js程序。
			dataType : "json",
			success : function(data) {
				debugger;
				console.log(data);
				$("#pagedata").val(JSON.stringify(data));
				var pagelength =Math.ceil(data.length/pagesize); 
				$("#pagelength").val(pagelength);
				var html = "";
				if(data.length<pagesize){
					page =data.length;
				}else{
					page = pagesize;
				}
				for (var i = 0; i < page; i++) {
					
					html += "<tr><td style='display: none;'>" + data[i].id
			        +"</td><td>" + data[i].name
					+ "</td><td>" + data[i].clubname
					+ "</td><td>" + data[i].address
					+ "</td><td>" + data[i].time
					+ "</td><td>" + data[i].releasetime
					+ "</td><td>" +
					"<button class='btn btn-info actshenhe'>"+"审核"+"</button>"

					+ "</td></tr>";
					
				}
				$('.tab .tab5').find('tbody').html(html);
				$('.tab .tab5 span').text(pagelength);
				$('.tab .tab5 .totalpage input').val("1");
			}
		});
	});
// 	点击显示学生信息
	$("#collapseOne").click(function(){
		$.ajax({
			type : "post",
			url : "findAllStu.do",
			async : false,//同步：意思是当有返回值以后才会进行后面的js程序。
			dataType : "json",
			success : function(data) {
				debugger;
				console.log(data);
				$("#pagedata").val(JSON.stringify(data));
				var pagelength =Math.ceil(data.length/pagesize); 
				$("#pagelength").val(pagelength);
				var html = "";
				if(data.length<pagesize){
					page =data.length;
				}else{
					page = pagesize;
				}
				for (var i = 0; i < page; i++) {
					html += "<tr><td style='display: none;'>" + data[i].id
			        +"</td><td>" + data[i].stuno
					+ "</td><td>" + data[i].name
					+ "</td><td>" + data[i].lastlogtime
					+ "</td><td>" +
					"<button class='btn btn-sm btn-info stuupdate'"
					+"data-toggle='modal' data-target='.stuupdatemodal'>"+
					"修改"+"</button>"+
					"<button class='btn btn-sm btn-info studel'>"+
// 					+"data-toggle='modal' data-target='.studelmodal'>"+
					"删除"+"</button>"
					+ "</td></tr>";
				}
// 				$('.tab .tab1').find('tbody').empty(); 
				$('.tab .tab1').find('tbody').html(html);
				$('.tab .tab1 span').text(pagelength);
				$('.tab .tab1 .totalpage input').val("1");
				
			}
		});
	});
	$("#collapseTwo div:eq(0)").click(function(){
		$.ajax({
			type : "post",
			url : "findAllClub.do",
			async : false,//同步：意思是当有返回值以后才会进行后面的js程序。
			dataType : "json",
			success : function(data) {
				debugger;
				console.log(data);
				$("#pagedata").val(JSON.stringify(data));
				var pagelength =Math.ceil(data.length/pagesize); 
				$("#pagelength").val(pagelength);
				var html = "";
				if(data.length<pagesize){
					page =data.length;
				}else{
					page = pagesize;
				}
				for (var i = 0; i < page; i++) {
					html += "<tr><td style='display: none;'>" + data[i].id
			        +"</td><td>" + data[i].clubname
					+ "</td><td>" + data[i].natrue
					+ "</td><td>" + data[i].releasetime
					+ "</td><td>" + data[i].passtime
					+ "</td><td>" +
					"<button class='btn btn-sm btn-info clubupdate'"
					+"data-toggle='modal' data-target='.clubupdatemodal'>"+
					"修改"+"</button>"+
					"<button class='btn btn-sm btn-info clubdel'>"+
// 					+"data-toggle='modal' data-target='.clubdelmodal'>"+
					"删除"+"</button>"
					+ "</td></tr>";
				}
				$('.tab .tab2').find('tbody').html(html);
				$('.tab .tab2 span').text(pagelength);
				$('.tab .tab2 .totalpage input').val("1");
			}
		});
	});
	
	$("#collapseTwo div:eq(1)").click(function(){
		$.ajax({
			type : "post",
			url : "findAllShenHeClub.do",
			async : false,//同步：意思是当有返回值以后才会进行后面的js程序。
			dataType : "json",
			success : function(data) {
				debugger;
				console.log(data);
				$("#pagedata").val(JSON.stringify(data));
				var pagelength =Math.ceil(data.length/pagesize); 
				$("#pagelength").val(pagelength);
				var html = "";
				if(data.length<pagesize){
					page =data.length;
				}else{
					page = pagesize;
				}
				for (var i = 0; i < page; i++) {
					
					html += "<tr><td style='display: none;'>" + data[i].id
			        +"</td><td>" + data[i].clubname
					+ "</td><td>" + data[i].natrue
					+ "</td><td>" + data[i].regtime
					+ "</td><td>" +
					"<button class='btn  btn-info clubshenhe'>"+"审核"+"</button>"
					+ "</td></tr>";
				}
				$('.tab .tab3').find('tbody').html(html);
				$('.tab .tab3 span').text(pagelength);
				$('.tab .tab3 .totalpage input').val("1");
			}
		});
	});
	
	$("#collapseThree div:eq(0)").click(function(){
		$.ajax({
			type : "post",
			url : "findAllActivity.do",
			async : false,//同步：意思是当有返回值以后才会进行后面的js程序。
			dataType : "json",
			success : function(data) {
				debugger;
				console.log(data);
				$("#pagedata").val(JSON.stringify(data));
				var pagelength =Math.ceil(data.length/pagesize); 
				$("#pagelength").val(pagelength);
				var html = "";
				if(data.length<pagesize){
					page =data.length;
				}else{
					page = pagesize;
				}
				for (var i = 0; i < page; i++) {
					html += "<tr><td style='display: none;'>" + data[i].id
			        +"</td><td>" + data[i].name
					+ "</td><td>" + data[i].clubname
					+ "</td><td>" + data[i].address
					+ "</td><td>" + data[i].time
					+ "</td><td>" + data[i].releasetime
					+ "</td><td>" +
					"<button class='btn btn-sm btn-info actupdate'"
					+"data-toggle='modal' data-target='.actupdatemodal'>"+
					"修改"+"</button>"+
					"<button class='btn btn-sm btn-info actdel'>"+
// 					+"data-toggle='modal' data-target='.actdelmodal'>"+
					"删除"+"</button>"
					+ "</td></tr>";

				}
				$('.tab .tab4').find('tbody').html(html);
				$('.tab .tab4 span').text(pagelength);
				$('.tab .tab4 .totalpage input').val("1");
			}
		});
	});
	
	$("#collapseThree div:eq(1)").click(function(){
		$.ajax({
			type : "post",
			url : "findAllShenHeActivity.do",
			async : false,//同步：意思是当有返回值以后才会进行后面的js程序。
			dataType : "json",
			success : function(data) {
				debugger;
				console.log(data);
				$("#pagedata").val(JSON.stringify(data));
				var pagelength =Math.ceil(data.length/pagesize); 
				$("#pagelength").val(pagelength);
				var html = "";
				if(data.length<pagesize){
					page =data.length;
				}else{
					page = pagesize;
				}
				for (var i = 0; i < page; i++) {
					
					html += "<tr><td style='display: none;'>" + data[i].id
			        +"</td><td>" + data[i].name
					+ "</td><td>" + data[i].clubname
					+ "</td><td>" + data[i].address
					+ "</td><td>" + data[i].time
					+ "</td><td>" + data[i].releasetime
					+ "</td><td>" +
					"<button class='btn btn-info actshenhe'>"+"审核"+"</button>"

					+ "</td></tr>";
					
				}
				$('.tab .tab5').find('tbody').html(html);
				$('.tab .tab5 span').text(pagelength);
				$('.tab .tab5 .totalpage input').val("1");
			}
		});
	});
	
	
	
// 	$(".updatebtn").click(function(){
// 		$('.stuupdatemodal').modal('hide');
// 		$('.clubupdatemodal').modal('hide');
// 		$('.actupdatemodal').modal('hide');
// 	});
// 	$('.activitymodal').on('hide.bs.modal', function () {
// 		debugger;
// 		if($("#haha").val()==null||$("#haha").val()==''){
// //				$("#"+currentId).attr('src',currentSrc); 
// //				$("#publish  input[name=img]").val(currentSrc);
// 		}else{
// //				$("#"+currentId).attr('src',"../resources/images/upload/"+$("#haha").val()); 
// 			$("#scimg").val($("#haha").val());
// 		}
// 	});
	
	
	
	var alltotal,stutotal,stulen,clubtotal,clublen,clubshenhe,activitytotal,activityshenhe,activitylen;
// 	显示各个数据条数
	$.ajax({
		type : "post",
		url : "total.do",
		async : false,//同步：意思是当有返回值以后才会进行后面的js程序。
// 		dataType : "json",
		success : function(data) {
			debugger;
			console.log(data);
			  var total = data.split(",");
			  stulen = total[0];
			  clublen = total[1];
			  clubshenhe = total[2];
			  activitylen = total[3];
			  activityshenhe = total[4];
			  stutotal = parseInt(stulen);
			  clubtotal = parseInt(clublen)+ parseInt(clubshenhe);
			  activitytotal= parseInt(activitylen)+parseInt(activityshenhe);
			  alltotal = stutotal+clubtotal+activitytotal;
			  $("#menu .badge:eq(0)").text(alltotal);
			  $("#menu .badge:eq(1)").text(stutotal);
			  $("#menu .badge:eq(2)").text(stulen);
			  $("#menu .badge:eq(3)").text(clubtotal);
			  $("#menu .badge:eq(4)").text(clublen);
			  $("#menu .badge:eq(5)").text(clubshenhe);
			  $("#menu .badge:eq(6)").text(activitytotal);
			  $("#menu .badge:eq(7)").text(activitylen);
			  $("#menu .badge:eq(8)").text(activityshenhe);
		}
	});
	
// 	跳转页面
	$(".tiao").click(function(){
		var inputpage = $(this).parent().parent().parent().find('input').val();
		debugger;
		
		var data =JSON.parse($("#pagedata").val()); 
		var datalength = data.length;
		var pagelength = $("#pagelength").val();
	
		if(inputpage<0||inputpage>pagelength){
			alert("没有你选择的这一页！");
			return false;
		}else{
			
				$("#nowpage").val(inputpage-1);
				var nowpage = $("#nowpage").val();
			var html = "";
			var len ;
			var startpage = pagesize*(nowpage);
			if(startpage+pagesize>datalength){
				len =(datalength%(startpage)+startpage);
			}else{
				len = startpage+pagesize;
			}
            var pos = $(this).parent().parent().parent().parent()[0];
			for (var i =startpage ; i <len; i++) {
				if(pos==$(".tab1")[0]){
					html += "<tr><td style='display: none;'>" + data[i].id
			        +"</td><td>" + data[i].stuno
					+ "</td><td>" + data[i].name
					+ "</td><td>" + data[i].lastlogtime
					+ "</td><td>" +
					"<button class='btn btn-sm btn-info stuupdate'"
					+"data-toggle='modal' data-target='.stuupdatemodal'>"+
					"修改"+"</button>"+
					"<button class='btn btn-sm btn-info studel'>"+
// 					+"data-toggle='modal' data-target='.studelmodal'>"+
					"删除"+"</button>"
					+ "</td></tr>";
				}else if(pos==$(".tab2")[0]||
						pos==$(".tab3")[0]){
					html += "<tr><td style='display: none;'>" + data[i].id
			        +"</td><td>" + data[i].clubname
					+ "</td><td>" + data[i].natrue
					+ "</td><td>" + data[i].releasetime
					+ "</td><td>" + data[i].passtime
					+ "</td><td>" +
					"<button class='btn btn-sm btn-info clubupdate'"
					+"data-toggle='modal' data-target='.clubupdatemodal'>"+
					"修改"+"</button>"+
					"<button class='btn btn-sm btn-info clubdel'>"+
// 					+"data-toggle='modal' data-target='.clubdelmodal'>"+
					"删除"+"</button>"
					+ "</td></tr>";
				}else if(pos==$(".tab4")[0]||
						pos==$(".tab5")[0]){
					html += "<tr><td style='display: none;'>" + data[i].id
			        +"</td><td>" + data[i].name
					+ "</td><td>" + data[i].clubname
					+ "</td><td>" + data[i].address
					+ "</td><td>" + data[i].time
					+ "</td><td>" + data[i].releasetime
					+ "</td><td>" +
					"<button class='btn btn-sm btn-info actupdate'"
					+"data-toggle='modal' data-target='.actupdatemodal'>"+
					"修改"+"</button>"+
					"<button class='btn btn-sm btn-info actdel'>"+
// 					+"data-toggle='modal' data-target='.actdelmodal'>"+
					"删除"+"</button>"
					+ "</td></tr>";
				}
			}
// 			$(this).parent().parent().find('input').val(nowpage);
			$(this).parent().parent().parent().parent().find('tbody').html(html);
		}	
	});
	
	
	
	
// 	分页的下一页
	$(".nextpage").click(function(){
		debugger;
		var data =JSON.parse($("#pagedata").val()); 
		var datalength = data.length;
		var pagelength = $("#pagelength").val();
		
		var nowpage = parseInt($("#nowpage").val());
			
		if(pagelength==nowpage+1){
			alert("这已经是最后一页了！");
			return false;
		}else{
			$("#nowpage").val(parseInt($("#nowpage").val())+1);
			var html = "";
			var len ;
			var startpage = pagesize*(nowpage+1);
			if(startpage+pagesize>datalength){
				len =(datalength%(startpage)+startpage);
			}else{
				len = startpage+pagesize;
			}
			var pos = $(this).parent().parent().parent()[0];
			for (var i =startpage ; i <len ; i++) {
				if(pos==$(".tab1")[0]){
					html += "<tr><td style='display: none;'>" + data[i].id
			        +"</td><td>" + data[i].stuno
					+ "</td><td>" + data[i].name
					+ "</td><td>" + data[i].lastlogtime
					+ "</td><td>" +
					"<button class='btn btn-sm btn-info stuupdate'"
					+"data-toggle='modal' data-target='.stuupdatemodal'>"+
					"修改"+"</button>"+
					"<button class='btn btn-sm btn-info studel'>"+
// 					+"data-toggle='modal' data-target='.studelmodal'>"+
					"删除"+"</button>"
					+ "</td></tr>";
				}else if(pos==$(".tab2")[0]||
						pos==$(".tab3")[0]){
					html += "<tr><td style='display: none;'>" + data[i].id
			        +"</td><td>" + data[i].clubname
					+ "</td><td>" + data[i].natrue
					+ "</td><td>" + data[i].releasetime
					+ "</td><td>" + data[i].passtime
					+ "</td><td>" +
					"<button class='btn btn-sm btn-info clubupdate'"
					+"data-toggle='modal' data-target='.clubupdatemodal'>"+
					"修改"+"</button>"+
					"<button class='btn btn-sm btn-info clubdel'>"+
// 					+"data-toggle='modal' data-target='.clubdelmodal'>"+
					"删除"+"</button>"
					+ "</td></tr>";
				}else if(pos==$(".tab4")[0]||
						pos==$(".tab5")[0]){
					html += "<tr><td style='display: none;'>" + data[i].id
			        +"</td><td>" + data[i].name
					+ "</td><td>" + data[i].clubname
					+ "</td><td>" + data[i].address
					+ "</td><td>" + data[i].time
					+ "</td><td>" + data[i].releasetime
					+ "</td><td>" +
					"<button class='btn btn-sm btn-info actupdate'"
					+"data-toggle='modal' data-target='.actupdatemodal'>"+
					"修改"+"</button>"+
					"<button class='btn btn-sm btn-info actdel'>"+
// 					+"data-toggle='modal' data-target='.actdelmodal'>"+
					"删除"+"</button>"
					+ "</td></tr>";
				}
			}
			$(this).parent().parent().find('input').val(nowpage+2);
			$(this).parent().parent().parent().find('tbody').html(html);
		}	
	});
// 	分页的上一页
	$(".prvpage").click(function(){
		debugger;
		var data =JSON.parse($("#pagedata").val()); 
		var datalength = data.length;
		var pagelength = $("#pagelength").val();
		
		var nowpage = parseInt($("#nowpage").val());
			
		if(nowpage==0){
			alert("这已经是第一页了！");
			return false;
		}else{
			$("#nowpage").val(parseInt($("#nowpage").val())-1);
			var html = "";
// 			var len ;
			var startpage = pagesize*(nowpage-1);
// 			if(startpage+3>datalength){
// 				len =(datalength%(startpage)+startpage);
// 			}else{
// 				len = startpage+3;
// 			}
            var pos = $(this).parent().parent().parent()[0];
			for (var i =startpage ; i <startpage+pagesize; i++) {
				if(pos==$(".tab1")[0]){
					html += "<tr><td style='display: none;'>" + data[i].id
			        +"</td><td>" + data[i].stuno
					+ "</td><td>" + data[i].name
					+ "</td><td>" + data[i].lastlogtime
					+ "</td><td>" +
					"<button class='btn btn-sm btn-info stuupdate'"
					+"data-toggle='modal' data-target='.stuupdatemodal'>"+
					"修改"+"</button>"+
					"<button class='btn btn-sm btn-info studel'>"+
// 					+"data-toggle='modal' data-target='.studelmodal'>"+
					"删除"+"</button>"
					+ "</td></tr>";
				}else if(pos==$(".tab2")[0]||
						pos==$(".tab3")[0]){
					html += "<tr><td style='display: none;'>" + data[i].id
			        +"</td><td>" + data[i].clubname
					+ "</td><td>" + data[i].natrue
					+ "</td><td>" + data[i].releasetime
					+ "</td><td>" + data[i].passtime
					+ "</td><td>" +
					"<button class='btn btn-sm btn-info clubupdate'"
					+"data-toggle='modal' data-target='.clubupdatemodal'>"+
					"修改"+"</button>"+
					"<button class='btn btn-sm btn-info clubdel'>"+
// 					+"data-toggle='modal' data-target='.clubdelmodal'>"+
					"删除"+"</button>"
					+ "</td></tr>";
				}else if(pos==$(".tab4")[0]||
						pos==$(".tab5")[0]){
					html += "<tr><td style='display: none;'>" + data[i].id
			        +"</td><td>" + data[i].name
					+ "</td><td>" + data[i].clubname
					+ "</td><td>" + data[i].address
					+ "</td><td>" + data[i].time
					+ "</td><td>" + data[i].releasetime
					+ "</td><td>" +
					"<button class='btn btn-sm btn-info actupdate'"
					+"data-toggle='modal' data-target='.actupdatemodal'>"+
					"修改"+"</button>"+
					"<button class='btn btn-sm btn-info actdel'>"+
// 					+"data-toggle='modal' data-target='.actdelmodal'>"+
					"删除"+"</button>"
					+ "</td></tr>";
				}
			}
			$(this).parent().parent().find('input').val(nowpage);
			$(this).parent().parent().parent().find('tbody').html(html);
		}	
	});
	$('#datetimepicker').datetimepicker({
		format : 'YYYY-MM-DD HH:mm:ss',
		locale : moment.locale('zh-cn')
	});
		// 	function show() {
		// 		var mydate = new Date();
		// 		var str = "" + mydate.getFullYear() + "年";
		// 		str += (mydate.getMonth() + 1) + "月";
		// 		str += mydate.getDate() + "日";
		// 		return str;
		// }
		// $("#data").html(show());
	});
</script>
</html>