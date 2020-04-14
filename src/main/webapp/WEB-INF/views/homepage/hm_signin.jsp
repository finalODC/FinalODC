<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">

<head>
<c:set var = "path" value="${pageContext.servletContext.contextPath }" scope="application"/>
  <link rel="stylesheet" href="https://s3.amazonaws.com/codecademy-content/projects/bootstrap.min.css">
  <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400' rel='stylesheet' type='text/css'>
  <link href="${path }/resources/css/stylne.css" rel='stylesheet' type='text/css'>
  <link href="${path }/resources/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
  <link href="${path }/resources/css/slicknav.min.css" rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
  <link href="${path }/resources/css/style.css" rel='stylesheet' type='text/css'>


  <style>



.login_btn{
color: white;
background-color: #30627e;
margin-top:20px;
width: 50%;
height: 60px;
font-size: 20px;
outline: none !important; 
}

.login_btn:hover{
color: black;
background-color: white;
}

input:focus{
outline: 0 0 0 0  !important;
box-shadow: 0 0 0 0 !important;
}
  </style>
</head>



<body>

  <div class="jumbotron" style="height: 889px; margin: 0px;">
    <div class="container">
        <br><br><br><br><br><br><br><br><br><br><br>
		<h1>회원가입</h1>
		<br><br><br><br>
        <div class="d-flex justify-content-center " style="background-color: #f5f6f7d0; height: 260px">
          <div class="card">
          <div class="card-body">
          <br><br>
          <div class="button-area d-flex justify-content-center" >
              <input type="button" id="btnsign" value="일반회원 회원가입" onclick="location.href='msignin.do'" class="btn login_btn">						
          </div>
          <div class="button-area d-flex justify-content-center">
              <input type="button" id="btnsign" value="병원 회원가입" class="btn login_btn" >						
          </div>

            </div>
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
            <li><a href="#">관리자로그인</a></li>
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
  
</body>


</html>