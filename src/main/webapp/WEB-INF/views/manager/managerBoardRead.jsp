<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                      <td><input type="text" class ="form-control" style="width:70px;" id="bId" readonly></td>
                    </tr>
                    <tr>
                        <th class="tatd">작성자</th>
                        <td>
                          <input type="text" class ="form-control" style="width:150px;" id="writer" readonly>
                        </td>
                    </tr>
                    <tr>
                      <th class="tatd">신고횟수:</th>
                        <td><input type="text" class ="form-control" style="width:70px;" id="bCount" readonly></td>
                     
                  </tr>
                          <tr>
                              <th class="tatd" width="100px" >제목: </th>
                              <td><input type="text" placeholder="제목을 입력하세요. " id="title" class="form-control"readonly/></td>
                          </tr>
                              <th class="tatd">내용: </th>
                              <td><div id="bContent"></div></td>
                          </tr>
                       
                  </tbody>
                  
              </table>
           		 <c:if test ="${ bStatus ==0 }">
                  <script>
                   	$("#bId").val("${br.fbId}")
                   	$("#writer").val("${br.fbWriter}");
                  	$("#bCount").val("${br.complain}");
                  	$("#title").val("${br.fbTitle}");
                  	$("#bContent").text("${br.fbContent}");
                  </script>
                  </c:if>
                   <c:if test ="${ bStatus ==1 }">
                  <script>
                 	$("#bId").val("${br.tbId}")
                   	$("#writer").val("${br.tbWriter}");
                  	$("#bCount").val("${br.tbComplain}");
                  	$("#title").val("${br.tbTitle}");
                  	$("#bContent").text("${br.tbContent}");
                  </script>
                  </c:if>
              <div class="float left"><input type="button" class="btn btn-success" onclick="location.href='singo.ma?currentPage=${currentPage }&bStatus=${bStatus }'" value="목록으로"></div>
              <div class="float-right">
                      <input class="btn btn-link" style="background: #002c5f; color: white;" type="button" value="신고초기화" id="reset" class="pull-right"/>
                      <input class="btn btn-danger" style=" color: white;" type="button" value="삭제하기" id="del" class="pull-right"/>
              </div>
              <script>
              	$(document).ready(function(){
              		var bId = $("#bId").val();
              		$("#reset").click(function(){
              			$.ajax({
              				url:"singoReset.ma",
              				type:"get",
              				data:{bStatus:${bStatus}, bId:bId},
              				success:function(data){
              					if(data>0){
              						alert("초기화 성공");
              						location.href="boardread.ma?currentPage=${currentPage }&bStatus=${bStatus }&bId="+bId;
              					}else{
              						alert("실패");
              					}
              				},error:function(){
              					alert("오류");
              				}
              			})
              		});
              		
              		$("#del").click(function(){
              				$.ajax({
              				url:"singoDel.ma",
              				type:"get",
              				data:{bStatus:${bStatus}, bId:bId},
              				success:function(data){
              					if(data>0){
              						alert("삭제 성공");
              						location.href="singo.ma?currentPage=${currentPage }&bStatus=${bStatus }"
              					}else{
              						alert("실패");
              					}
              				},error:function(){
              					alert("오류");
              				}
              			
              				
              			})
              			
              		});
              		
              	});
              
              
              </script>
         
              </div>
            </div>
          </div>

        </div>
    
      </div>
      

  




</body>

</html>