<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>메인페이지</title>
	<meta charset="UTF-8">
	<meta name="description" content="Real estate HTML Template">
	<meta name="keywords" content="real estate, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	
  <link href="${path }/resources/css/bootstrap.min.css" rel='stylesheet' type='text/css'>
  <link href="${path }/resources/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
  <link href="${path }/resources/css/slicknav.min.css" rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
  <link href="${path }/resources/css/style.css" rel='stylesheet' type='text/css'>
  <link href="${path }/resources/css/stylne.css" rel='stylesheet' type='text/css'>
	
	<style>

    .page-link{
    padding: .4rem 0.6rem !important; 
    font-size:15px !important; 
    }
    
    a{
    color:black;
    }
    a:hover {
	color:#30627e;
}
	</style>
	
</head>
<body>

  	<jsp:include page="common/menubar.jsp"/>


	<div class="col-lg-12" style="background-image: url('${path }/resources/img/bg2.jpg'); height:243px; margin-top:109px; margin-bottom:50px;" align="center">
		<h1 style="padding-top: 80px">병원검색</h1>
		
	
	</div>

	<div class="container" style="min-height: 959px;">
	
		<div class="d-flex justify-content-center">
			<div class="input-group form-group"  style="width: 50%;">
            <select id="searchkey" name="searchkey" class="input_area" style="width: 20%; margin-left: 80px; font-size: 17px; ">
            	 <option value="name">이름</option>
            	 <option value="area">지역</option>
            </select>
			  <input id="searchval" type="text" class="form-control" style="height: 40px; font-size: 20px;" placeholder="병원 이름을 검색해보세요">
			  <div id="searchtop" class="input-group-prepend">
				<span class="input-group-text" style="font-size: 20px;"><i class="fas fa-search"></i></span>
			  </div>
			</div>
		  </div>
		  	<br>
		<div class="row" id="search" width="1200px">
	
		</div>
		<div id="pagination" >

              </div>
	</div>



	<!-- Footer Section -->
<br>
<jsp:include page="common/footer.jsp"/>


  <script src="${path }/resources/js/jquery-3.2.1.min.js"></script>
  
  <script src="${path }/resources/js/bootstrap.min.js"></script>
  
  <script src="${path }/resources/js/jquery.slicknav.min.js"></script>
  
  <script src="${path }/resources/js/jquery.magnific-popup.min.js"></script>
  
  <script src="${path }/resources/js/main.js"></script>
  
<script>

		var key = "${searchkey}";
		var val = "${searchval}";	

		
		var page=1;
		
	$(function(){
		
		getList()
		
		$('#searchtop').click(function(){
			
			if(typeof $('#searchval').val()=='undefined'){
				key = "${searchkey}";
				val = "${searchval}";	
			}else{
				key = $('#searchkey').val();
				val = $('#searchval').val();
				page=1;
			}
			
			getList();
		});
		
		$('#searchtop').hover(function(){
			$(this).css('cursor','pointer');
		});
		
		$('#pagination').hover(function(){
			$(this).css('cursor','pointer');
		});
		

		

 	});
	
	function getList(){
		$.ajax({
			url:"searchHospitalList.do",
			type:"post",
			data:{searchkey:key,
				  searchval:val,
				  currentPage:page
			},
			success:function(data){
				console.log(data);
				$div= $('#search');
				$div.html("");
				
				pageInfo();
				
				if(data.length==0){
					$h1=$('<h1>');
					$h1.html('해당하는 병원이 없습니다! <br> 다시 검색해 주세요!<br><br>');
					
					$div.append($h1);
				}
				
				$.each(data,function(index,value){
					 var imagename = "noImage.jpg";
				
					  $div4=$('<div class="col-lg-4 col-md-4 hlist" style="margin-bottom: 10px; ">');
					  $a=$('<a href="hosdetail.do?hId='+value.hId+'">');
					  
					  $div2=$('<div class="card" style="width:400px; height:350px;">');
					  $img=$('<img class="card-img-top" alt="Card image" style="width:400px; height:200px;">');
					  if(value.hFile!= null){
						  imagename = value.hFile;
					  }
					  $img.attr('src','/odc/resources/hosImages/'+imagename);
					  
					  $div3=$('<div class="card-body">');
					  $h4=$('<h4 class="card-title">').text(value.hName);
					  $p=$('<p class="card-text">').text(value.hAddress);
					  
					  $div3.append($h4);
					  $div3.append($p);
					  $div2.append($img);
					  $div2.append($div3);
					  $a.append($div2);
					  $div4.append($a);
					  $div.append($div4);
					  
					
				});
			},error:function(data){
				alert("리스트 ajax 실패!");
			}
		});
	}
	
	function pageInfo() {
		$.ajax({
			url:"hspageInfo.do",
			type:"post",
			data:{searchkey:key,
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