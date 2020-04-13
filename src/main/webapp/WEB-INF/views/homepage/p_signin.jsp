<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="kr">

<head>
<c:set var="path" value="${pageContext.servletContext.contextPath }" scope="application" />
<link rel="stylesheet"
	href="https://s3.amazonaws.com/codecademy-content/projects/bootstrap.min.css">
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="${path }/resources/css/stylne.css">
<link rel="stylesheet" href="${path }/resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="${path }/resources/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<link rel="stylesheet" href="${path }/resources/css/slicknav.min.css" />

<link rel="stylesheet" href="${path }/resources/css/style.css" />

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

.card {
	height: 370px;
	margin-top: auto;
	margin-bottom: auto;
	border: 0;
	background-color: initial;
}

.input_area {
	width: 80%;
	height: 68px;
	border: 0;
	padding-left: 50px;
	font-size: 20px;
	margin-top: 30px;
}

.login_btn {
	color: white;
	background-color: #30627e;
	margin-top: 50px;
	width: 70%;
	height: 50px;
	font-size: 15px;
}

.login_btn:hover {
	color: black;
	background-color: white;
}

.jumbotron {
	background:
		url("https://s3.amazonaws.com/codecademy-content/projects/adoptly/bg.jpg")
		no-repeat center center;
	background-size: cover;
	height: 81.4%;
	text-align: center;
	margin-top: 105px;
	margin-bottom: 0;
}

@import
	url("https://fonts.googleapis.com/css?family=Montserrat:400,600&display=swap")
	;

* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

body {
	align-items: center;
	color: rgba(0, 0, 0, 0.8);
	display: grid;
	font-family: "Montserrat", sans-serif;
	font-size: 14px;
	font-weight: 400;
	height: 100vh;
	justify-items: center;
	width: 100vw;
}

.signup-container {
	display: grid;
	grid-template-areas: "left right";
	max-width: 900px;
}

.left-container {
	background: #807182;
	overflow: hidden;
	padding: 40px 0 0 0;
	position: relative;
	text-align: center;
	width: 300px;
}

.left-container h1 {
	color: rgba(0, 0, 0, 0.8);
	display: inline-block;
	font-size: 24px;
}

.left-container h1 i {
	background: #f7b1ab;
	border-radius: 50%;
	color: #807182;
	font-size: 24px;
	margin-right: 5px;
	padding: 20px;
	transform: rotate(-45deg);
}

.left-container .puppy {
	bottom: -5px;
	position: absolute;
	text-align: center;
}

.left-container .puppy:before {
	background: #807182;
	content: "";
	height: 100%;
	left: 0;
	opacity: 0.4;
	position: absolute;
	width: 100%;
	z-index: 1;
}

.left-container img {
	filter: sepia(100%);
	width: 70%;
}

.right-container {
	background: #f9c7c2;
	display: grid;
	grid-template-areas: "." ".";
	width: 500px;
}

.right-container h1:nth-of-type(1) {
	color: rgba(0, 0, 0, 0.8);
	font-size: 28px;
	font-weight: 600;
}

.right-container .set {
	display: flex;
	justify-content: space-between;
	margin: 10px 0;
}

.right-container input {
	border: 1px solid rgba(0, 0, 0, 0.1);
	border-radius: 4px;
	height: 38px;
	line-height: 38px;
	padding-left: 5px;
}

.right-container input, .right-container label {
	color: rgba(0, 0, 0, 0.8);
}

.right-container header {
	padding: 40px;
}

.right-container label, .right-container input, .right-container .pets-photo
	{
	width: 176px;
}

.right-container .pets-photo {
	align-items: center;
	display: grid;
	grid-template-areas: ". .";
}

.right-container .pets-photo button {
	border: none;
	border-radius: 50%;
	height: 38px;
	margin-right: 10px;
	outline: none;
	width: 75px;
}

.right-container .pets-photo button i {
	color: white;
	font-size: 16px;
}

.right-container .pets-weight .radio-container {
	display: flex;
	justify-content: space-between;
	width: 100%;
}

.right-container footer {
	align-items: center;
	background: #fff;
	display: grid;
	padding: 5px 40px;
}

.pets-name label, .pets-breed label, .pets-birthday label, .pets-gender label,
	.pets-spayed-neutered label, .pets-weight label {
	display: block;
	margin-bottom: 5px;
}

.radio-container {
	background: #fff;
	border: 1px solid rgba(0, 0, 0, 0.1);
	border-radius: 4px;
	display: inline-block;
	padding: 5px;
}

