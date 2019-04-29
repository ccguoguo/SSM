<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content=""/>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- Meta tag Keywords -->
	<!-- css files -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/fontawesome-all.css">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	<!-- web-fonts -->
	<!-- <link href="http://maxcdn.bootstrapcdn.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
	<link href="http://maxcdn.bootstrapcdn.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet"> -->
	<!-- //web-fonts -->

</head>

	<script>
		//保证index页面始终显示在最顶层
		if(self.location != top.location){
			top.location = "index.jsp";
		}
	</script>

<body>
	<!-- bg effect -->
	<div id="bg">
		<canvas></canvas>
		<canvas></canvas>
		<canvas></canvas>
	</div>
	<!-- //bg effect -->
	<!-- title -->
	<h1>佩奇外设店</h1>
	<!-- //title -->
	<!-- content -->
	<div class="sub-main-w3">
		<form action="adminLoginController.action" method="post">
			<h2>登 录
				<i class="fas fa-level-down-alt"></i>
			</h2>
			<label>当前在线人数:${onlineUser}</label>
			<div class="form-style-agile">
				<label>
					<i class="fas fa-user"></i>
					用户名
				</label>
				<input placeholder="请输入用户名....." name="admin_name" type="text">
			</div>
			<div class="form-style-agile">
				<label>
					<i class="fas fa-unlock-alt"></i>
					密码
				</label>
				<input placeholder="请输入密码....." name="admin_password" type="password">
			</div>
			<!-- checkbox -->
			<div class="wthree-text">
				<ul>
					<li>
						<label class="anim">
							<input name="checkbox" type="checkbox" class="checkbox">
							<span>记住我</span>
						</label>
					</li>
					<li>
						<a href="#">忘记密码?</a>
					</li>
				</ul>
			</div>
			<!-- //checkbox -->
			<input type="submit" value="登 录">
		</form>
	</div>
	<!-- //content -->

	<!-- copyright -->
	<div class="footer">
		<p>Copyright &copy; 2019.Company name All rights reserved.<a target="_blank" href="http://www.baidu.com/">度娘</a></p>
	</div>
	<!-- //copyright -->

	<!-- Jquery -->
	<script src="${pageContext.request.contextPath}/javascript/jquery-3.3.1.min.js"></script>
	<!-- //Jquery -->

	<!-- effect js -->
	<script src="${pageContext.request.contextPath}/javascript/canva_moving_effect.js"></script>
	<!-- //effect js -->

</body>
</html>