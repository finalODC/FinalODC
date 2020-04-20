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
                
                <table class="table table-bordered table-hover" style="text-align: center;" id="dataTable" width="100%" cellspacing="0">
        
                  <thead>
                    <tr>
                      <th width="60px">번호</th>
                      
                      <th>제목</th>
                      <th width="100px">작성자</th>
                      <th width="100px">작성날짜</th>
                      <th width="100px">답변여부</th>

                      
                    </tr>
                  </thead>
                  
                 <%--  <div>
                  	${list["2"]["qId"] }
                  	${list["2"]["qnaRe"]["aContent"]}
                  
                  </div> --%>
                 
                  <tbody id="askbody">
                   
                  </tbody>
                </table>
              </div>
              <div> 
              <ul class="pagination justify-content-center pagination-sm" id="paging">
               
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
        	pegination(${currentPage});
        });
        
        function pegination(currentPage){
        	$.ajax({
        		url:"mAskAjax.ma",
        		type:"post",
        		data:{currentPage:currentPage},
        		success:function(data){
        			var pi = data["pi"];
        			var list = data["list"];
        			var tb = $("#askbody");
        			tb.empty();
        			console.log(data);
        			for(var i in list){
        				var $tr = $("<tr>")
        				var $td1 = $("<td>").text(list[i]["qId"]);
        				var $td2 = $("<td>").text(list[i]["qTitle"]);
        				var $td3 = $("<td>").text(list[i]["qWriter"]);
        				var $td4 = $("<td>").text(list[i]["qDate"]);
        				var $td5 = $("<td>");
        				
        				if(list[i]["qnaRe"] !=null){
        					$td5.text('◎');
        				}
        				
        				tb.append($tr.append($td1).append($td2).append($td3).append($td4).append($td5));
        			}
        			var cu;
        			
        			 $("#askbody tr").click(function(){
		                    var qId=$(this).find("td:eq(0)").text();
		                    console.log(qId);
						
		                    location.href="askread.ma?qId="+qId +"&currentPage="+cu;
		                  });
        			 
        			 $("#paging").empty();
        			
        			var sp= pi.startPage;
        			var ep= pi.endPage;
        			var mp= pi.maxPage;
        			cu = pi.currentPage
        			var onepli = $('<li class="page-item ">');
        			var onepbu = $('<button class="page-link" onclick=pegination('+1+')>').text('<<');
        			
        			var prevli = $('<li class="page-item ">');
        			var prevbu = $('<button class="page-link" onclick=pegination('+(cu-1)+')>').text('<');
        			
        			if(cu==1){
						onepbu.attr("disabled",true);
						prevbu.attr("disabled",true);
        			}
        			
        			$("#paging").append(onepli.append(onepbu)).append(prevli.append(prevbu));
        			

        			 for(var i = sp; i<=ep; i++){
        				var $li = $('<li class="page-item ">');
        				var $button = $('<button class="page-link" onclick=pegination('+i+')>').text(i);
        				if(cu == i){
        					$button.attr("disabled",true).css("color","tomato").addClass("cu");
        				} 
        				$("#paging").append($li.append($button));
        			}
        			 
        			 
        			 
        			var nextli = $('<li class="page-item ">');
          			var nextbu = $('<button class="page-link" onclick=pegination('+(cu+1)+')>').text('>');
        			 
        			var maxli = $('<li class="page-item ">');
         			var maxbu = $('<button class="page-link" onclick=pegination('+mp+')>').text('>>');

         			if(cu==1){
         				nextbu.attr("disabled",true);
         				maxbu.attr("disabled",true);
         			}
         			
         			$("#paging").append(nextli.append(nextbu)).append(maxli.append(maxbu));
        		},error:function(){
        			alert("ajax에러")
        		}
		               

        		
        		
        	})
        	
        	
        }

      </script>

</body>

</html>