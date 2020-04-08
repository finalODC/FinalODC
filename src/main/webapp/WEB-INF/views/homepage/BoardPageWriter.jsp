<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>

<c:set var="path" value="${pageContext.servletContext.contextPath}"
	scope="application" />



<link rel="stylesheet" href="${path}/resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="${path}/resources/css/font-awesome.min.css" />
<link rel="stylesheet" href="${path}/resources/css/slicknav.min.css" />
<link rel="stylesheet"
	href="https://s3.amazonaws.com/codecademy-content/projects/bootstrap.min.css">
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="${path}/resources/css/style.css" />
<link rel="stylesheet" href="${path}/resources/css/stylne.css">
<!-- 폰트 아이콘 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/ddfd73bace.js"
	crossorigin="anonymous"></script>
	
<script type="text/javascript" src="${path}/resources/se2/js2/service/HuskyEZCreator.js" charset="utf-8"></script>


<style>
.main-menu li a:hover {
	color: #fb105f;
}

.main-menu>li>a {
	font-size: 18px;
}

.user-panel a:hover {
	color: #fa296f;
}

.footer {
	position: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
	text-align: center;
}

#container {
	height: 500px;
}

#aside {
	width: 300px;
	height: 750px;
	float: left;
	margin-left: 330px;
}

#contents {
	width: 700px;
	height: 750px;
	float: left;
}

#header {
	height: 100px;
}

#Search {
	font-size: 16px;
	width: 325px;
	padding: 10px;
	border: 0px;
}
</style>
</head>



<body>
	<!--@@@@@@@@@@@@@@@@@@@@@@@@@ 헤더 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
	<header class="header_section" style="background-color: #30627e;">
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
							<li><a href="about-us.html">정보수정</a></li>
							<li><a href="search-result.html">반려동물 관리</a></li>
							<li><a href="single-property.html"></a></li>
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

	<!--     @@@@@@@@@@@@@@@@@@@@@ 가운데 내용 @@@@@@@@@@@@@@@@@@@@@-->
	<div class="">

		<div class="row">
			<div id="aside" align="center" class="col-lg-2">
				<div align="left">
					<br> <br> <br> <br>

					<ul>
						<A href="ohdogcat_FreeBoardPage.html">
							<h4 style="height: 40px;" align="">자유 게시판</h4>
						</A>
						<br>
						<br>

						<a>
							<h4>정보 공유 게시판</h4>
						</a>
						<hr
							style="border: solid 2px rgba(0, 36, 134, 0.616); width: 200px;"
							align="left">

						<a href="ohdogcat_DogBoardPage.html">
							<h5>
								<i class="fas fa-dog">&nbsp;</i>강아지
								게시판&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i
									class="fas fa-paw"></i>
							</h5>
						</a>
						<br>
						<a href="ohdogcat_CatBoardPage.html">
							<h5>
								<i class="fas fa-cat">&nbsp;</i>고양이
								게시판&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i
									class="fas fa-bell"></i>
							</h5>
						</a>
						<br>
					</ul>

				</div>
			</div>


			<div id="contents" class="col-lg-6">

				<br> <br>

				<h2>&nbsp;&nbsp;&nbsp;글쓰기</h2>

				<br> <br>
				<div class="container" align="right">

					<table class="table table-bordered" align="center">


						<tbody>
							<tr>
								<th style="width: 100px;">제목</th>
								<td><input type="text" style="border: 0px; width:500px;"
									placeholder="제목을 입력하세요"></td>
							</tr>
							<tr>
								<th>아이디</th>
								<td><input type="text" style="border: 0px;" value="tlqkrus"
									readonly></td>
							</tr>
							<tr >
								<th style="width: 100px; height: 500px;">내용</th>
								<td ><textarea id="editer"  rows="10" cols="100"></textarea></td>

							</tr>
							<tr>
								<th>첨부파일</th>
								<td style="width: 100px;"><input type="file"
									name="FileName"></td>

							</tr>
						</tbody>
					</table>
					<button>확인</button>
					<button>취소</button>



					<br> <Br> <br> <br> <Br> <Br> <Br>
				</div>



			</div>

		</div>
	</div>





	<div class="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-2">
					<div class="copy">© Adoptly</div>
				</div>
				<div class="col-md-10">
					<ul class="nav nav-pills pull-right">
						<li><a href="#">FAQ</a></li>
						<li><a href="#">Contact</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<script src="${path }/resources/js/jquery-3.2.1.min.js"></script>

	<script src="${path }/resources/js/bootstrap.min.js"></script>

	<script src="${path }/resources/js/jquery.slicknav.min.js"></script>

	<script src="${path }/resources/js/jquery.magnific-popup.min.js"></script>

	<script src="${path }/resources/js/main.js"></script>

	<script type="text/javascript">
		var oEditors = [];
		nhn.husky.EZCreator.createInIFrame({
		 oAppRef: oEditors,
		 elPlaceHolder: "editer",
		 sSkinURI: "${path}/resources/se2/SmartEditor2Skin.html",
		 fCreator: "createSEditor2"
		});
	</script>
	
	
</body>


</html>