.radio-container label {
	background: transparent;
	border: 1px solid transparent;
	border-radius: 2px;
	display: inline-block;
	height: 26px;
	line-height: 26px;
	margin: 0;
	padding: 0;
	text-align: center;
	transition: 0.2s all ease-in-out;
	width: 80px;
}

.radio-container input[type="radio"] {
	display: none;
}

.radio-container input[type="radio"]:checked+label {
	background: #f7b1ab;
	border: 1px solid rgba(0, 0, 0, 0.1);
}

.species input {
	background-color: white;
}

.next_btn {
	color: white;
	background-color: #807182;
	margin-top: 50px;
	width: 50%;
	height: 60px;
	font-size: 15px;
	border-radius: 19px;
	border: 0px;
	outline: none !important;
}

.next_btn:hover {
	color: black;
	background-color: white;
}

.next_btn:focus {
	outline: 0 0 0 0 !important;
	box-shadow: 0 0 0 0 !important;
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
	</header  class="masthead">



	<div class='signup-container' style="margin-top: 109px;">
		<div class='left-container'>
			<h1>
				<i class='fas fa-paw' style="display: inline;"> 내 가족 등록하기 </i>
			</h1>
			<div class='puppy'>
				<img
					src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/38816/image-from-rawpixel-id-542207-jpeg.png'>
			</div>
		</div>

		<div class='right-container'>
			<header>
				<h1>내 반려동물을 등록해주세요!</h1>
				<div class='set'>
					<div class='pets-name'>
						<label for='pets-name'>*Name</label> <input id='pets-name'
							placeholder="Pet's name" type='text'>
					</div>
					<div class='pets-photo'>
						<div class='pets-name'>
							<label for='pets-name'>*CODE</label> <input id='pets-name'
								placeholder="Pet's Code" type='text'>
							<!-- <button width='75px'>고양이</button>
                <button>강아지</button> -->
						</div>
						<!-- <button id='pets-upload'>
              <i class='fas fa-camera-retro'></i>
            </button> -->
						<!-- <label for='pets-upload'>Upload a photo</label> -->
					</div>
				</div>
				<div class='set'>
					<div class='pets-breed'>
						<label for='pets-breed'>Breed</label> <input id='pets-breed'
							placeholder="Pet's breed" type='text'>
					</div>
					<div class='pets-birthday'>
						<label for='pets-birthday'>*Birthday</label> <input
							id='pets-birthday' placeholder='YYYY/MM' type='text'>
					</div>
				</div>
				<div class='set'>
					<div class='pets-gender'>
						<label for='pet-gender-female'>Gender</label>
						<div class='radio-container'>
							<input checked='' id='pet-gender-female' name='pet-gender'
								type='radio' value='female'> <label
								for='pet-gender-female'>Female</label> <input
								id='pet-gender-male' name='pet-gender' type='radio' value='male'>
							<label for='pet-gender-male'>Male</label>
						</div>
					</div>
					<div class='pets-spayed-neutered'>
						<label for='pet-spayed'>Spayed or Neutered</label>
						<div class='radio-container'>
							<input checked='' id='pet-spayed' name='spayed-neutered'
								type='radio' value='spayed'> <label for='pet-spayed'>Spayed</label>
							<input id='pet-neutered' name='spayed-neutered' type='radio'
								value='neutered'> <label for='pet-neutered'>Neutered</label>
						</div>
					</div>
				</div>
				<div class='pets-weight'>
					<label for='pet-weight-0-25'>Weight</label>
					<div class='radio-container'>
						<input checked='' id='pet-weight-0-25' name='pet-weight'
							type='radio' value='0-25'> <label for='pet-weight-0-25'>0-8kg</label>
						<input id='pet-weight-25-50' name='pet-weight' type='radio'
							value='25-50'> <label for='pet-weight-25-50'>9-15kg</label>
						<input id='pet-weight-50-100' name='pet-weight' type='radio'
							value='50-100'> <label for='pet-weight-50-100'>16-40kg</label>
						<input id='pet-weight-100-plus' name='pet-weight' type='radio'
							value='100+'> <label for='pet-weight-100-plus'>40kg+</label>
					</div>
				</div>
				<div class='pets-weight'>
					<label for='pet-weight-0-25'>특이사항</label>
					<div class='radio-container'>
						<textarea name="special" id="spc" style="resize: none;" cols="55"
							rows="12" placeholder="알러지 유무와 같은 특이사항을 입력해주세요"></textarea>
					</div>
				</div>

				<button class="btn next_btn">NEXT</button>
			</header>

		</div>
	</div>


	<div class="footer" style="width: 100%;">
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


	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/main.js"></script>
</body>


</html>