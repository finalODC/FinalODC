<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                
                <table class="table table-bordered table-hover" style="text-align: center;" id="dataTable" width="100%" cellspacing="0">
        
                  <thead>
                    <tr>
                      <th><input type="checkbox" id="checkall">전체</th>
                      <th>번호</th>
                      <th>제목</th>
                      <th>작성자</th>
                      <th>작성날짜</th>
                      <th>신고횟수</th>
                      <th>관리</th>

                      
                    </tr>
                  </thead>
                 	
                  <tbody id="tbody1">
                  <c:if test="${bStatus eq 0 }">
               		<c:forEach var="b" items="${list }"  varStatus="status">
               		<tr>
               			<td><input type="checkbox" class="check1"></td>
               			<td>${b.fbId }</td>
               			<td>${b.fbTitle }</td>
               			<td>${b.fbWriter }</td>
               			<td>${b.fbCreatedate }</td>
               			<td>${b.complain }</td>
               			<td><button class="btn btn-primary reset">초기화</button>&nbsp;&nbsp;<button class="btn btn-danger del">삭제</button></td>
               			</tr>
               		</c:forEach>
               	</c:if>
               	  <c:if test="${bStatus eq 1 }">
               		<c:forEach var="b" items="${list }"  varStatus="status">
               		<tr>
               			<td><input type="checkbox" class="check1"></td>
               			<td>${b.tbId }</td>
               			<td>${b.tbTitle }</td>
               			<td>${b.tbWriter }</td>
               			<td>${b.tbCreateDate }</td>
               			<td>${b.tbComplain }</td>
               			
               			<td><button class="btn btn-primary reset">초기화</button>&nbsp;&nbsp;<button class="btn btn-danger del">삭제</button></td>
               			</tr>
               		</c:forEach>
               	</c:if>
                  </tbody>
                </table>
                <div>
                <button id="allreset" style="float: right;" class="btn btn-primary">체크 리셋</button>
                <button id="alldel" class="btn btn-danger">체크삭제</button>
         			
              
              </div>
              <div>
              <ul class="pagination justify-content-center pagination-sm">
              
            
              	<c:if test ="${pi.currentPage eq 1 }">
              		<li class="page-item"><a class="page-link">&lt;&lt;</a></li>
              		<li class="page-item"><a class="page-link">&lt;</a></li>
              	</c:if>

              	<c:if test ="${pi.currentPage ne 1 }">
              		<li class="page-item"><a class="page-link" href="singo.ma?currentPage=1&bStatus=${bStatus }">&lt;&lt;</a></li>
              		<li class="page-item"><a class="page-link" href="singo.ma?currentPage=${pi.currentPage-1 }&bStatus=${bStatus }">&lt;</a></li>
              		
              	</c:if>
     
          
              	  <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
              	  <c:if test ="${pi.currentPage eq p }">
              	  	<li class="page-item"><a class="page-link" >${p }</a></li>
              		
              	  </c:if>
              	   <c:if test ="${pi.currentPage ne p }">
              	  	<li class="page-item"><a class="page-link" href="singo.ma?currentPage=${p }&bStatus=${bStatus }">${p }</a></li>
              		
              	  </c:if>
              	  
              	  
              	  
              	</c:forEach>
              	
              	<c:if test ="${pi.currentPage ne pi.maxPage }">
              		<li class="page-item"><a class="page-link" href="singo.ma?currentPage=${pi.currentPage+1 }&bStatus=${bStatus }">&gt;</a></li>
              		<li class="page-item"><a class="page-link" href="singo.ma?currentPage=${pi.maxPage }&bStatus=${bStatus }">&gt;&gt;</a></li>
              	</c:if>
              	<c:if test ="${pi.currentPage eq pi.maxPage }">
              		<li class="page-item"><a class="page-link">&gt;</a></li>
              		<li class="page-item"><a class="page-link">&gt;&gt;</a></li>
              	</c:if>
              	
                
              
              </ul></div>
              </div>
            </div>
          </div>

        </div>
        <!-- End of Content Wrapper -->

      </div>
      <!-- End of Page Wrapper -->


      <!-- Bootstrap core JavaScript-->
      
      <script>
      var checkarr = [];
        $(document).ready(function(){
      	//리셋
      		$(".reset").click(function(){
              var bId = $(this).parent("td").siblings("td:eq(1)").text();
              if(confirm(bId+"를 초기화하시겠습니까?")){
               $.ajax({
            	   url:"singoReset.ma",
     				type:"get",
     				data:{bStatus:${bStatus}, bId:bId},
     				success:function(data){
     					if(data>0){
     						alert("초기화 성공");
     						location.href="singo.ma?currentPage=${currentPage }&bStatus=${bStatus }";
     					}else{
     						alert("실패");
     					}
     				},error:function(){
     					alert("오류");
     				}
               })
              }
            })
        
          //삭제
          $(".del").click(function(){
              var bId = $(this).parent("td").siblings("td:eq(1)").text();
              if(confirm(bId+"를 삭제하시겠습니까?")){
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
              }
            })

          //읽기
          $("#tbody1 td").click(function(){  
            console.log($(this))
             if($(this).prop("cellIndex")!=0 && $(this).prop("cellIndex")!=6){
            	 
              var bId = $(this).parent("tr").find("td").eq("1").text();
 
              location.href="boardread.ma?currentPage=${pi.currentPage}&bStatus=${bStatus}&bId="+bId;
              
             } 
          })

          //체크용 arr
         
          //하나 체크
          $(".check1").on("change",function(){
             if(!$(this).prop("checked")&& $("#checkall").prop("checked")){
               $("#checkall").prop("checked","")
             }
            if($(this).prop("checked")=="false"){
              $(this).prop("checked","ture")
            }else if($(this).prop("checked") =="true"){
              $(this).prop("checked","")
            }
            var nid = $(this).parent("td").next().text();
            var a = checkarr.indexOf(nid);
             a==-1&& checkarr.push(nid)||checkarr.splice(a,1);
  
              console.log(checkarr);
             

          });

          //전체체크

          $("#checkall").click(function(){
           var trf = $(this).prop("checked");
           checkarr=[]
           console.log(typeof(trf))
           
            if(trf==true){
              $(".check1").prop("checked","false");
              $(".check1").change();
             
              
            }else {
              $(".check1").prop("checked",false );
              console.log(checkarr)
            }
           
          });
        });
        
        $("#allreset").click(function(){
		if(checkarr.length >0){
			var arr = checkarr.join();
			if(confirm(arr+"를 초기화 하시겠습니까?")){
        		$.ajax({
        			url:"singoResetall.ma",
        			type:"get",
        			data:{bStatus:"${bStatus}",arr:arr},
        			success:function(data){
     					if(data>0){
     						alert("초기화 성공");
     						location.href="singo.ma?currentPage=${currentPage }&bStatus=${bStatus }";
     					}else{
     						alert("실패");
     					}
     				},error:function(){
     					alert("오류");
     				}
        		})
        	}
		}        	
        	
        
        
        })
        
          $("#alldel").click(function(){
        	  if(checkarr.length >0){
        		 var arr = checkarr.join();
      			if(confirm(arr+"를 삭제 하시겠습니까?")){
      				$.ajax({
            			url:"singoDelall.ma",
            			type:"get",
            			data:{bStatus:"${bStatus}",arr:arr},
            			success:function(data){
         					if(data>0){
         						alert("삭제 성공");
         						location.href="singo.ma?currentPage=${currentPage }&bStatus=${bStatus }";
         					}else{
         						alert("실패");
         					}
         				},error:function(){
         					alert("오류");
         				}
            		})
              	}
      		}      
        
        })
        
        

      </script>




</body>

</html>