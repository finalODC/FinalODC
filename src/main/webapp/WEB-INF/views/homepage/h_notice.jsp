<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>

<c:set var="path" value="${pageContext.servletContext.contextPath}"
	scope="application" />




  <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400' rel='stylesheet' type='text/css'>
  

  <link href="${path }/resources/css/bootstrap.min.css" rel='stylesheet' type='text/css'>
  <link href="${path }/resources/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
  <link href="${path }/resources/css/slicknav.min.css" rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
  <link href="${path }/resources/css/style.css" rel='stylesheet' type='text/css'>
  <link href="${path }/resources/css/stylne.css" rel='stylesheet' type='text/css'>

<!-- 폰트 아이콘 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/ddfd73bace.js"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>

<style>
.main-menu li a:hover {
	color: #fb105f;
}

.main-menu>li>a {
	font-size: 18px;
}

.user-panel a:hover {
	color: #fa296f;
}

/* .footer {
	position: absolute;
	left: 0;
	bottom: 0;
	width: 100%;
	text-align: center;
} */

#container {
	height: 500px;
}

#aside {
	width: 300px;
	height: 750px;
	float: left;
	margin-left: 330px;
}

#contents {
	width: 700px;
	height: 750px;
	float: left;
}

#header {
	height: 100px;
}

#Search {
	font-size: 16px;
	width: 325px;
	padding: 10px;
	height: 30px;
	border: 1px solid black;
}

#SearchBtn {
	width: 50px;
	border: 0px;
	background: white;
}
    .page-link{
    padding: .5rem 1rem !important; 
    font-size:15px !important; 
    }

</style>
</head>



<body>
	<jsp:include page="common/menubar.jsp"/>


	<div class="col-lg-12" style="background-image: url('${path }/resources/img/bg2.jpg'); height:243px; margin-top:109px; margin-bottom:50px;" align="center">
		<h1 style="padding-top: 80px">공지사항</h1>
		
	
	</div>
	
	<div class="container" style="min-height: 711px;">
	
	<div class="col-lg-12">



				<div align="right">
					<table class="table table-hover table-bordered" align="center">
						<thead>
							<tr>
								<th style="width:10%;">no.</th>
								<th >제목</th>
								<th style="width:10%">글쓴이</th>
								<th style="width:20%">날짜</th>
							</tr>
						</thead>
						 <tbody id="tbody1">
		
						</tbody>
					</table>

					<!---------------------- 페이징 처리  ------------------------->

					
						<div  class="d-flex justify-content-center">
							<div id="pagination" style="font-size: 15px">

              				</div>					
						</div>


					<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    검색 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
					<br>
	
					<div align="center" id="SearchDiv">
						<table border="1">

							<tr>
								<td>
								
								<select style="border: 0px;" class="form-control" name="searchkey" id="searchkey">
										<option value="title">제목</option>
										<option value="content">내용</option>
										
								</select>
								
								</td>
								
								<td>
								
									<input id="searchval" name="searchval" type="text" style="border: 0px; padding: 5px" placeholder="검색어를 입력하세요">
								
								</td>
								
								<td>
									<button id="searchBtn" style="border: 0px; background: white;">
										&nbsp;<i class="fas fa-search"></i>
										
									</button>
								</td>
							</tr>
						</table>

					</div>
					<br> <br>


			</div>


	</div>
	</div>





 <jsp:include page="common/footer.jsp"/>
	
	<script src="${path }/resources/js/jquery-3.2.1.min.js"></script>

	<script src="${path }/resources/js/bootstrap.min.js"></script>

	<script src="${path }/resources/js/jquery.slicknav.min.js"></script>

	<script src="${path }/resources/js/jquery.magnific-popup.min.js"></script>

	<script src="${path }/resources/js/main.js"></script>

	<script>
	var key;
	var val;
	var page=1;
	
	$(function(){
		
		getList();
		

		$('#searchBtn').click(function(){
			key = $('#searchkey').val();
			val = $('#searchval').val();
			searchNotice();
		});
	});
	
	
	function getList() {
		$.ajax({
			url:"getNoticeList.do",
			type:"post",
			data:{
				currentPage:page
			},success:function(data){
				
				$tbody=$('#tbody1');
    			$tbody.html(""); 
    			
    			PageInfo();
    			
    			$.each(data,function(index,value){
    				$tr=$('<tr>');
    				$td1=$('<td>').text(value.nId);
    				$td2=$('<td>').text(value.nTitle);
    				$td3=$('<td>').text("관리자");
    				$td4=$('<td>').text(value.nCreateDate);
    				
    				$tr.append($td1);
    				$tr.append($td2);
    				$tr.append($td3);
    				$tr.append($td4);
    				$tbody.append($tr);
    				
    			});
				
    			$('#tbody1 >tr').click(function(){
    				var nId=$(this).children().eq(0).text();
    				
    				location.href='homenoticedetail.do?nId='+nId;
    			});
				
			},error:function(data){
				alert("공지사항 리스트 ajax 작동 실패!")
			}
		});
	}
	
	function PageInfo() {
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
	
	function searchNotice() {
		$.ajax({
			url:"homegetNoticeList.do",
			type:"post",
			data:{searchkey:key,
				  searchval:val,
				  currentPage:page
			},success:function(data){
				$tbody=$('#tbody1');
    			$tbody.html(""); 
    			
    			searchPageInfo();
    			
    			
    			$.each(data,function(index,value){
    				$tr=$('<tr>');
    				$td1=$('<td>').text(value.nId);
    				$td2=$('<td>').text(value.nTitle);
    				$td3=$('<td>').text("관리자");
    				$td4=$('<td>').text(value.nCreateDate);
    				
    				$tr.append($td1);
    				$tr.append($td2);
    				$tr.append($td3);
    				$tr.append($td4);
    				$tbody.append($tr);
    				
    			});
				
    			$('#tbody1 >tr').click(function(){
    				var nId=$(this).children().eq(0).text();
    				
    				location.href='homenoticedetail.do?nId='+nId;
    			});
			},error:function(data){
				alert("공지사항 검색 ajax 에러!");
			}
		});
	}
	
	function searchPageInfo(){
		$.ajax({
			url:"searchPageInfo.do",
			type:"post",
			data:{
				searchkey:key,
				searchval:val,
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
   				searchNotice();
   			 });
   			 
   			 $('.goBackPage').click(function(){
   				 if(data.currentPage==data.startPage){
   					 page=data.currentPage;
   				 }else{
   					 page=(data.currentPage-1);	 
   				 }
   				searchNotice();
   			 })
   			 
   	         $('.goPage').click(function(){
   	        	  page=$(this).attr("data-page");
   	        	searchNotice();
   	          });
   	         
   			 $('.goFrontPage').click(function(){
   				 if(data.currentPage==data.endPage||data.endPage==0){
   					 page=data.currentPage;
   				 }else{    					 
   				 	page=(data.currentPage+1);
   				 }
   				searchNotice();
   			 });
   			 
   	         $('.goLastPage').click(function(){
   	        	if(data.endPage==0){
   	        		page=data.currentPage;
   	        	}else{
   	        	 page=data.endPage;
   	        	}
   	        	searchNotice();
   	         });
			},error:function(data){
				
			}
		});
	}
	
	

	</script>
</body>


</html>