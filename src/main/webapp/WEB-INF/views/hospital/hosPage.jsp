<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- saved from url=(0061)https://blackrockdigital.github.io/startbootstrap-sb-admin-2/ -->
<html lang="ko">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <c:set var="path" value="${pageContext.servletContext.contextPath }"
   scope="application" />
    <title>내 병원 관리</title>

<link href="${ path }/resources/css/manager/sb-admin-2.min.css"
   rel="stylesheet">
<link rel="stylesheet"
   href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
   integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
   crossorigin="anonymous">
<script src="${ path }/resources/js/jquery-3.2.1.min.js"></script>

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - 로고 -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center"
                href="mainpage.do">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-home"></i>
                </div>
                <div class="sidebar-brand-text mx-3"></div>
            </a>



            <!-- Divider -->
            <div class="sidebar-heading">메뉴</div>

			<hr class="sidebar-divider">



            <!-- Nav Item - 품의 관리 -->


			<li class="nav-item"><a class="nav-link" href="info.ho"> <i
					class="fa fa-calendar-alt fa-2x"></i> <span>내 병원 관리</span></a></li>
					
			<li class="nav-item"><a class="nav-link" href="insertdoc.ho"> <i
					class="fa fa-calendar-alt fa-2x"></i> <span>의사 관리</span></a></li>
					
			<li class="nav-item"><a class="nav-link" href="comdoc.ho"> <i
					class="fa fa-calendar-alt fa-2x"></i> <span>댓글 관리</span></a></li>
	
			<li class="nav-item"><a class="nav-link" href="hosP.ho"> <i
					class="fa fa-calendar-alt fa-2x"></i> <span>계정정보 변경</span></a></li>
					
			<li class="nav-item"><a class="nav-link" href="hlogout.do"> <i
					class="fa fa-calendar-alt fa-2x"></i> <span>로그아웃</span></a></li>

            <!-- Divider -->
            <hr class="sidebar-divider">


        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div class="container-fluid">
            <!-- 컨텐츠 머리글 -->
            <div class="d-sm-flex align-items-center justify-content-between mb-4">

            </div>


            <!-- Content Row -->
            <div class="row">


                <div class="col-md-8 order-md-1" id="aaa">
                    <h4 class="mb-3">개인정보 변경</h4>
                    <hr>
                  <!-- <form action="hosupdate.ho" method="post" id="joinForm"> -->

                        <div class="mb-3">

                            <label for="username">아이디</label> <input type="text" class="form-control"
                                style="width: 30%;" id="userId" value="${ loginUser.userId }" readonly>
                        </div>
                        <br>
                        <div class="mb-3">
                            <label>변경할 비밀번호</label> <span>[영문대소문자,특수문자(!@#$%*)사용가능,
                                8자 이상]</span> <input type="password" class="form-control" style="width: 30%;" id="pwd1">
                        </div>

                        <div class="mb-3">
                            <label>변경할 비밀번호 확인</label><br> <input type="password" class="form-control"
                                style="width: 30%;" id="pwd2">
                        </div>
                        <br>

                        <div class="mb-3">
                            <label>가입일</label><br> <input type="date" class="form-control" style="width: 30%;"
                                id="hireDate" value="${ loginUser.hCreateDate }" disabled>
                        </div>

                        <div class="mb-3">
                            <label>전화</label> <br> <input type="text" class="form-control" style="width: 30%;"
                                id="hPhone" placeholder="-제외" maxlength="12">
                        </div>
                        <br>
                       
                   <input  class="btn btn-primary btn-lg" id="hosupdate" type="button" value="변경하기" >

                    </form>
                </div>
            </div>
        </div>
    </div>
    </div>

   <script>
 	$(function(){
      	$('#hosupdate').on('click',function(){

			if(confirm('변경하시겠습니까?')){
         var pwd1 = $('#pwd1').val();
         var pwd2 = $('#pwd2').val();
         var hPhone = $('#hPhone').val();
         
         var regex = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;
         
         if(!regex.test($("#pwd1").val())){
     		alert("비밀번호 형식이 다릅니다.")
     		$("pwd1").focus();
     		return false;
     	}
         
         if (pwd1 != pwd2) {
            alert('비밀번호를 다시 확인해 주세요');
            return false;
         }

         $.ajax({
            url : "hosupdate.ho",
            type : "post",
            data : {
               userId: '${loginUser.userId}',
               hPhone:hPhone,
               userPwd:pwd1
            },success:function(data){
               if(data!=1){
            	alert('정보가 변경되었습니다');
                location.href="insertdoc.ho";
               }
            },error:function(data){
            	alert("에러발생");
               	location.href="info.ho";
               	
            }
         });
		};
      });
   });
   </script>

    <!-- Footer -->
    <footer class="sticky-footer bg-white">
        <div class="container my-auto">
            <div class="copyright text-center my-auto">
                <span>Copyright © Your Website 2019</span>
            </div>
        </div>
    </footer>
    <!-- End of Footer -->

  
    <!-- End of Page Wrapper -->


  




</body>

</html>