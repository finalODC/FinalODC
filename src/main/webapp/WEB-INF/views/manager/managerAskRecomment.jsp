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
          <h1 class="h3 mb-2 text-gray-800">문의
          </h1>
          

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
            </div>
            <div class="card-body">
              <div class="table-responsive">
         
                
                <table class="table table-bordered" style="background: white;">
                  <tbody>
                    <tr>
                      <th width="100px">문의번호:</th>
                      <td><input type="text" name="nid" value="123"readonly></td>
                     
                     
                    <tr>
                      <th width="100px">작성자:</th>
                      <td><input type="text" name="nid" value="123"readonly></td>
                     
                    </tr>
                    <tr>
                        <th class="tatd" >카테고리:</th>
                        <td><select disabled>
                            <option value="1"> 일반
                            </option>
                            <option value="2"> ???
                            </option>
                            <option value="3"> 그런가
                            </option>
                            <option value="4"> 뀨유
                            </option>


                        </select>
                        </td>
                    </tr>
                          <tr>
                           
                              <th width="100px">제목: </th>
                              <td><input type="text" placeholder="제목을 입력하세요. " name="subject" class="form-control" readonly/></td>
                          </tr>
                              <th width="100px">내용: </th>
                              <td><textarea cols="10" rows="10" placeholder="내용을 입력하세요. " name="content" class="form-control "  style="resize : none;" readonly></textarea></td>
                          </tr>
                         
                          <tr>
                              <th width="100px">첨부파일: </th>
                              <td>
                             
                              </td>
                          </tr>
                       
                  </tbody>
              </table>
              답변
              <table class="table table-bordered" style="background: white;">
                <tbody>
                <tr>
                    <th width="100px">관리자</th>
                    <td><div>dsadsadsadasdsadas</div></td>
                </tr>
              </tbody>
              </table>
              <form action="" method="POST" enctype="multipart/form-data" id="comment">
              <table class="table table-bordered" style="background: white;">
                <tr>
                  <th  width="100px"><span>관리자1</span></th>
                  <td><textarea cols="10" rows="10" placeholder="내용을 입력하세요. " name="content" id="comment" class="form-control "  style="resize : none;"></textarea></td>
                </tr>
              </table>
              <div class="float-right">
                      <input class="btn btn-link" style="background: #002c5f; color: white;" type="button" value="답변하기" id="recomment" class="pull-right"/>
              </div>
            </form>
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
          //공지작성
        
          $("#recomment").click(function(){
            $("#comment").submit();
          })


          //전체체크
        });

      </script>




</body>

</html>