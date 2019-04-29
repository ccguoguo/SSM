<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>目录修改</title>
		<!-- 引入jQuery核心js文件 -->
		<script src="${pageContext.request.contextPath}/javascript/jQuery-1.12.4.js"></script>
		<!-- 引入Bootstrap核心样式文件 -->
		<link href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
		<!-- 引入BootStrap核心js文件 -->
		<script src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>

<script>
		
	var xmlhttp;
	if (window.XMLHttpRequest) {
		xmlhttp = new XMLHttpRequest();
	} else {
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}

	var reg = /^$| /;
	var flag = "不行";
	function checkName() {
		if($("#category_name").val() == ""){
			$("#span1").html("<font color='red'>💬[目录名]不能为空✖</font>");
			flag = "不行";
		}else if(reg.test($("#category_name").val())){
			$("#span1").html("<font color='red'>💬[目录名]不能包含空格✖</font>");
			flag = "不行";
		}else{
		xmlhttp.open("GET", "categoryServlet?op=checkNameEdit&cName="+$("#category_name").val().trim()
				+"&id=${c.categoryID}", true)
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				var msg = xmlhttp.responseText;
				if("true" == msg){
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
	
	$(document).ready(function(){
		var beforeName =  $("#category_name").val();
		var beforeDesc = $("#category_desc").val();
		$("#updateConfirm").click(function(){
				if( beforeName == $("#category_name").val() 
						&& $("#category_desc").val()==beforeDesc){
					alert("没有修改不能提交表单!");
				}else{
					checkName();
					if(flag == "不行"){
						return false;
					}else if(flag == "海星"){
						$("#form1").submit();
					}
				}
		});
	});
</script>

<body>
	目录管理>目录修改
	<h3>目录修改</h3>
	<form id="form1" action="categoryServlet?op=doEditCategory" method="post">
		<table>
			<tr>
				<td><label>目录ID:</label>
				<input class="form-control" type="text" name="categoryID"
					value="${c.categoryID}" readonly /></td>
			</tr>
			<tr>
				<td><label>目录名:</label>
				<input class="form-control" type="text" onblur="checkName()" 
				id="category_name" name="category_name" value="${c.category_name}" /></td>
					<td><span id="span1"></span></td>
			</tr>
			<tr>
				<td><label>描述:</label>
				<input class="form-control" type="text" name="category_desc" 
				id="category_desc" value="${c.category_desc}" /></td>
			</tr>
			<tr>
				<td colspan="2">
				<br>
				<input class="btn btn-primary" type="reset" value="重置数据" />
				<input class="btn btn-success" id="updateConfirm" type="button" value="确定修改" />
				</td>
			</tr>
		</table>
	</form>

</body>


</html>