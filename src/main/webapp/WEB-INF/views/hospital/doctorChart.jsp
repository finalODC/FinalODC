<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Custom fonts for this template-->
<c:set var = "path" value="${pageContext.servletContext.contextPath }" scope="application"/>

   <script src="${path }/resources/js/jquery-3.2.1.min.js"></script>
  <script src="${path }/resources/js/bootstrap.min.js"></script>
  <script src="${path }/resources/js/jquery.slicknav.min.js"></script>
  <script src="${path }/resources/js/jquery.magnific-popup.min.js"></script>
  <script src="${path }/resources/js/main.js"></script>

  <!-- Custom styles for this template-->
  <link href="${path }/resources/css/manager/sb-admin-2.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
    integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
   
   <style>
   	 #selectPet h4:hover{
      background: lightgray;
      color:white 
    }
   </style>
	
</head>
<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - 로고 -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="mainpage.do">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-home"></i>
        </div>
        <div class="sidebar-brand-text mx-3"></div>
      </a>


      <!-- 메뉴 -->
      <div class="sidebar-heading">
        	메뉴
      </div>


      <!-- Divider -->
      <hr class="sidebar-divider">


      <!-- Nav Item - 품의 관리 -->
      <li class="nav-item">
      <c:url var = "chart" value="chart.ho"/>
        <a class="nav-link" href="${chart }">
          <i class="fa fa-calendar-alt fa-2x"></i>
          <span>진료기록 조회 / 처방</span></a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="info.ho">
          <i class="fa fa-calendar-alt fa-2x"></i>
          <span>내 병원 관리</span></a>
      </li>
      
      <li class="nav-item"><a class="nav-link"
				href="hosP.ho"> <i
					class="fa fa-calendar-alt fa-2x"></i> <span>계정정보 변경</span></a></li>
					
	 <li class="nav-item"><a class="nav-link"
				href="hlogout.do"> <i
					class="fa fa-calendar-alt fa-2x"></i> <span>로그아웃</span></a></li>
	

      <!-- Divider -->
      <hr class="sidebar-divider">

    </ul>
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
          <!-- 컨텐츠 머리글 -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">${ loginUser.doctor[0].docName}</h1>
          </div>
			
			
  

            <!-- Content Row -->
            <div class="row">
			
              <!-- Content Column -->
              <div class="col-lg-6 mb-4">
				
                <!--동물 정보! -->
                <div class="card shadow mb-4">
                   <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Information</h6>
                    <div>
				
			</div>
			<br>
			<script>
				$(function(){
					$.ajax({
						url:"doctorlist.do",
						type:"post",
						data:{hId:'${loginUser.hId}'},
						success:function(data){
							console.log(data)
							/* for(var i in data){
								$("#doctorlist").append($("<option>").val(data[i]["docName"]).text(data[i]["docName"]));
							} */
						},
						error:function(){
							alert("에러");
						}
					})
				});
			</script>
                    
                 
                    <input id="phone" type="text" placeholder="휴대폰 번호 입력">
                    <button type="button" id="phoneNumber" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal"  style="height: 30px; margin-bottom:4px;">
              		        검색
                    </button>
                  	<input type="hidden" id="hiddenPcode">
                  	<script>
                  		
                  		/* 휴대폰 번호 입력시 등록정보 조회 */
                  		$('#phoneNumber').click(function(){
                  			var phone = $('#phone').val();

                  			$.ajax({
                  				url:"searchPet.do",
                  				type:"post",
                  				data:{phone:phone},
                  				success:function(data){
                  					$('#selectPet').empty();
                  					console.log('pet조회')
                  					console.log(data);
                  					for(var i in data){
                  						
                  					$("#selectPet").append($("<h4 class='pName' data-dismiss='modal'>").text(data[i]["pName"]).append($("<input type='hidden'>").val(data[i]["pCode"])))
                  					}
                  					
                  					
                  					/* 반려동물 이름 클릭 시 테이블에 내용 업데이트 */
                  					$(".pName").click(function(){
                                		console.log($(this).find("input").val());
                                		
                                		var pCode = $(this).find("input").val();
                                		
                                		$("#hiddenPcode").val(pCode);
                                		
                                		console.log($("#hiddenPcode").val());
                                		
                                		/* 주인 이름  */
                                		$.ajax({
                                			url:"memberinfo.do",
                                			type:"post",
                                			data:{phone:phone},
                                			success:function(data){
                                				console.log('주인 이름 조회');
                                				console.log(data);
                                				$('#tb-mName').html(data["userName"]);
                                			}
                                		});
                                		
                                		
                                		/* 동물 정보  */
                                		$.ajax({
                                			url:"petinfo.do",
                                			type:"post",
                                			data:{pCode:pCode},
                                			success:function(data){
                                				console.log('동물정보조회');
                                				console.log(data);
                                				$('#tb-pName').html(data["pName"]);
                                				$('#tb-pBreed').html(data["breed"]);
                                				$('#tb-pNeutral').html(data["neutralYN"]);
                                				$('#tb-pBirth').html(data["pBirth"]);
                                				$('#tb-beWeight').html(data["pWeight"])
                                				
                                				var birth = data["pBirth"].split("/");
                                				var today = new Date();
                                				var arr = "20"+birth[0];
                                				console.log(arr);
                                				var birthday = new Date("20"+birth[0],birth[1],birth[2] );
                                				var inva = today-birthday;
                                				console.log(inva);
                                				
                                				var cMonth = Math.ceil(inva / (30*  24 * 60 * 60 * 1000));
                                				console.log(cMonth);
                                				
                                				
                                				 $('#tb-pAge').html(cMonth+"개월");
                                			},error:function(){
                                				alert('에러');
                                			}
                                			
                                		});
                                		
                                		/* 특이사항 조회 */
                               			spec(pCode,1);
                                		diagList(pCode,1);
                                		
                                	})

                  				},error:function(){
                  					alert('에러');
                  				}
                  				
                  				
                  			});
                  			
                  			
                  			
                  			
                  			
                  			
                  			
                  			                 			
                  		});     
                  		
                  		function diagList(pCode, currentPage){
              				
              				$.ajax({
              					url:"searchdiaglist.do",
              					type:"post",
              					data:{pCode:pCode, currentPage:currentPage},
              					success:function(data){
              						$('#diagList').empty();
              						console.log('진단서리스트 조회');
              						console.log(data);
              						var list = data["list"];
              						var diag="";
              						
              						for(var i in list){
              							diag += "<tr>";
                    					diag += "<td>"+ (parseInt(i)+1) +"</td>";
                    					diag += "<td>"+list[i]["dId"]+"</td>";
                    					diag += "<td>"+list[i]["dDate"]+"</td>";
                    					diag += "<td>"+list[i]["dContent"]+"</td>";
                    					diag += "<td>"+list[i]["hName"]+"</td>";
                    					diag += "<td>"+list[i]["dWriter"]+"</td>";
                    					diag += "</tr>";
              							
              						}
              						
              						$('#diagList').append(diag);
              						

                    				var pi = data["pi"];
                    				
                    				 $("#diagPage").empty();
                         			
                         			var sp= pi.startPage;
                         			var ep= pi.endPage;
                         			var mp= pi.maxPage;
                         			var cu = pi.currentPage
                         			var onepli = $('<li class="page-item ">');
                         			var onepbu = $('<button class="page-link" onclick=diagList('+pCode+","+1+')>').text('<<');
                         			
                         			var prevli = $('<li class="page-item ">');
                         			var prevbu = $('<button class="page-link" onclick=diagList('+pCode+","+(cu-1)+')>').text('<');
                         			
                         			if(cu==1){
                 						onepbu.attr("disabled",true);
                 						prevbu.attr("disabled",true);
                         			}
                         			
                         			$("#diagPage").append(onepli.append(onepbu)).append(prevli.append(prevbu));
                         			

                         			 for(var i = sp; i<=ep; i++){
                         				var $li = $('<li class="page-item ">');
                         				var $button = $('<button class="page-link" onclick="diagList('+pCode+","+i+')">').text(i);
                         				if(cu == i){
                         					$button.attr("disabled",true).css("color","tomato").addClass("cu");
                         				} 
                         				$("#diagPage").append($li.append($button));
                         			}
                         			 
                         			 
                         			 
                         			var nextli = $('<li class="page-item ">');
                           			var nextbu = $('<button class="page-link" onclick=diagList('+pCode+","+(cu+1)+')>').text('>');
                         			 
                         			var maxli = $('<li class="page-item ">');
                          			var maxbu = $('<button class="page-link" onclick=diagList('+pCode+","+mp+')>').text('>>');

                          			if(cu==mp){
                          				nextbu.attr("disabled",true);
                          				maxbu.attr("disabled",true);
                          			}
                          			
                          			$("#diagPage").append(nextli.append(nextbu)).append(maxli.append(maxbu));
              						
              					},error:function(){
              						alert("진단서 리스트 오류");
              					}
            
              				})
              				
              				
              			}
                  		
                  		/* 특이사항 조회 함수 */
              			function spec(pCode,currentPage){
              				
              				$.ajax({
                    			url:"searchdiag.do",
                    			type:"post",
                    			data:{pCode:pCode, currentPage:currentPage},
                    			success:function(data){
                    				$('#uniqueTable').empty();
                    				console.log('특이사항조회');
                    				console.log(data);
                    				var list = data["list"]
                    				var html="";
                    			
                    				for(var i in list){
                    					html += "<tr>";
                    					html += "<td>"+list[i]["dDate"]+"</td>";
                    					html += "<td>"+list[i]["dUnique"]+"</td>";
                    					html += "<td>"+list[i]["dWriter"]+"</td>";
                    					html += "</tr>";
                    				}		
                    				
                    				$('#uniqueTable').append(html);
                    				
                    				var pi = data["pi"];
                    				
                    				 $("#specPage").empty();
                         			
                         			var sp= pi.startPage;
                         			var ep= pi.endPage;
                         			var mp= pi.maxPage;
                         			var cu = pi.currentPage
                         			var onepli = $('<li class="page-item ">');
                         			var onepbu = $('<button class="page-link" onclick=spec('+pCode+","+1+')>').text('<<');
                         			
                         			var prevli = $('<li class="page-item ">');
                         			var prevbu = $('<button class="page-link" onclick=spec('+pCode+","+(cu-1)+')>').text('<');
                         			
                         			if(cu==1){
                 						onepbu.attr("disabled",true);
                 						prevbu.attr("disabled",true);
                         			}
                         			
                         			$("#specPage").append(onepli.append(onepbu)).append(prevli.append(prevbu));
                         			

                         			 for(var i = sp; i<=ep; i++){
                         				var $li = $('<li class="page-item ">');
                         				var $button = $('<button class="page-link" onclick=spec('+pCode+","+i+')>').text(i);
                         				if(cu == i){
                         					$button.attr("disabled",true).css("color","tomato").addClass("cu");
                         				} 
                         				$("#specPage").append($li.append($button));
                         			}
                         			 
                         			 
                         			 
                         			var nextli = $('<li class="page-item ">');
                           			var nextbu = $('<button class="page-link" onclick=spec('+pCode+","+(cu+1)+')>').text('>');
                         			 
                         			var maxli = $('<li class="page-item ">');
                          			var maxbu = $('<button class="page-link" onclick=spec('+pCode+","+mp+')>').text('>>');

                          			if(cu==mp){
                          				nextbu.attr("disabled",true);
                          				maxbu.attr("disabled",true);
                          			}
                          			
                          			$("#specPage").append(nextli.append(nextbu)).append(maxli.append(maxbu));
                    			},error:function(){
                    				console.log('에러');
                    			}
                    		})
              			}
                  	
                  	
                  	</script>
                  
                  	
                    <!-- The Modal -->
                    <div class="modal fade" id="myModal">
                      <div class="modal-dialog">
                        <div class="modal-content">
                        
                          <!-- Modal Header -->
                          <div class="modal-header">  
                            <h4 class="modal-title">등록 동물</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                          </div>
                          
                          <!-- Modal body -->
                          <div class="modal-body">
                            <div id="selectPet" style="text-align: center;">
                             
                            </div>
                           
                          </div>
                          
                          <!-- Modal footer -->
                          <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
                          </div>
                          
                        </div>
                      </div>
                    </div>
                  </div>
                  
                  
                  <!-- 동물정보 테이블 -->
                  <div class="card-body">
                    <table border="1" class="table" style="font-size:12px;">
                      <tr style="font-weight: bolder;">
                        <td>이름</td>
                        <td>종</td>
                        <td>주인</td>
                        <td>중성화</td>
                      </tr>

                      <tr>
                        <td id="tb-pName"></td>
                        <td id="tb-pBreed"></td>
                        <td id="tb-mName"></td>
                        <td id="tb-pNeutral"></td>
                      </tr>
                      <tr>
                        <td>출생연월</td>
                        <td>나이</td>
                        <td>몸무게(전)</td>
                        <td>몸무게(후)</td>
                      </tr>
                      <tr>
                        <td id="tb-pBirth"></td>
                        <td id="tb-pAge"></td>	
                        <td id="tb-beWeight"></td>
                        <td ><input type="number" id="tb-afterWeight" style="text-align: right; width:50px;"><span>kg</span></td>
                      </tr>
                    </table>
                  </div><br>
                </div>



                <!-- 특이사항 테이블 -->
                <div class="card shadow mb-4">
                  <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">특이사항</h6>
                  </div>
                  <div align="center" class="card-body">
                    <table border="1" class="characterTable" width="100%" >
                      <thead>
                        <tr>
                          <th>특이사항</th>
                          <th><input type="text" id="inputUnique" style="width:100%"></th>
                          <th id="insertCharacter"></th>
                        </tr>
                        <tr>
                          <th>날짜</th>
                          <th>상세내역</th>
                          <th>의사</th>
                        </tr>
                         </thead>
                      <tbody id="uniqueTable">
                      
                        <tr>
                          <td id="tb-uniqueDate">
                          </td>
                          <td id="tb-unique"></td>
                          <td id="tb-docName"></td>
                        </tr>

                      </tbody>
                    </table>
                    
                  <!--   
                    <script>
                    	$('#insertCharacter').click(function(){
                    		var unique=$('inputUnique').val();
                    		console.log(unique);
                    		var pCode = $('hiddenPcode').val();
                    		console.log(pCode);
                    		
                    		$.ajax({
                    			url:"insertUnique.do",
                    			type:"post",
                    			data:{unique:unique, pCode:pCode},
                    			success:function(data){
                    				
                    			},error:function(){
                    				alert('특이사항 입력 에러');
                    			}
                    		})
                    		
                    	})
                    
                    
                    </script> -->
                    
                    <br>
                    <nav aria-label="Page navigation example">
                      <ul class="pagination pagination-sm justify-content-center" id="specPage">
                        <li class="page-item disabled">
                          <a class="page-link" href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                            <span class="sr-only">Previous</span>
                          </a>
                        </li>
                        <li class="page-item disabled"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                          <a class="page-link" href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                            <span class="sr-only">Next</span>
                          </a>
                        </li>
                      </ul>
                    </nav>
                  </div><br>
                </div>
					
					
				 <div class="card shadow mb-4">
                  <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">진료 기록</h6>
                  </div>
                  <div class="card-body">

                    <div id="recode" align="center">
                      <fieldset style="border-radius: 10%; border :1px solid balck; ">
                        <table border="1"  class="table table-hover" style="font-size: 12px;">
                          <thead>
                            <tr>
                              <td>번호</td>
                              <td>진료번호</td>
                              <td>진료날짜</td>
                              <td>진료내용</td>
                              <td>진료병원</td>
                              <td>진료의사</td>
                            </tr>
                          </thead>
                          <tbody id="diagList">
                            

                          </tbody>


                        </table>
                      </fieldset>
                      <nav aria-label="Page navigation example">
                        <ul class="pagination pagination-sm justify-content-center" id="diagPage">
                          <li class="page-item disabled">
                            <a class="page-link" href="#" aria-label="Previous">
                              <span aria-hidden="true">&laquo;</span>
                              <span class="sr-only">Previous</span>
                            </a>
                          </li>
                          <li class="page-item disabled"><a class="page-link" href="#">1</a></li>
                          <li class="page-item"><a class="page-link" href="#">2</a></li>
                          <li class="page-item"><a class="page-link" href="#">3</a></li>
                          <li class="page-item">
                            <a class="page-link" href="#" aria-label="Next">
                              <span aria-hidden="true">&raquo;</span>
                              <span class="sr-only">Next</span>
                            </a>
                          </li>
                        </ul>
                      </nav>
                    </div>

                  </div>

                    <!-- 진료기록 클릭 스크립트 -->
                    
                    <script>
                   /*    $(function () {
                    	$("#diagList").mouseenter(function(){
                        $("#diagList td").click(function () {
                          $(this).parent().siblings(".plus").css("display", "none");
                          var $tr = $("<tr class='plus'>");
                          var $td = $("<td colspan='6'>");
                          var $div = $("<div>");
                          $div.html("dsadadadas<br> dsadsadasda<br>")
                          $td.append($div);
                          $tr.append($td);
						  
                          $(this).parent("tr").after($tr);
                        })
                      });
                      }); */
                    </script>



                </div>

              </div>


              <div class="col-lg-6 mb-4">

                
               	 <h2>진단</h2>
                  <div class="form-group">
                    <label for="comment">Comment:</label>
                    <textarea class="form-control" rows="5" id="diagContent" name="text"></textarea>
                    
                  </div>
                  
                  
                  <h2>처방</h2>
                 
                  <div class="medicine-table" >
                  	<button type="button" class="btn btn-secondary" onclick="addRow();">항목 추가</button>
                  	<button type="button" class="btn btn-secondary" onclick="deleteRow();">항목 삭제</button>
                  	<br><br>
                 	<table border="1"  class="table table-striped" style="font-size: 12px; ">
                          <thead style="text-align: center;">
                            <tr>
                              <td>처방 의약품</td>
                              <td>1회 투약량</td>
                              <td>1일 투여 횟수</td>
                              <td>총 계</td>
                              <td>용법</td>
                            </tr>
                          </thead>
                          <tbody id="mediTable">	
                             <tr>
                              <td><input type="text" style="width:100%; padding:0px" ></td>
                              <td><input type="text" style="width:100%; padding:0px" ></td>
                              <td><input type="text" style="width:100%; padding:0px" ></td>
                              <td><input type="text" style="width:100%; padding:0px" ></td>
                              <td><input type="text" style="width:100%; padding:0px" ></td>
                             </tr>
                             

                          </tbody>

                        </table>
                 
                  </div>
                  <button type="button" class="btn btn-primary" id="submitButton">저장하기</button>
              </div>
            </div>
           
           <script>
           	
           function addRow(){
        	   var length = $('#mediTable tr').length;
        	   
        	   if(length<11){
        		   var html = "";
        		   html += '<tr>';
        		   html += '<td><input type="text" style="width:100%; padding:0px" ></td>';
        		   html += '<td><input type="text" style="width:100%; padding:0px" ></td>';
        		   html += '<td><input type="text" style="width:100%; padding:0px" ></td>';
        		   html += '<td><input type="text" style="width:100%; padding:0px" ></td>';
        		   html += '<td><input type="text" style="width:100%; padding:0px" ></td>';
        		   html += '</tr>';
        		   
        		   
        		   $('#mediTable:last').append(html);
        	   }else{
        		   alert("최대 10개까지 가능합니다");
        		   return false;
        	   }
        	   
        	   
        	   
        	   
           }
           
           function deleteRow(){
        	   var length = $('#mediTable tr').length;
        	   
        	   if(length>1){
        		   $('#mediTable:last > tr:last').remove();
        	   }else{
        		   	return false;
        	   }
           }
           
           
           
           
           
           	$('#submitButton').click(function(){
           		
           		if(confirm('진단서를 저장하시겠습니까')){
           			
           		 $.ajax({
           			url:"updateWeight.do",
           			type:"post",
           			data:{pCode:$('#hiddenPcode').val(), pWeight:$('#tb-afterWeight').val()},
           			success:function(data){
           				console.log(data);
           				if(data==0){
           					alert('몸무게 업데이트 실패');
           				}else{
           					console.log('몸무게 업데이트 성공');
           				}
           				
           			},error:function(){
           				
           			}
           			
           		}); 
           		
           		
           		var hId = ${loginUser.hId};
           		var dId = ${loginUser.doctor[0].dId};
           		var arr = [];
           		
           		$('#mediTable tr').each(function(){
           			var len = $(this).find("td").length;
           			var str ="";
           			
           			for(var i=0;i<len;i++){
           				str += $(this).find("td:eq("+i+")").children("input").val()+",";
           				
           			}
           			arr.push(str);
           		})
           		
           		var medi = arr.join("//");
           		
           		console.log(medi);
           		 $.ajax({
           			url:"updateDiag.do",
           			type:"post",
           			data:{dMedicine:medi, hId:hId, dId:dId, pCode:$('#hiddenPcode').val(), dUnique:$('#inputUnique').val(), dContent:$('#diagContent').val()},
           			success:function(data){
           				console.log(data);
           				if(data==0){
           					console.log('진단서 업데이트 실패');
           				}else{
           					console.log('진단서 업데이트 성공');
           					location.href="chart.ho";
           				}
           				
           			},error:function(){
           				console.log('진단서 에러');
           			} 
           		});
           		
           		
           		}
           	});
           
           
           </script>
           
     
          <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->


        <!-- Footer -->
        <footer class="sticky-footer bg-white">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <span>Copyright © Your Website 2019</span>
            </div>
          </div>
        </footer>
        <!-- End of Footer -->

      </div>
      <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->


  




</body>
</html>