<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- Favicon -->
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Lato:400,400i,700,700i,900%7cRoboto:400,400i,500,500i,700,700i&display=swap" rel="stylesheet">

 
 <c:set var = "path" value="${pageContext.servletContext.contextPath }" scope="application"/>
	<!-- Stylesheets -->
	<link rel="stylesheet" href="${path }/resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="${path }/resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
	<link rel="stylesheet" href="${path }/resources/css/slicknav.min.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="${path }/resources/css/style.css"/>

	<style>
			   #aaa{
		   margin-left: 10%;
	   }
	</style>
</head>
<body>
	<header class="header-section" style="background-color: #30627e;">
		<a href="gomainPage.do" class="float-left navbar-light slicknav_menu" style="color: white; font-size: 30px; margin-top: 7px;"><b>Oh!DogCat</b></a>
		<nav class="header-nav"  >
		  <div class="container" style="padding-bottom: 30px;">	
			<a href="gomainPage.do" class="float-left navbar-light " style="color: white; font-size: 30px; padding-top: 0px;"><b>Oh!DogCat</b></a>
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
				<li><a href="qna.html">문희하기</a></li>
			  </ul>
			</li>
			
		  </ul>
		  <div class="header-right">
			<div class="user-panel">
			  
			  <a href="selectJoinCase.html" class="register">로그아웃</a>
			</div>
		  </div>
		</div>
		</nav>
	  </header  class="masthead">
</body>
</html>