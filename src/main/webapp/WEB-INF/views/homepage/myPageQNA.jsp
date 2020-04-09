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
<c:set var="path" value="${pageContext.servletContext.contextPath }" scope="application"/>
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

	<!-- Header Section -->
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
	</header class="masthead">
	<!-- Header Section end -->

	<div class="container" style="padding-top: 150px;">
		<div class="row">
			<div class="col-lg-12 col-md-12">

				<section class="page-section portfolio">
					<div id="right1" class=".float-right col-md-8 order-md-1 container">
						<div>
							<table align="center" width="420px">
								<tr style="text-align: center;">
									<td width="140px"><a href="myPagePerson.jsp"
										class="btn btn-outline-primary">개인정보 변경</a></td>
									<td width="140px"><a href="myPagePet.jsp"
										class="btn btn-outline-primary">&nbsp;반려동물 정보&nbsp;</a></td>
									<td width="140px"><span class="btn btn-outline-info">&nbsp;문의하러가기&nbsp;</span></td>
								</tr>
							</table>
						</div>
						<br>



						<div class="col-md-8 order-md-1" id="aaa">
							<h4 class="mb-3">내 문의 현황</h4>
							<hr>

							<table class="table table-hover"
								style="border-bottom: 1px solid #dee2e6; background: white;">
								<thead>
									<tr>
										<th>번호</th>
										<th>제목</th>
										<th>작성자</th>
										<th>날짜</th>
										<th>조회수</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>문의 1번입니다</td>
										<td>작성자 본인</td>
										<td>2020-01-16</td>
										<td>0</td>
									</tr>
								</tbody>
							</table>

							<br>
							<br>
							<hr>
							<h4 id="lee" class="mb-3">문의 작성하기 &nbsp;&nbsp;>></h4>
							<hr>

							<table id="nok" class="table table-bordered"
								style="background: white;">
								<tbody>
									<tr>
										<th class="tatd">카테고리:</th>
										<td><select>
												<option value="1">계정관련</option>
												<option value="2">쿠폰/포인트</option>
												<option value="3">월드컵</option>
												<option value="4">기타</option>


										</select></td>
									</tr>
									<tr>
										<th class="tatd">제목:</th>
										<td><input type="text" placeholder="제목을 입력하세요. "
											name="subject" class="form-control" /></td>
									</tr>
									<th class="tatd">내용:</th>
									<td><textarea cols="10" rows="10"
											placeholder="내용을 입력하세요. " name="content"
											class="form-control " style="resize: none;"></textarea></td>
									</tr>

									<tr>
										<th class="tatd">첨부파일:</th>
										<td><span><input type="file"></span></td>
									</tr>

								</tbody>
							</table>


							<div class="float-right">
								<input id="nok2" class="btn btn-link"
									style="background: #002c5f; color: white;" type="button"
									value="문의 등록" onclick="sendData()" class="pull-right" />
							</div>
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
				<script>document.write(new Date().getFullYear());</script>
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
	<script>
			$(function(){
				$("#nok").css({
					'display':'none'
				});
				$("#nok2").css({
					'display':'none'
				});
			});

			$("#lee").click(function(){
				$("#nok").css({
					'display':''
				});
				$("#nok2").css({
					'display':''
				});
			});

			

		</script>

</body>

</html>