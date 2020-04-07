<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
          <h1 class="h3 mb-2 text-gray-800">문의
          </h1>
          

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
            </div>
            <div class="card-body">
              <div class="table-responsive">
                
                <table class="table table-bordered table-hover" style="text-align: center;" id="dataTable" width="100%" cellspacing="0">
        
                  <thead>
                    <tr>
                      <th width="40px">번호</th>
                      <th>분류</th>
                      <th>제목</th>
                      <th width="100px">작성자</th>
                      <th width="100px">작성날짜</th>
                      <th width="100px">답변여부</th>

                      
                    </tr>
                  </thead>
                 
                  <tbody id="askbody">
                    <tr>

                      <td>게시글</td>
                      <td>계정</td>
                      <td>장나물</td>
                      <td>rlacl123@naver.com</td>
                      <td>20/03/25</td>
                      <td></td>
                     
                      
                    </tr>
                    <tr>
                  
                      <td>ehdclal11</td>
                      <td>계정</td>
                      <td>동백꽃</td>
                      <td>ehdclal@naver.com</td>
                      <td>20/03/25</td>
                      <td>◎</td>
                      
                    </tr>
                    <tr>
                    
                      <td>vkrlacl</td>
                      <td>계정</td>
                      <td>파란이</td>
                      <td>vkrlacl@naver.com</td>
                      <td>20/03/25</td>
                      <td>◎</td>
                     
                    </tr>
                    <tr>
                   
                      <td>Rkrenrl41</td>
                      <td>계정</td>
                      <td>신까치</td>
                      <td>Rkrenrl@naver.com</td>
                      <td>20/03/25</td>
                      <td>◎</td>
                      
                    </tr>
                    <tr>
                 
                      <td>anfdut52</td>
                      <td>계정</td>
                      <td>신나래</td>
                      <td>anffut@naver.com</td>
                      <td>20/03/25</td>
                      <td>◎</td>
                      
                    </tr>
                   
                    

                  </tbody>
                </table>
              </div>
              <div> 	<ul class="pagination justify-content-center pagination-sm">
                <li class="page-item"><a class="page-link" href="#">&lt;&lt;</a></li>
                <li class="page-item"><a class="page-link" href="#">&lt;</a></li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">&gt;</a></li>
                <li class="page-item"><a class="page-link" href="#">&gt;&gt;</a></li>
              </ul></div>
            </div>
          </div>

        </div>
        <!-- End of Content Wrapper -->

      </div>
      <!-- End of Page Wrapper -->


      <!-- Bootstrap core JavaScript-->

      <script>
        $(function(){
          $("#askbody tr").click(function(){
            var aId=$(this).find("td:eq(0)").text();
            console.log(aId);

            location.href="askread.html"
          })
        });

      </script>

</body>

</html>