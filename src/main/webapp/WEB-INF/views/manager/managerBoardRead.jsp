<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
          <h1 class="h3 mb-2 text-gray-800">신고
          </h1>
          

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
            </div>
            <div class="card-body">
              <div class="table-responsive">
             
                
                <table class="table table-bordered " style="background: white;">
                  <tbody>
                    <tr>
                      <th class="tatd">글번호:</th>
                      <td><input type="text" class ="form-control" style="width:70px;" name="nid" value="123"readonly></td>
                    </tr>
                    <tr>
                        <th class="tatd">작성자</th>
                        <td>
                          <input type="text" class ="form-control" style="width:150px;" name="userId" value="123"readonly>
                        </td>
                    </tr>
                    <tr>
                      <th class="tatd">신고횟수:</th>
                        <td><input type="text" class ="form-control" style="width:70px;" name="nid" value="123"readonly></td>
                     
                  </tr>
                          <tr>
                              <th class="tatd" width="100px" >제목: </th>
                              <td><input type="text" placeholder="제목을 입력하세요. " name="subject" class="form-control"readonly/></td>
                          </tr>
                              <th class="tatd">내용: </th>
                              <div></div>
                          </tr>
                       
                  </tbody>
              </table>
              <div class="float-right">
                      <input class="btn btn-link" style="background: #002c5f; color: white;" type="button" value="신고초기화" id="rewritego" class="pull-right"/>
                      <input class="btn btn-danger" style=" color: white;" type="button" value="삭제하기" id="" class="pull-right"/>
              </div>
         
              </div>
            </div>
          </div>

        </div>
        <!-- End of Content Wrapper -->

      </div>
      <!-- End of Page Wrapper -->


      <!-- Bootstrap core JavaScript-->
      <script src="intranet/jquery.min.js"></script>
      <script src="intranet/bootstrap.bundle.min.js"></script>
      <script>
        $(function(){
          //공지작성
        
          $("#rewritego").click(function(){
            location.href="managerBoard.html"
          })


          //전체체크
        });

      </script>




</body>

</html>