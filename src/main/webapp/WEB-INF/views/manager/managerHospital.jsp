<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- saved from url=(0061)https://blackrockdigital.github.io/startbootstrap-sb-admin-2/ -->
<html lang="ko">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>인트라넷</title>

  <!-- Custom fonts for this template-->

  <style>
    

  
  </style>

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">
  
 	<jsp:include page="managerInclude.jsp"/>

    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">



        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">
  
          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">병원관리
          </h1>
          

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">회원 관리</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <div style="float: right;">
                <input type="text" class="form-control " placeholder="Search" style="width:150px; display: inline;" > <button class="btn btn-success">검색</button>
                </div>
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        
                  <thead>
                    <tr>
                      <th>아이디</th>
                      <th>병원명</th>
                      <th>병원주소</th>
                      <th>가입일</th>
                      <th>전화번호</th>
                      <th>관리</th>
                     
                      
                    </tr>
                  </thead>
                 
                  <tbody>
                    <tr>
                      <td>xohos</td>
                      <td>xo병원</td>
                      <td>xo@naver.com</td>
                      <td>20/03/25</td>
                      <td>070-4848-4821</td>

                      <td><button class="btn btn-danger del"  style="width: 80px;">삭제</button></td>
                      
                      
                    </tr>
                    <tr>
                      <td>quddnjsok</td>
                      <td>ok병원</td>
                      <td>ok@naver.com</td>
                      <td>20/03/25</td>
                      <td>010-4841-4821</td>

                      <td><button class="btn btn-danger del"  style="width: 80px;">삭제</button></td>
                      
                    </tr>
                    <tr>
                      <td>vkrlacl</td>
                      <td>파란동물병원</td>
                      <td>vkrlacl@naver.com</td>
                      <td>20/03/25</td>
                      <td>070-7844-4811</td>

                      <td><button class="btn btn-danger del"  style="width: 80px;">삭제</button></td>
                      
                    </tr>
                    <tr>
                      <td>Rkrenrl41</td>
                      <td>신까치병원</td>
                      <td>Rkrenrl@naver.com</td>
                      <td>20/03/25</td>
                      <td>010-8487-1152</td>

                      <td><button class="btn btn-danger del"  style="width: 80px;">삭제</button></td>
                      
                    </tr>
                    <tr>
                      <td>anfdut52</td>
                      <td>나래병원</td>
                      <td>anffut@naver.com</td>
                      <td>20/03/25</td>
                      <td>02-481-1550</td>

                      <td><button class="btn btn-danger del"  style="width: 80px;">삭제</button></td>
                      
                    </tr>
                   
                    

                  </tbody>
                </table>
              </div>
            </div>
          </div>

        </div>
        <!-- End of Content Wrapper -->

      </div>
      <!-- End of Page Wrapper -->


      <!-- Bootstrap core JavaScript-->

      <script>
        $(function(){
                    //삭제
             $(".del").click(function(){
              var mid = $(this).parent("td").siblings("td:eq(0)").text();
              if(confirm(mid+"를 삭제하시겠습니까?")){
                location.href=""+mid;
              }
            })
        })

      </script>




</body>

</html>