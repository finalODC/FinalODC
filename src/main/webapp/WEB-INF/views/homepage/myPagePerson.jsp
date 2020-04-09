<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="kr">
<head>
<title>메인페이지</title>
<meta charset="UTF-8">
<meta name="description" content="Real estate HTML Template">
<meta name="keywords" content="real estate, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Favicon -->
<link href="img/favicon.ico" rel="shortcut icon" />

<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,400i,700,700i,900%7cRoboto:400,400i,500,500i,700,700i&display=swap"
	rel="stylesheet">


<!-- Stylesheets -->
 <c:set var = "path" value="${pageContext.servletContext.contextPath }" scope="application"/>
	<link rel="stylesheet" href="${path }/resources/css/bootstrap.min.css" />
	<link rel="stylesheet" href="${path }/resources/css/font-awesome.min.css" />
	<link rel="stylesheet"
		href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
		integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
		crossorigin="anonymous">
	<link rel="stylesheet" href="${path }/resources/css/slicknav.min.css" />

<!-- Main Stylesheets -->
	<link rel="stylesheet" href="${path }/resources/css/style.css" />

<style>
#aaa {
	margin-left: 10%;
}
</style>


</head>
<body>

	<header class="header-section" style="background-color: #30627e;">
		<a href="" class="float-left navbar-light slicknav_menu"
			style="color: white; font-size: 30px; margin-top: 7px;"><b>Oh!DogCat</b></a>
		<nav class="header-nav">
			<div class="container" style="padding-bottom: 30px;">
				<a href="" class="float-left navbar-light "
					style="color: white; font-size: 30px; padding-top: 0px;"><b>Oh!DogCat</b></a>
				<ul class="main-menu">
					<li><a href="#">병원찾기</a></li>
					<li><a href="cuponcheck.html">커뮤니티</a>
						<ul class="sub-menu">
							<li><a href="about-us.html">공지사항</a></li>
							<li><a href="search-result.html">자유게시판</a></li>
							<li><a href="single-property.html">TIP</a></li>
						</ul></li>
					<li><a href="#">마이페이지</a>
						<ul class="sub-menu">
							<li><a href="myPagePerson.jsp">정보수정</a></li>
							<li><a href="myPagePet.jsp">반려동물 관리</a></li>
							<li><a href="myPageQNA.jsp">문희하기</a></li>
						</ul></li>
					<!-- <li><a href="#"></a>
			  <ul class="sub-menu">
				<li><a href="about-us.html">About Us</a></li>
				<li><a href="search-result.html">Search Result</a></li>
				<li><a href="single-property.html">Property</a></li>
			  </ul>
			</li>
			<li><a href="news.html">News</a></li> -->
					<!-- <li><a href="#">로그인</a></li> -->
				</ul>
				<div class="header-right">
					<div class="user-panel">
						<!-- <a href="login.html" class="login">로그인</a> -->
						<a href="selectJoinCase.html" class="register">로그아웃</a>
					</div>
				</div>
			</div>
		</nav>
	</header  class="masthead">
	<!-- Header Section end -->

	<div class="container" style="padding-top: 150px;">
		<div class="row">
			<div class="col-lg-12 col-md-12">

				<section class="page-section portfolio">
					<div id="right1" class=".float-right col-md-8 order-md-1 container">
						<div>
							<table align="center" width="420px">
								<tr style="text-align: center;">
									<td width="140px"><span class="btn btn-outline-info">개인정보
											변경&nbsp;</span></td>
									<td width="140px"><a href="myPagePet.jsp"
										class="btn btn-outline-primary">&nbsp;반려동물 정보&nbsp;</a></td>
									<td width="140px"><a href="myPageQNA.jsp"
										class="btn btn-outline-primary">&nbsp;문희하러가기&nbsp;</a></td>
								</tr>
							</table>
						</div>
						<br>
						<div class="col-md-8 order-md-1" id="aaa">
							<h4 class="mb-3">개인정보 변경</h4>
							<hr>
							<form class="needs-validation" action="" method="POST"
								onsubmit="return validate()">

								<div class="mb-3">

									<label for="username">아이디</label> <input type="text"
										class="form-control" style="width: 30%;" id="username"
										placeholder="Username" value="아이디" readonly>
								</div>
								<br>
								<div class="mb-3">
									<label>변경할 비밀번호</label> <span>[영문대소문자,특수문자(!@#$%*)사용가능,
										8자 이상]</span> <input type="password" class="form-control"
										style="width: 30%;" id="pwd">
								</div>

								<div class="mb-3">
									<label>변경할 비밀번호 확인</label><br> <input type="password"
										class="form-control" style="width: 30%;" id="pwd2">
								</div>
								<br>

								<div class="mb-3">
									<label for="gender">성별</label><br> <input type="radio"
										name="gender" id="male" value="M" checked><label
										for="male">남</label> &nbsp;&nbsp;&nbsp;&nbsp; <input
										type="radio" name="gender" id="female" value="F" disabled><label
										for="female">여</label>
								</div>

								<div class="mb-3">
									<label>나이</label><br> <input type="text"
										class="form-control" style="width: 30%;" id="years" disabled>
								</div>

								<div class="mb-3">
									<label>가입일</label><br> <input type="date"
										class="form-control" style="width: 30%;" id="hireDate"
										value="2020-02-20" disabled>
								</div>



								<div class="mb-3">
									<label>전화</label> <br> <input type="text"
										class="form-control" style="width: 30%;" id="phone"
										placeholder="-제외" maxlength="12">
								</div>
								<br>

								<div class="mb-3">
									<label for="country">지역</label><br> <select
										class="custom-select " style="width: 30%;" id="country"
										required="">
										<option value="seoul">서울</option>
										<option>United States</option>
										<option>United States</option>
										<option>United States</option>
										<option>United States</option>
										<option>United States</option>
										<option>United States</option>
										<option>United States</option>
									</select>
								</div>




								<button class="btn btn-primary btn-lg" type="submit"
									style="float: right;">확인</button>

							</form>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>





	<!-- Footer Section -->
	<br>
	<hr>
	<br>
	<footer class="footer">
		<div class="container">
			<div class="copyright">
				Copyright &copy;
				<script>
					document.write(new Date().getFullYear());
				</script>
				권한은 전적으로 나한테 있습니다.

			</div>
	</footer>
	<!-- Footer Section end -->

	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/main.js"></script>


</body>
</html>
