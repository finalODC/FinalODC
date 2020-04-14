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
                <div class="input-group mb-3" style="width:200px; float:right;">
                    <select id ='sel' onchange="sele();">
                  	<option value="1">전체보기</option>
                  	<option value="2">주소</option>
                  	<option value="3">아이디</option>
                  	<option value="4">병원명</option>
                  	
                  </select>
                  <input type="text" class="form-control" id="search" style="width:150px; display:inline-block" placeholder="Search" readonly>
                  <div class="input-group-append">
                    <button class="btn btn-success" type="button" onclick="pigo(1);" >Go</button>  
                    
                   </div>
                </div>

                <table class="table table-bordered table-hover" style="text-align: center;" id="dataTable" width="100%" cellspacing="0">
        	
                  <thead>
                    <tr>
                    	<th>Hid</th>
                      <th>아이디</th>
                      <th>병원명</th>
                      <th>병원주소</th>
                      <th>가입일</th>
                      <th>전화번호</th>
                      <th>관리</th>
                     
                      
                    </tr>
                  </thead>
                 
                  <tbody id="tb1">
                 <c:forEach var="b" items="${list}">
					<tr>
						<td align="center">${ b.hId }</td>
						<td align="left">
						<%-- <c:if test="${ !empty loginUser }">
						<c:url var="bdetail" value="bdetail.bo">
						<c:param name="bId" value="${ b.bId }"/>
						<c:param name="currentPage" value="${ pi.currentPage }"/>
					</c:url> 
					<a href="${ bdetail }">${ b.bTitle }</a>
				</c:if>
				
				<c:if test="${ empty loginUser }">
					${ b.bTitle }				
				</c:if>--%>
				
				${b.userId }
			</td>
			<td align="center">${ b.hName }</td>
			<td align="center">${ b.hAddress }</td>
			<td align="center">${ b.hCreateDate }</td>
			<td align="center">${ b.hPhone }</td>
			
			 <td><button class="btn btn-danger del"  style="width: 80px;")>삭제</button></td>	
		
		</tr>
		</c:forEach>

                  </tbody>
                </table>
              </div>
              <div > 	
              
              <ul class="pagination justify-content-center pagination-sm" id="paging">
                <li class="page-item "><span class="page-link" >&lt;&lt;</span></li>
                <li class="page-item "><span class="page-link" >&lt;</span></li>
                  <c:forEach var ="p" begin="${pi.startPage }" end="${pi.endPage }"> 
              	<li class="page-item ">
              	<c:if test="${pi.currentPage eq p }"><button  class="page-link" style="color:red" >${ p}</button></c:if>
              	<c:if test="${pi.currentPage ne p }"><button class="page-link" onclick="pigo(${p})" >${ p}</button></c:if></li>
              	</c:forEach>
              
                <li class="page-item"><button class="page-link" onclick="pigo(${pi.currentPage+1})" >&gt;</button></li>
                <li class="page-item"><button class="page-link" onclick="pigo(${pi.maxPage})" >&gt;&gt;</button></li>
              </ul>
              </div>
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
        
        function sele(){
        	console.log(($("#sel").val()));
         	if($("#sel").val() != 1){
        		
        		$("#search").removeAttr("readonly")
        	} else{
        		$("#search").val("").attr("readonly","true");
        		pigo(1);
        	}
        }
        
        function pigo(currentPage){
        	//console.log(currentPage)
        	//셀렉처리
        	//검색어 처리
        	var category = $("#sel").val();
        	var search = $("#search").val();
        			
        	
        	var sel = $("#sel").val();
        	var search = $("#search").val();
        	$.ajax({
        		url:"hmlistAjax.ma",
        		type:"get",
        		data:{currentPage:currentPage, category:category, search:search},
        		success:function(data){
        			var list = data["list"];
        			var pi = data["pi"];
        			$("#tb1").empty();
        			$("#paging").empty();
					
        			for(var i in list){
        				var $tr = $("<tr>");
        				var $td1 = $("<td align='center'>").text(list[i].hId);
        				var $td2 = $("<td align='left'>").text(list[i].userId);
        				var $td3 = $("<td align='center'>").text(list[i].hName);
        				var $td4 = $("<td align='center'>").text(list[i].hAddress);
        				var $td5 = $("<td align='center'>").text(list[i].hCreateDate);
        				var $td6 = $("<td align='center'>").text(list[i].hPhone);
        				var $td7 = $("<td>").html('<button class="btn btn-danger del"  style="width: 80px;")>삭제</button>');
        				
        				$tr.append($td1).append($td2).append($td3).append($td4).append($td5).append($td6).append($td7);
        				$("#tb1").append($tr);
        				
        			}
        			
        			 $(".del").click(function(){
        	              var mid = $(this).parent("td").siblings("td:eq(0)").text();
        	              if(confirm(mid+"를 삭제하시겠습니까?")){
        	                location.href=""+mid;
        	              }
        	            });
        	            
        			var sp= pi.startPage;
        			var ep= pi.endPage;
        			var mp= pi.maxPage;
        			var cu = pi.currentPage
        			var onepli = $('<li class="page-item ">');
        			var onepbu = $('<button class="page-link" onclick=pigo('+1+')>').text('<<');
        			
        			var prevli = $('<li class="page-item ">');
        			var prevbu = $('<button class="page-link" onclick=pigo('+(cu-1)+')>').text('<');
        			
        			if(cu==1){
						onepbu.attr("disabled",true);
						prevbu.attr("disabled",true);
        			}
        			
        			$("#paging").append(onepli.append(onepbu)).append(prevli.append(prevbu));
        			

        			 for(var i = sp; i<=ep; i++){
        				var $li = $('<li class="page-item ">');
        				var $button = $('<button class="page-link" onclick=pigo('+i+')>').text(i);
        				if(cu == i){
        					$button.attr("disabled",true).css("color","tomato");
        				} 
        				$("#paging").append($li.append($button));
        			}
        			 
        			 
        			 
        			var nextli = $('<li class="page-item ">');
          			var nextbu = $('<button class="page-link" onclick=pigo('+(cu+1)+')>').text('>');
        			 
        			var maxli = $('<li class="page-item ">');
         			var maxbu = $('<button class="page-link" onclick=pigo('+mp+')>').text('>>');

         			if(cu==1){
         				nextbu.attr("disabled",true);
         				maxbu.attr("disabled",true);
         			}
         			
         			$("#paging").append(nextli.append(nextbu)).append(maxli.append(maxbu));
        				
        		},error:function(){
        			alert("에러");
        		}
        	});
        }

      </script>



</body>

</html>