<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>目录添加</title>
		<!-- 引入jQuery核心js文件 -->
		<script src="${pageContext.request.contextPath}/javascript/jQuery-1.12.4.js"></script>
		<!-- 引入Bootstrap核心样式文件 -->
		<link href=".${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
		<!-- 引入BootStrap核心js文件 -->
		<script src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>

<!-- <script>

	//js获取ajax核心对象
	var xmlhttp;
	if (window.XMLHttpRequest) {
		xmlhttp = new XMLHttpRequest();
	} else {
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	var reg = /^$| /;//检测包含空格的正则表达式
	var flag = "不行";
	//ajax重名校验
	function checkName() {
		if($("#category_name").val() == ""){
			$("#span1").html("<font color='red'>💬[目录名]不能为空✖</font>");
			flag = "不行";
		}else if(reg.test($("#category_name").val())){
			$("#span1").html("<font color='red'>💬[目录名]不能包含空格✖</font>");
			flag = "不行";
		}else{
		xmlhttp.open("GET", "categoryServlet?op=checkNameAdd&cName="+$("#category_name").val(), true)
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				var msg = xmlhttp.responseText;
				
				if("true" == msg && msg != ""){
					$("#span1").html("<font color='green'>💬[目录名]可以使用✔</font>");
					flag = "海星";
				}else if("false" == msg){
					$("#span1").html("<font color='red'>💬[目录名]重复✖</font>");
					flag = "不行";
				}
				
			}
		}
		xmlhttp.send();
		}//---------------else结束
	}
	
	function submitAll(){
		checkName();
		if(flag == "不行"){
			return false;
		}else if("海星" == flag){
			$("#form1").submit();
		}
	}
</script> -->

<body>
<!-- 可以用来移动位置 -->
<!-- <div class="col-md-4"></div>
<div class="col-md-4"></div> -->
	目录管理>目录添加
	<h3>目录添加</h3>
	<form id="form1" action="insertCategoryController.action" method="post">
		<table>
			<tr>
	     <td>
  		 <label>目录名:</label>
  		 <input type="text" onblur="checkName()" class="form-control" name="category_name" id="category_name">
  		 </td>
  		 <td><span id="span1"></span></td>
				<!-- <td>目录名</td>
				<td><input type="text" onblur="checkName(this)" 
				id="category_name" name="category_name" value=""/>
				<span id="span1"></span></td>
				-->
			</tr>
			<tr>
	     <td>
  		 <label>描述:</label>
  		 <input type="text" onblur="" class="form-control" name="category_desc" id="category_desc">
  		 </td>
  		 <td><span id="span2"></span></td>
				<!-- <td>描述</td>
				<td><input type="text" name="category_desc" value=""/></td> -->
			</tr>
			<tr>
				<td colspan="2">
				<br>
					<input class="btn btn-primary" type="reset" value="重置数据"/>
					<input class="btn btn-success" type="submit" value="确定添加"/>
				</td>
			</tr>
		</table>
	</form>
</body>

</html>