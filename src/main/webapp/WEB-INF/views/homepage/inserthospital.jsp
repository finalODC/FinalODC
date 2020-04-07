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
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Lato:400,400i,700,700i,900%7cRoboto:400,400i,500,500i,700,700i&display=swap" rel="stylesheet">

 
	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
	<link rel="stylesheet" href="css/slicknav.min.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="css/style.css"/>

	<style>
			   #aaa{
		   margin-left: 10%;
	   }
	</style>
</head>
<body>

	<header class="header-section" style="background-color: #30627e;">
		<a href="" class="float-left navbar-light slicknav_menu" style="color: white; font-size: 30px; margin-top: 7px;"><b>Oh!DogCat</b></a>
		<nav class="header-nav"  >
		  <div class="container" style="padding-bottom: 30px;">	
			<a href="mainpage.html" class="float-left navbar-light " style="color: white; font-size: 30px; padding-top: 0px;"><b>Oh!DogCat</b></a>
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

	<div class="container" style="padding-top: 150px;">
        <div class="row">
                

            <div class="col-lg-12 mb-4">

                <!-- Approach -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">동물 병원</h6>
                    </div>
                    <div class="card-columns">

                        <div class="card" style="width:300px">
                            <div class="card-body text-center">
              
                              <img class="img-fluid" src="img/portfolio/cabin.png" alt="">
                              <!-- Button to Open the Modal -->
                              <p>동물병원</p>
                             
              
                            </div>
                          </div>

                        <div class="card" style="width:500px text-align=center;">
                            <div class="card-body text-center">

                                <textarea style="width: 300px; height: 200px; border: none; resize: none;" readonly>병원소개</textarea>

                                <br><br>

                                
                            </div>
                        </div>

                        <div class="card" style="width:500px text-align=center;">
                            <div class="card-body text-center">

                                <p style="padding: 20px;">
                                    오시는 길
                                </p>
                                <p style="padding: 20px;">
                                    API를 사용해서 위치를 넣어 주세요
                                </p>
                                
                            </div>
                        </div>


                    </div>
                </div>

            </div>

            <div class="col-lg-12 ">
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">의료진</h6>
                    </div>
                    <div class="card-columns" id="cccbody" style="column-count: 1;">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <div class="card" style="width:200px; height: auto; display: inline-block;" id="copy">
                            <div class="card-body text-center">
                                
                                <br><br>
                                <input type="text" style="text-align: center; width: 100px; border: none;" readonly
                                    value="의사이름">
                                <hr>
                                <textarea
                                    style="width: 150px; height: 200px; border: none; resize: none;" readonly>의사에 대한 간단한 소개</textarea>
                            </div>
                        </div>
                    </div>
                    <!-- <div style="text-align: center;">
                        <input type="button" value="의사 등록" class="btn btn-primary">
                    </div> -->
                    

                </div>
            </div>

            <div class="col-lg-12 mb-4">
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">댓글</h6>
                    </div>
                    <div class="card-body">

                        <div class="commentArea" style="width: 100%; height: 100%; text-align: left;">

                            <div class="commentList"><span>user1 : ooo맛있어요 </span> &nbsp;&nbsp; <span
                                    class="report-comment" style="color:red;"></span> </div>
                            <div class="commentList"><span>user2 : ooo는 별로 </span> &nbsp;&nbsp; <span
                                    class="report-comment" style="color:red;"></span> </div>
                            <div class="commentList"><span>user3 : ooo?? </span> &nbsp;&nbsp; <span
                                    class="report-comment" style="color:red;"></span> </div>
                            <div class="commentList"><span>user4 : ooo!!!!! </span> &nbsp;&nbsp; <span
                                    class="report-comment" style="color:red;"></span> </div>
                            <br>


                            
                            <span>아이디 : </span> &nbsp; <input type="text" style="width: 70%;" placeholder="댓글을 입력해주세요"> &nbsp; <input type="button" value="등록">

                        </div>

                    </div>


                </div>
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
Copyright &copy;<script>document.write(new Date().getFullYear());</script> 권한은 전적으로 나한테 있습니다.

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
