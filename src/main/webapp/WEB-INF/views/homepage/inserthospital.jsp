<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.ohdogcat.odc.homepage.member.model.vo.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<title>메인페이지</title>
<meta charset="UTF-8">
<c:set var="path" value="${pageContext.servletContext.contextPath }"
	scope="application" />

<!-- Favicon -->
<link href="img/favicon.ico" rel="shortcut icon" />

<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,400i,700,700i,900%7cRoboto:400,400i,500,500i,700,700i&display=swap"
	rel="stylesheet">

<!-- Stylesheets -->
<link rel="stylesheet" href="${ path }/resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="${ path }/resources/css/style.css" />

<style>
#aaa {
	margin-left: 10%;
}

#map {
	
}
</style>
</head>
<body>

	<header class="header-section" style="background-color: #30627e;">
		<a href="" class="float-left navbar-light slicknav_menu"
			style="color: white; font-size: 30px; margin-top: 7px;"><b>Oh!DogCat</b></a>
		<nav class="header-nav">
			<div class="container" style="padding-bottom: 30px;">
				<a href="mainpage.html" class="float-left navbar-light "
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
							<li><a href="about-us.html">정보수정</a></li>
							<li><a href="myPet.html">반려동물 관리</a></li>
							<li><a href="qna.html">문의하기</a></li>
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

	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application" />
	<div class="container" style="padding-top: 150px;">
		<div class="row">


			<div class="col-lg-12 mb-4">

				<!-- Approach -->
				
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">동물 병원</h6>
					</div>
					<div class="sea"
						style="width: 100%; height: 400px; padding: 1%;">
						<div class="par" style="width: 50%; height: 400px; padding: 1%; float: left;">

							<div name="image" style="width: 100%; height: 400px; padding: 1%">이미지</div>

						</div>
						<div class="ssa" style="width: 50%; height: 400px; padding: 1%; float: right;">
						
							<p style="text-align: center;">oo동물병원</p>
							<textarea
								style="width: 100%; height: 90%; padding: 1%; border: none; resize: none; text-align: center;">병원소개</textarea>

						</div>

					</div>
					<hr>
					<div id="map" style="width: 500px; height: 300px; padding: 1%;"></div>

					<script type="text/javascript"
						src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3e673705a792756e975aa786d62b3807"></script>
					<script>
						var container = document.getElementById('map');
						var options = {
							center : new kakao.maps.LatLng(33.450701, 126.570667),
							level : 3
						};

						var map = new kakao.maps.Map(container, options);
					</script>
					<textarea
						style="width: 90%; height: 200px; border: none; resize: none;"
						readonly>상세주소</textarea>
				</div>
			</div>

			<div class="col-lg-12 mb-4">
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">의료진</h6>
					</div>
					<div class="card-columns" id="cccbody" style="column-count: 1;">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<div class="card"
							style="width: 200px; height: auto; display: inline-block;"
							id="copy">
							<div class="card-body text-center">

								<br> <br> <input type="text"
									style="text-align: center; width: 100px; border: none;"
									readonly value="의사이름">
								<hr>
								<textarea
									style="width: 150px; height: 200px; border: none; resize: none;"
									readonly>의사에 대한 간단한 소개</textarea>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-12 mb-4">
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">댓글</h6>
					</div>
					
					<table align="center" width="510" border="1" cellspacing="0">
						<tr>
							<td>
								<textarea rows="3" cols="55" id="hrContent" style="resize: none; border:0;"></textarea>
							</td>
							<td>
								<button id="hrSubmit">등록하기</button>
							</td>
						</tr>
					</table>
					
					<table align="center" width="510" border="0" cellspacing="0" id="rtb">
						<thead>
							<tr>
								<td colspan="3"><b id="hrCount"></b></td>
							</tr>
							</thead>
						<tbody>

						</tbody>
					</table>
				</div>
			</div>

		</div>

		<!-- Footer Section -->
		
		<script>
			
		</script>
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
</body>
</html>
