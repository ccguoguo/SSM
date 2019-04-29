<%@page import="com.owen.entity.Category"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>显示供应商信息</title>

		<!-- 引入Bootstrap核心样式文件 -->
		<link href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
		<!-- 引入jQuery核心js文件 -->
		<script src="${pageContext.request.contextPath}/javascript/jQuery-1.12.4.js"></script>
		<!-- 引入BootStrap核心js文件 -->
		<script src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
	目录管理>目录显示
	<table class="table table-striped">
		<tr>
			<td>目录ID</td>
			<td>目录名</td>
			<td>描述</td>
			<td>操作</td>
		</tr>
		<c:forEach items="${pageInfo.list}" var="cate">
		<tr>
			<td>${cate.categoryID}</td>
			<td>${cate.category_name}</td>
			<td>${cate.category_desc}</td>
			<td>
			<a href="#" class="btn btn-warning" onclick="editCategory(${cate.categoryID})">修改</a>
			&nbsp;&nbsp;
			<a href="#" class="btn btn-danger" onclick="delCategory(${cate.categoryID})">删除</a>
			</td>
		</tr>
		</c:forEach>
		<tr align="center">
			<td colspan="9">
			<c:if test="${ !pageInfo.hasPreviousPage }">
			<a class="btn btn-default" href="selectCategoryController.action?currentPage=1&pageSize=5">上一页</a>
				&nbsp;&nbsp;&nbsp;&nbsp;
				第${ pageInfo.pageNum }/${ pageInfo.pages }页
				&nbsp;&nbsp;&nbsp;&nbsp;
				<a class="btn btn-default" href="selectCategoryController.action?currentPage=${ pageInfo.nextPage }&pageSize=5">下一页</a>
			</c:if>
			<c:if test="${ !pageInfo.hasNextPage }">
			<a class="btn btn-default" href="selectCategoryController.action?currentPage=${ pageInfo.prePage }&pageSize=5">上一页</a>
				&nbsp;&nbsp;&nbsp;&nbsp;
				第${ pageInfo.pageNum }/${ pageInfo.pages }页
				&nbsp;&nbsp;&nbsp;&nbsp;
				<a class="btn btn-default" href="selectCategoryController.action?currentPage=${ pageInfo.pages }&pageSize=5">下一页</a>
			</c:if>
			<!-- pageInfo.hasPreviousPage -->
			<c:if test="${ pageInfo.hasNextPage && pageInfo.pageNum != 1 }">
				<a class="btn btn-default" href="selectCategoryController.action?currentPage=${ pageInfo.prePage }&pageSize=5">上一页</a>
				&nbsp;&nbsp;&nbsp;&nbsp;
				第${ pageInfo.pageNum }/${ pageInfo.pages }页
				&nbsp;&nbsp;&nbsp;&nbsp;
				<a class="btn btn-default" href="selectCategoryController.action?currentPage=${ pageInfo.nextPage }&pageSize=5">下一页</a>
			</c:if>
			</td>
		</tr>
	</table>
	<a href="addCategory.jsp">add</a>
	<script>
		function editCategory(id){
			location.href="editCategoryController?id="+id;
		}
		function delCategory(id){
			if(!confirm("确定要删除么?")){
				return false;
			}else
			location.href="deleteCategoryController?currentPage=${ pageInfo.pageNum }&pageSize=5&id="+id;
		}
	</script>
</body>
</html>