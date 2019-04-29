<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.List"%>
    <%@page import="com.owen.entity.Provider"%>
    <%@page import="com.owen.entity.Category"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>产品修改</title>

		<!-- 引入jQuery核心js文件 -->
		<script src="../../javascript/jQuery-1.12.4.js"></script>
		<!-- 引入Bootstrap核心样式文件 -->
		<link href="../../bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
		<!-- 引入BootStrap核心js文件 -->
		<script src="../../bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/javascript/My97DatePicker/WdatePicker.js"></script>
</head>

<!-- <script type="text/javascript">

	var providerID = "";
	var categoryID = "";
	$(function(){
		providerID = $("select[name=select1]").val();
		categoryID = $("select[name=select2]").val();
	});
	
	var product_name = "${p.product_name}";
	var income_price = "${p.income_price}";
	var quantity =  "${p.quantity}";
	var sales_price =  "${p.sales_price}";
	var income_time = "${p.income_time}";
	
	var reg = /^$| /;//检测包含空格的正则表达式
	var flag = "不行";
	var flag1 = "不行";
	var flag2 = "不行";
	var flag3 = "不行";
	var flag4 = "不行";
	var flag5 = "不行";
	var flag6 = "不行";
	var flag7 = "不行";
	
	//表单未修改判断
	function doNotEdit(){
		if(product_name == $("#product_name").val()&&
				income_price == $("#income_price").val()&&
				providerID == $("#select1").val()&&
				quantity == $("#quantity").val()&&
				sales_price == $("#sales_price").val()&&
				categoryID == $("#select2").val()&&
				income_time == $("#income_time").val()){
			alert("没有修改不能提交表单!");
			flag7 = "不行";
		}else{
			flag7 = "海星";
		}
	}
	
	//1.jquery的ajax重名校验
	function checkName(){
		if($("#product_name").val() == ""){
			$("#span1").html("<font color='red'>💬[产品名称]不能为空✖</font>");
			flag = "不行";
		}else if(reg.test($("#product_name").val())){
			$("#span1").html("<font color='red'>💬[产品名称]不能包含空格✖</font>");
			flag = "不行";
		}else{
		$.ajax({
			   type: "GET",
			   url: "productServlet",
			   data: {"op":"checkName",
					  "pName":$("#product_name").val(),
					  "id":$("#productID").val()
			   },
			   success: function(msg){
				   if(msg == "没重名"){
						$("#span1").html("<font color='green'>💬[产品名称]可以使用✔</font>");
						flag = "海星";
					}else if("重名" == msg){
						$("#span1").html("<font color='red'>💬[产品名称]重复✖</font>");
						flag = "不行";
					}
			   }
			});
		}//---------------else结束
	}

	//2.进价格式验证
	function checkInPrice(){
		var rePrice = /^[0-9]+([.]{1}[0-9]+){0,1}$/;//只能输入整数或者小数
		if($("#income_price").val() == ""){
			$("#span2").html("<font color='red'>💬[产品进价]不能为空✖</font>");
			flag1 = "不行";
		}else if(reg.test($("#income_price").val())){
			$("#span2").html("<font color='red'>💬[产品进价]不能包含空格✖</font>");
			flag1 = "不行";
		}else if(!rePrice.test($("#income_price").val())){
			$("#span2").html("<font color='red'>💬[产品进价]格式有误(只能是整数或小数)✖</font>");
			flag1 = "不行";
		}else{
			$("#span2").html("<font color='green'>💬[产品进价]格式正确✔</font>");
			flag1 = "海星";
		}
	}
	
	//3.供应商验证
	function checkProvider(){
		if($("#select1").val() == 0){
			$("#span3").html("<font color='red'>💬请选择[供应商]✖</font>");
			flag2 = "不行";
		}else{
			$("#span3").html("<font color='green'>💬你好棒!✔</font>");
			flag2 = "海星";
		}
	}
	
	//4.数量验证
	function checkQuan(){
		var reQuan = /^\+?[1-9]\d*$/;//大于0的整数
		if($("#quantity").val() == ""){
			$("#span4").html("<font color='red'>💬[产品数量]不能为空✖</font>");
			flag3 = "不行";
		}else if(reg.test($("#quantity").val())){
			$("#span4").html("<font color='red'>💬[产品数量]不能包含空格✖</font>");
			flag3 = "不行";
		}else if(!reQuan.test($("#quantity").val())){
			$("#span4").html("<font color='red'>💬[产品数量]格式有误(只能是大于0的整数)✖</font>");
			flag3 = "不行";
		}else{
			$("#span4").html("<font color='green'>💬[产品数量]格式正确✔</font>");
			flag3 = "海星";
		}
	}

	//5.售价验证
	function checkSaPrice(){
		var reSaPrice = /^[0-9]+([.]{1}[0-9]+){0,1}$/;//只能输入整数或者小数
		if($("#sales_price").val() == ""){
			$("#span5").html("<font color='red'>💬[产品售价]不能为空✖</font>");
			flag4 = "不行";
		}else if(reg.test($("#sales_price").val())){
			$("#span5").html("<font color='red'>💬[产品售价]不能包含空格✖</font>");
			flag4 = "不行";
		}else if(!reSaPrice.test($("#sales_price").val())){
			$("#span5").html("<font color='red'>💬[产品售价]格式有误(只能是整数或小数)✖</font>");
			flag4 = "不行";
		}else{
			$("#span5").html("<font color='green'>💬[产品售价]格式正确✔</font>");
			flag4 = "海星";
		}
	}
	
	//6.目录验证
	function checkCategory(){
		if($("#select2").val() == 0){
			$("#span6").html("<font color='red'>💬请选择[产品目录]✖</font>");
			flag5 = "不行";
		}else{
			$("#span6").html("<font color='green'>💬你好棒!✔</font>");
			flag5 = "海星";
		}
	}
	
	//7.日期验证
	function checkTime(){
		if($("#income_time").val() == ""){
			$("#span7").html("<font color='red'>💬[进货时间]不能为空✖</font>");
			flag6 = "不行";
		}else{
			$("#span7").html("<font color='green'>💬[进货时间]格式正确✔</font>");
			flag6 = "海星";
		}		
	}
	
	function submitAll(){
		checkName();
		checkInPrice();
		checkProvider();
		checkQuan();
		checkSaPrice();
		checkCategory();
		checkTime();
		doNotEdit();
		if("海星" == flag && "海星" == flag1 && "海星" == flag2 &&
				"海星" == flag3 && "海星" == flag4 && "海星" == flag5 && "海星" == flag6 && "海星" == flag7){
			$("#form1").submit();
		}else{
			
		}
	}
	
