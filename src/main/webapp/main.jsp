<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理</title>
<%-- <%@ include file="checkLogin.jsp"%> --%>
		<!-- 引入jQuery核心js文件 -->
		<script src="javascript/jQuery-1.12.4.js"></script>
		<!-- 引入Bootstrap核心样式文件 -->
		<link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
		<!-- 引入BootStrap核心js文件 -->
		<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
	<!------------------------------------------- 顶部 ------------------------------->
	<div class="row">
		<div class="col-lg-12">
		<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="main.jsp">
					<img alt="Brand" height="50px" width="50px" src="img/Sonalogo.gif">
					
				</a>
			</div>
				欢迎管理员:${loginName }
				<a style="text-decoration: none;" href="loginOut.jsp" class="navbar-text navbar-right"><h4>注销</h4></a>
		</div>
		</nav>
		</div>
	</div>
	<div class="row">
	<!---------------------------------- 侧边栏 ----------------------------------------->
		<div class="col-lg-2">
			<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
       		产品管理
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
      <div class="list-group">
	  <a class="list-group-item" href="admin/product/bootstrapTableProduct.jsp" target="showRight">产品显示</a>
	  <a href="admin/product/productServlet?op=addProduct" target="showRight" class="list-group-item">产品添加</a>
	  </div>
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
         	 供应商管理
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
      <div class="panel-body">
      <div class="list-group">
    	  <a class="list-group-item" href="admin/provider/providerServlet?op=showProvider&currentPage=1&pageSize=5" target="showRight">供应商显示</a>
      	  <a href="admin/provider/addProvider.jsp" target="showRight" class="list-group-item">供应商添加</a>
      </div>
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
         	目录管理
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">
      <div class="list-group">
     	 <a class="list-group-item" href="admin/category/categoryServlet?op=showCategory&currentPage=1&pageSize=5" target="showRight">目录显示</a>
      	 <a href="admin/category/addCategory.jsp" target="showRight" class="list-group-item">目录添加</a>
      </div>
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingFour">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
         	订单管理
        </a>
      </h4>
    </div>
    <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
      <div class="panel-body">
      <div class="list-group">
   	     <a class="list-group-item" href="admin/order/ordersServlet?op=showOrders&currentPage=1&pageSize=5" target="showRight">订单显示</a>
     	 <a class="list-group-item" href="admin/order/addOrders.jsp" target="showRight">订单增加</a>
     	 <a class="list-group-item" href="admin/order/orderDetailServlet?op=showOrderDetail&currentPage=1&pageSize=5" target="showRight">订单详情显示</a>
      </div>
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingFive">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
         	文件管理
        </a>
      </h4>
    </div>
    <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
      <div class="panel-body">
      <div class="list-group">
   	      <a href="admin/file/uploadFile.jsp" class="list-group-item" target="showRight">文件上传</a>
      </div>
      </div>
    </div>
  </div>
 </div>
		</div>
		<!------------------------------------ 右边显示区 --------------------------------------->
		<div class="col-lg-10">
			<iframe scrolling="no" name="showRight" src="right.jsp" width="90%" height="1200px" frameborder="0"></iframe>
		</div>
	</div>
	
</body>
<!-- <frameset rows="10%,*" border="2" bordercolor="gray">

	<frame src="top.jsp" name="top" noresize />

	<frameset cols="15%,*">
		<frame src="left.jsp" name="left" />
		<frame src="right.jsp" name="right" />
	</frameset>

</frameset> -->
</html>