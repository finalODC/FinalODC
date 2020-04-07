<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<c:set var = "path" value="${pageContext.servletContext.contextPath }" scope="application"/>
  <link rel="stylesheet" href="https://s3.amazonaws.com/codecademy-content/projects/bootstrap.min.css">
  <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400' rel='stylesheet' type='text/css'>
  <link href="${path }/resources/css/stylne.css" rel='stylesheet' type='text/css'>
  <link href="${path }/resources/css/bootstrap.min.css" rel='stylesheet' type='text/css'>
  <link href="${path }/resources/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
  <link href="${path }/resources/css/slicknav.min.css" rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
  <link href="${path }/resources/css/style.css" rel='stylesheet' type='text/css'>

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
    
    .card{
  height: 370px;
  margin-top: auto;
  margin-bottom: auto;
  border:0;
  background-color: initial;
}
.input_area{
	width: 80%;
	height: 68px;
	border:0;
  padding-left: 50px;
  font-size: 20px;
  margin-top: 30px;
}

.login_btn{
color: white;
background-color: #30627e;
margin-top:50px;
width: 70%;
height: 50px;
font-size: 15px;
outline: none !important;
}

.login_btn:hover{
color: black;
background-color: white;
}

.jumbotron {
  background: url("https://s3.amazonaws.com/codecademy-content/projects/adoptly/bg.jpg")
    no-repeat center center;
  background-size: cover;
  height: 789px;
  text-align: center;
  margin-top: 105px;
  margin-bottom: 0;
}


input:focus{
outline: 0 0 0 0  !important;
box-shadow: 0 0 0 0 !important;

}

  </style>
</head>



<body>
  <jsp:include page="common/menubar.jsp"/>



  <div class="jumbotron" >
    <div class="container">
      <div style="margin-top: 5%;">
      <h3>간편하게 동물병원을 찾자!</h3>
    </div>
      <br>
      <div class="d-flex justify-content-center" >
        <div class="card " style="background-color: #f5f6f7d0; height: 350px; width: 800px; margin-top: 50px;">
          <div class="card-body">
            <h1>병원 찾기</h1>
            <form action="">
            <div class="input-groupp">
              <input type="text" class="input_area" placeholder="주소를 입력해주세요">
            </div>
            <div class="button-area d-flex justify-content-center ">
              <input type="submit" value="찾기" class="btn login_btn">			
              			
            </div>
          </form>
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