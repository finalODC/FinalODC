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

	td{
		max-width: 10px !important;
	}
  
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
          <h1 class="h3 mb-2 text-gray-800">공지
          </h1>
          

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
            </div>
            <div class="card-body" style="min-height: 380px">
              <div class="table-responsive">
                
                <table class="table table-bordered table-hover" style="text-align: center;" id="dataTable" width="100%" cellspacing="0">
        
                  <thead>
                    <tr>
                      <th>번호</th>
                      <th>제목</th>
                      <th>작성날짜</th>
                      <th>상태</th>

                    </tr>
                  </thead>
                 
                  <tbody id="tbody1">

                  </tbody>
                </table>
                <div>
                <button id="write" style="float: right;" class="btn btn-primary">글쓰기</button>
         
              
              </div>
				<div id="pagination" >

              </div>
              </div>
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
      
      	var page=1;
      
        $(function(){
          //공지작성
          $("#write").click(function(){
                location.href="gonoticewrtie.do"
            });

          //읽기


          getList();
        });
        
        function getList(){
        	$.ajax({
        		url:"getNoticeList.do",
        		type:"post",
        		data:{
        			currentPage:page
        		},success:function(data){
         			$tbody=$('#tbody1');
        			$tbody.html(""); 
        			
        			pageInfo();
        			
        			$.each(data,function(index,value){
        				
        				$tr=$('<tr>');
        				$td1=$('<td>').text(value.nId);
        				$td2=$('<td>').text(value.nTitle);
        				$td3=$('<td>').text(value.nCreateDate);
        				$td4=$('<td>').text(value.nStatus);
        				
        				$tr.append($td1);
        				$tr.append($td2);
        				$tr.append($td3);
        				$tr.append($td4);
        				$tbody.append($tr);
        				
/*                         <th>번호</th>
                        <th>제목</th>
                        <th>작성날짜</th>
                        <th>상태</th> */
        			});
        			
        			console.log(data);
        			
        	          $("#tbody1 td").click(function(){  
        	               if(!$(this).prop("cellIndex")==0){
        	                var id = $(this).parent("tr").find("td").eq("0").text();
        	                location.href="NoticeDetail.do?nId="+id;
        	               } 
        	            });
        			
        		},error:function(data){
        			
        		}
        	});
        }
        
        function pageInfo() {
    		$.ajax({
    			url:"npageInfo.do",
    			type:"post",
    			data:{
    				  currentPage:page
    			},success:function(data){
    				 $page = $('#pagination');
        			 $page.html("");
        			 
        			 
        			 $ui = $('<ul class="pagination justify-content-center pagination-sm">');
        			 
        			 if(data.currentPage != data.startPage){
        				 $ui.append('<li class="goFirstPage"><a  class="page-link"><<</a></li>');
        				 $ui.append('<li class="goBackPage"><a  class="page-link"><</a></li>');

        			 }else{
        				 $ui.append('<li class="goFirstPage"><a  class="page-link"><<</a></li>');
        				 $ui.append('<li class="goBackPage"><a  class="page-link"><</a></li>');
        			 }
        			 
        			 
        			 
        			for(var i = data.startPage; i<=data.endPage;i++){
        				if(data.currentPage==i){
            				$ui.append('<li class="goPage page-item" data-page='+i+' ><a class="page-link" style="background-color:lightgray">'+i+'</a></li>');
        				}else{
        					
        					$ui.append('<li class="goPage page-item" data-page='+i+'><a class="page-link">'+i+'</a></li>');
        				}
        			}
        			
        			if(data.currentPage != data.endPage || data.endPage!=0){
        				$ui.append('<li class="goFrontPage"><a  class="page-link">></a></li>');
        				$ui.append('<li class="goLastPage"><a  class="page-link">>></a></li>');
        			}else{
        				$ui.append('<li class="goLastPage"><a  class="page-link">>></a></li>');
        			}
        			

        			 $page.append($ui);
        			 
        			 
        			 $('.goFirstPage').click(function(){
        				page=data.startPage;
        				getList();
        			 });
        			 
        			 $('.goBackPage').click(function(){
        				 if(data.currentPage==data.startPage){
        					 page=data.currentPage;
        				 }else{
        					 page=(data.currentPage-1);	 
        				 }
        				 getList();
        			 })
        			 
        	         $('.goPage').click(function(){
        	        	  page=$(this).attr("data-page");
        	        	  getList();
        	          });
        	         
        			 $('.goFrontPage').click(function(){
        				 if(data.currentPage==data.endPage||data.endPage==0){
        					 page=data.currentPage;
        				 }else{    					 
        				 	page=(data.currentPage+1);
        				 }
        				 getList();
        			 });
        			 
        	         $('.goLastPage').click(function(){
        	        	if(data.endPage==0){
        	        		page=data.currentPage;
        	        	}else{
        	        	 page=data.endPage;
        	        	}
        	        	 getList();
        	         });
    			},error:function(data){
    				alert("페이지 갯수 ajax 작동실패!")
    			}
    		});

    	}
       
      </script>




</body>

</html>