</script>
 -->
<body>

	<%-- <% 
		List<Provider> pr = (List<Provider>)request.getAttribute("providerList");
		pageContext.setAttribute("list", pr);
		List<Category> cy = (List<Category>)request.getAttribute("categoryList");
		pageContext.setAttribute("list2", cy);
	%> --%>
	产品管理>产品修改
	<h3>产品修改</h3>
	<form id="form1" action="productServlet?op=doEditProduct" method="post">
		<table>
			<tr>
				<td><label>产品ID:</label>
				<input class="form-control" type="text" id="productID" name="productID" value="${p.productID}" readonly/></td>
			</tr>
			<tr>
				<td><label>产品名称:</label>
				<input class="form-control" type="text" onblur="checkName()" id="product_name" name="product_name" value="${p.product_name}"/></td>
				<td><span id="span1"></span></td>
			</tr>
			<tr>
				<td><label>产品进价:</label>
				<input class="form-control" type="text" onblur="checkInPrice()" id="income_price" name="income_price" value="${p.income_price}"/></td>
				<td><span id="span2"></span></td>
			</tr>
			<tr>
				<td><label>供应商:</label>
				<select class="form-control" onblur="checkProvider()" id="select1" name="select1">
				<option value="0">请选择供应商</option>
				<c:forEach items="${providerList}" var="prov">
					<c:if test="${p.provider.providerID == prov.providerID}">
						<option value="${prov.providerID}" selected>${prov.provider_name}</option>
					</c:if>
					<c:if test="${p.provider.providerID != prov.providerID}">
						<option value="${prov.providerID}">${prov.provider_name}</option>
					</c:if>
				</c:forEach>
				</select></td>
				<td><span id="span3"></span></td>
			</tr>
			<tr>
				<td><label>产品数量:</label>
				<input class="form-control" type="number" onblur="checkQuan()" id="quantity" name="quantity" value="${p.quantity}"/></td>
				<td><span id="span4"></span></td>
			</tr>
			<tr>
				<td><label>产品售价:</label>
				<input class="form-control" type="text" onblur="checkSaPrice()" id="sales_price" name="sales_price" value="${p.sales_price}"/></td>
				<td><span id="span5"></span></td>
			</tr>
			<tr>
				<td><label>产品目录:</label>
				<select class="form-control" onblur="checkCategory()" id="select2" name="select2">
				<option value="0">请选择目录</option>
					<c:forEach items="${categoryList}" var="cate">
					<c:if test="${p.category.categoryID == cate.categoryID}">
						<option value="${cate.categoryID}" selected>${cate.category_name}</option>
					</c:if>
					<c:if test="${p.category.categoryID != cate.categoryID}">
						<option value="${cate.categoryID}">${cate.category_name}</option>
					</c:if>
				</c:forEach>
				</select></td>
				<td><span id="span6"></span></td>
			</tr>
			<tr>
				<td><label>进货时间:</label>
				<input class="form-control" type="text" onblur="checkTime()" id="income_time" name="income_time" class="Wdate"
				onclick="WdatePicker()" value="${p.income_time}"/></td>
				<td><span id="span7"></span></td>
			</tr>
			<tr>
				<td colspan="2">
				<br>
					<input class="btn btn-primary" type="reset" value="重置数据"/>
<!-- 					<input class="btn btn-success" onclick="submitAll()" type="button" value="确定修改"/> -->
					<input class="btn btn-success" type="submit" value="确定修改"/>
				</td>
			</tr>
		</table>
	</form>

</body>
</html>