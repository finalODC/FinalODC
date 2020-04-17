<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
                      <td><input type="text" name="nid"class ="form-control" style="width:70px;" value="${qna.qId }"readonly></td>
                     
                     
                    <tr>
                      <th width="100px">작성자:</th>
                      <td><input type="text" name="nid" class ="form-control" style="width:200px;" value="${qna.qWriter }"readonly></td>
                     
                    </tr>
        
                          <tr>
                           
                              <th width="100px">제목: </th>
                              <td><input type="text" placeholder="제목을 입력하세요. " value="${qna.qTitle }" name="subject" class="form-control" readonly/></td>
                          </tr>
                              <th width="100px">내용: </th>
                              <td><div style="text-align:left;">${qna.qContent }</div></td>
                          </tr>
                         
                          <tr>
                              <th width="100px">첨부파일: </th>
                              <td>
                             
                              </td>
                          </tr>
                       
                  </tbody>
              </table>
 
              
               <c:if test="${!empty qna.qnaRe}">
              답변
               <table class="table table-bordered" style="background: white;">
                <tbody>
                <!-- 코멘트가 있을경우 -->
                <tr>
                    <th width="100px">관리자<br>
                   
                    ${qna.qnaRe.aDate }<br> <br>
                    <button class="btn btn-danger">삭제</button></th>
            
                    <td><div>${qna.qnaRe.aContent}</div></td>
                </tr>
                <tr></tr>
              </tbody>
              </table>
              </c:if>
              
              <c:if test="${empty qna.qnaRe}">
                <form action="" method="POST" enctype="multipart/form-data" id="comment">
              <table class="table table-bordered" style="background: white;">
                <tr>
                  <th  width="100px"><span>관리자1</span><br></th>
                  				
                  <td><textarea cols="10" rows="10" placeholder="내용을 입력하세요. " name="aContent" id="content" class="form-control "  style="resize : none;"></textarea></td>
                </tr>
              </table>
              <div class="float-right">
                      <input type="button" class="btn btn-link" style="background: #002c5f; color: white;" type="button" value="답변하기" id="recomment" class="pull-right"/>
              </div>
    
            </form>
             </c:if>
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
          //답변
        
          $("#recomment").click(function(){
            $("#comment").submit();
          })


          //전체체크
        });

      </script>

</body>
</html>