<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Custom fonts for this template-->
<c:set var = "path" value="${pageContext.servletContext.contextPath }" scope="application"/>
  <link href="${path }/resources/css/manager/all.min.css" rel="stylesheet" type="text/css">
  <link href="${path }/resources/css/manager/css" rel="stylesheet">
  <link href="${path }/resources/css/manager/1_content" rel="stylesheet">


  <!-- Custom styles for this template-->
  <link href="${path }/resources/css/manager/sb-admin-2.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
    integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<script src="${path }/resources/js/manager/jquery.min.js"></script>
      <script src="${path }/resources/js/manager/bootstrap.bundle.min.js"></script>
</head>
<body>
    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - 로고 -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="../관리자~2/intranet_main.html">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-home"></i>
        </div>
        <div class="sidebar-brand-text mx-3">관리페이지</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - 메인으로 -->
      <li class="nav-item">
        <a class="nav-link" href="../관리자~2/intranet_main.html">
          <i class="fa fa-home fa-2x"></i>
          <span>메인으로</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- 메뉴 -->
      <div class="sidebar-heading">
        메뉴
      </div>


      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item"><a class="nav-link collapsed"
        href="https://blackrockdigital.github.io/startbootstrap-sb-admin-2/blank.html#"
        data-toggle="collapse" data-target="#collapseRegister" aria-expanded="true"
        aria-controls="collapseRegister"> <i class="fa fa-address-book fa-2x"></i> <span>회원관리</span>
    </a>
    <div id="collapseRegister" class="collapse" aria-labelledby="headingRegister"
        data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">상세 메뉴</h6>
            <a class="collapse-item" href="Hmember.html">일반사용자</a> 
            <a class="collapse-item" href="HHospital.html">병원</a> 
        </div>
    </div>
</li>

<li class="nav-item"><a class="nav-link collapsed"
    href="https://blackrockdigital.github.io/startbootstrap-sb-admin-2/blank.html#"
    data-toggle="collapse" data-target="#collapseRegister1" aria-expanded="true"
    aria-controls="collapseRegister"> <i class="fa fa-calendar-alt fa-2x"></i> <span>공지/문의</span>
</a>
<div id="collapseRegister1" class="collapse" aria-labelledby="headingRegister1"
    data-parent="#accordionSidebar">
    <div class="bg-white py-2 collapse-inner rounded">
        <h6 class="collapse-header">상세 메뉴</h6>
        <a class="collapse-item" href="notice.html">공지</a> 
        <a class="collapse-item" href="ask.html">문의</a> 
    </div>
</div>
</li>



<!-- Nav Item - 품의 관리 -->
<li class="nav-item" ><a class="nav-link" href="askno.html"> <i class="fa fa-calendar-alt fa-2x"></i> <span>커뮤니티 관리</span></a></li>
<!-- Divider -->
<hr class="sidebar-divider">

<!-- Nav Item - 홈페이지 -->
<li class="nav-item">
  <a class="nav-link" href="../homepage/mainpage.html">
    <i class="fa fa-check-circle fa-2x"></i>
    <span>홈페이지</span></a>
</li>




    </ul>

</body>
</html>