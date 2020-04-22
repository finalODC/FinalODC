<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>

<style>
    .main-menu li a:hover{
     color: #fb105f;
    }

    .main-menu>li>a{
      font-size: 18px;
    }

    .user-panel a:hover{
      color: #fa296f;
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
        <li><a href="searchhospital.do">병원찾기</a></li>
        <li><a href="community.do">커뮤니티</a>
          <ul class="sub-menu">
            <li><a href="hgonoticelist.do">공지사항</a></li>
            <li><a href="Fblist.bo">자유게시판</a></li>
            <li><a href="tip.do">TIP</a></li>
          </ul></li>
        <li><a href="#">마이페이지</a>
          <ul class="sub-menu">
            <li><a href="mypageperson.do">정보수정</a></li>
            <li><a href="mypagepet.do">반려동물 관리</a></li>
            <li><a href="myqnalist.qn">문의사항</a></li>
          </ul>
        </li>
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
          <a href="mlogout.do" class="register">로그아웃</a>
        </div>
      </div>
    </div>
    </nav>
  </header  class="masthead">
</body>
</html>