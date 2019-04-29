<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>RIGHT</title>
<%-- <%@ include file="checkLogin.jsp"%> --%>
		<!-- 引入jQuery核心js文件 -->
		 <!-- <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script> -->
		<script src="javascript/jQuery-1.12.4.js"></script>
		<!-- <script src="js/jquery-3.3.1.min.js"></script> -->
		<!-- 引入Bootstrap核心样式文件 -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
		<!-- <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"> -->
		<!-- 引入BootStrap核心js文件 -->
		 <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script> -->
	     <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
		
</head>
<body class="right">

	<%-- <% 
		String sessionid = session.getId();
	
		String cookieid = null;
		Cookie[] arr = request.getCookies();
		for(Cookie c : arr) {
			if(arr != null) {
				if("JSESSIONID".equals(c.getName())) {
					cookieid = c.getValue();
				}
			}
		}
	%> --%>

	<%-- sessionid--------<%= sessionid %><br/>
	cookieid---------<%= cookieid %><br/> --%>
	
	当前在线的小猪猪:${onlineUser}头----------
	当前登录的小猪猪:${loginUser}头

	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="img/冬天的野猪佩奇.png" alt="">
      <div class="carousel-caption">
		冻乳猪
      </div>
    </div>
    <div class="item">
      <img src="img/佩奇吃屎.png" alt="">
      <div class="carousel-caption">
 		佩奇吃屎
      </div>
    </div>
    <div class="item">
      <img src="img/佩奇开party.png" alt="">
      <div class="carousel-caption">
 		佩奇开派对
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

</body>
</html>