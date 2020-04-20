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
                              
        						<%--<c:if test="${ !empty qna.originalFileName }">
									<a href="${ contextPath }/resources//${ qna.renameFileName }" download="${ qna.originalFileName }">${ qna.originalFileName }</a>
					
									</c:if> --%>
									
								<c:if test="${!empty qna.qFile }">
									파일 다운로드
								</c:if>
                             
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
                    <button class="btn btn-danger" id="delCo">삭제</button></th>
            
                    <td><div>${qna.qnaRe.aContent}</div></td>
                </tr>
                <tr></tr>
              </tbody>
              </table>
              <script>
              	$(function(){
              		$("#delCo").click(function(){
              			$.ajax({
              				url:"deleteQnaRe.ma",
              				type:"post",
              				data:{qId:"${qna.qId}"},
              				success:function(data){
              					if(data>0){
              						alert("삭제완료");
              	          			location.href="askread.ma?qId=${qna.qId}&currentPage=${currentPage}";
              					}else{
              						alert("삭제실패");
              					}
              				},error:function(){
              					alert("ajax에러");
              				}
              			
              			})
              		});
              	});
              
              </script>
              </c:if>
             
              <c:if test="${empty qna.qnaRe}">
                
              <table class="table table-bordered" style="background: white;">
                <tr>
                  <th  width="100px"><span>관리자</span><br></th>
                  				
                  <td><textarea cols="10" rows="10" placeholder="내용을 입력하세요. " id="content1" class="form-control "  style="resize : none;"></textarea></td>
                </tr>
              </table>

              
              <div class="float-left">
                      <input type="button" class="btn btn-link" style="background: #002c5f; color: white;" type="button" value="답변하기" id="recomment" class="pull-right"/></div>&nbsp;
          
		 <script>
        $(document).ready(function(){
          //답변
        
          $("#recomment").click(function(){
        	  console.log($("#content1").val());
           	$.ajax({
          		url:"insertQnaRe.ma",
          		type:"post",
          		data:{aContent:$("#content1").val(),
          				refQid:"${qna.qId}"},
          		success:function(data){
          			if(data>0){
          				alert("답변작성 성공");
              			location.href="askread.ma?qId=${qna.qId}&currentPage=${currentPage}";
          			}else{
          				alert("답변작성 실패");
          			}
          			
          		},error:function(){
          			alert("ajax에러");
          		}
          	}) 
          })
		
        });

      </script>
              
    
             </c:if>
             	<div class="float-right"> <input type="button" class="btn btn-link" style="background: #002c5f; color: white;" type="button" value="목록으로" id="goaskmain" class="pull-right"/>
              </div>
              <script>
              $(document).ready(function(){
            	  $("#goaskmain").click(function(){
            			if(confirm("목록으로 가겠습니까?")){
            				location.href="mAsk.ma?currentPage=${currentPage}";
            			}
              })
             
      			 
      		 });
                //전체체크
              </script>
              </div>
            </div>
          </div>

        </div>
        <!-- End of Content Wrapper -->

      </div>
      <!-- End of Page Wrapper -->


      <!-- Bootstrap core JavaScript-->


</body>
</html>