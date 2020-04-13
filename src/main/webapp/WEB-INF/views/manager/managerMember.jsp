<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
          <h1 class="h3 mb-2 text-gray-800">일반회원
          </h1>
          

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">회원 관리</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <div class="input-group mb-3" style="width:200px; float:right;">
                  <input type="text" class="form-control" style="width:150px;" placeholder="Search">
                  <div class="input-group-append">
                    <button class="btn btn-success" type="submit">Go</button>  
                   </div>
                </div>
                <table id="membetTable" class="table table-bordered table-hover" style="text-align: center;" id="dataTable" width="100%" cellspacing="0">
        
                  <thead>
                    <tr>
                      <th width="100px">회원번호</th>
                      <th width="120px">아이디</th>
                      <th width="100px">사용자</th>
                      <th width="170px">사용자 이메일</th>
                      <th width="100px">가입일</th>
                      <th width="100px">정지기한</th>
                      <th>정지사유</th>
                      <th width="200px">관리</th>
                     
                      
                    </tr>
                  </thead>
                 
                  <tbody>
<!--                <tr>
                      <td>233</td>
                      <td>rlacl123</td>
                      <td>장나물</td>
                      <td>rlacl123@naver.com</td>
                      <td>20/03/25</td>
                      <td></td>
                      <td></td>
                      <td><button class="btn btn-primary stop" data-toggle="modal" data-target="#myModal" style="width: 80px;">정지</button> &nbsp;
                        <button class="btn btn-danger del"  style="width: 80px;">삭제</button></td>
                    </tr> -->
                   
                    

                  </tbody>
                </table>
              </div>
              <div> 	<ul class="pagination justify-content-center pagination-sm">
                <li class="page-item"><a class="page-link" href="#">&lt;&lt;</a></li>
                <li class="page-item"><a class="page-link" href="#">&lt;</a></li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">&gt;</a></li>
                <li class="page-item"><a class="page-link" href="#">&gt;&gt;</a></li>
              </ul></div>
              </div>
            </div>
          </div>

        </div>
        <!-- End of Content Wrapper -->

        <!-- The Modal -->
            <div class="modal fade" id="myModal" style="text-align: center;">
              <div class="modal-dialog modal-sm">
                <div class="modal-content">
                
                  <!-- Modal Header -->
                  <div class="modal-header">
                    <h4 class="modal-title">Modal Heading</h4>
                    <button type="button" class="close" data-dismiss="modal">×</button>
                  </div>
                  
                  <!-- Modal body -->
                  <div class="modal-body">
                    <form action="" method="POST" id="sssss">
                      <table>
                    <tr>
                      <td>아이디</td>
                      <td colspan="2"><input type="text" class="form-control mb-2 mr-sm-2" name = "mid" id="id" readonly></td>
                    </tr>
                    <tr>
                      <td>날짜</td>
                      <td ><input type="radio" name ="day"value="7" id="7"><label for="7">7일</label> &nbsp;
                      <input type="radio" name ="day"value="15" id="15"><label for="15">15일</label>&nbsp;
                      <input type="radio" name ="day" value="30" id="30"><label for="30">30일</label></td>
                    </tr>
                    <tr>
                      <td> <span >사유</span><br></td>
                      <td> <textarea cols="25" rows="3" name="scomment"></textarea></td>
                    </tr>
                      </table>

                    </form>
                  </div>
                  
                  <!-- Modal footer -->
                  <div class="modal-footer">
                    <input type="submit" class="btn btn-primary" id="ssubmit"value="정지">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                  </div>
                  
                </div>
              </div>
            </div>

      </div>
      <!-- End of Page Wrapper -->
      <script>
          $(function(){
            //정지 모달
            $(".stop").click(function(){
             var mid = $(this).parent("td").siblings("td:eq(0)").text();
              $("#id").val(mid ) 
            });

            $("#ssubmit").click(function(){
              $("#sssss").submit()
            })

            //삭제
            $(".del").click(function(){
              var mid = $(this).parent("td").siblings("td:eq(0)").text();
              if(confirm(mid+"를 정지하시겠습니까?")){
                location.href=""+mid;
              }
            })
            
            
             $.ajax({
            	url:"mMember.do",
            	type:"post",
            	success:function(data){
            		$tableBody = $('#membetTable tbody');
            		$tableBody.html("");
            		
            		$.each(data,function(index,value){
            			
            			$tr=$('<tr>');
            			$mId=$('<td>').text(value.mId);
            			$userId=$('<td>').text(value.userId);
            			$userName=$('<td>').text(value.userName);
            			$email=$('<td>').text(value.email);
            			$mcreateDate=$('<td>').text(value.mCreateDate);
            			$a1=$('<td>');
            			$a2=$('<td>');
            			$buttontd=$('<td>');
            			$button1=$('<button class="btn btn-primary stop" data-toggle="modal" data-target="#myModal" style="width: 80px;">').html("정지");
            			$button2=$('<button class="btn btn-danger del"  style="width: 80px;">').html("삭제");
            			
            			
            			$tr.append($mId);
            			$tr.append($userId);
            			$tr.append($userName);
            			$tr.append($email);
            			$tr.append($mcreateDate);
            			$tr.append($a1);
            			$tr.append($a2);
            			
            			$buttontd.append($button1);
            			$buttontd.append($button2);
            			
            			$tr.append($buttontd);
            			
            			$tableBody.append($tr);
            			
            		});
            		
            	},error:function(data){
            		alert("ajax 구동 실패!")
            	}
            
            });
            
           
          });
          
          
/*           <tr>
          <td>233</td>
          <td>rlacl123</td>
          <td>장나물</td>
          <td>rlacl123@naver.com</td>
          <td>20/03/25</td>
          <td></td>
          <td></td>
          <td><button class="btn btn-primary stop" data-toggle="modal" data-target="#myModal" style="width: 80px;">정지</button> &nbsp;
            <button class="btn btn-danger del"  style="width: 80px;">삭제</button></td>
        </tr> */
          
          
      </script>

      <!-- Bootstrap core JavaScript-->




</body>

</html>