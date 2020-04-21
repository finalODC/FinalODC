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
          <h1 class="h3 mb-2 text-gray-800">공지
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
                      <th class="tatd">공지번호:</th>
                      <td><input type="text" class ="form-control" style="width:70px;" id="nid" name="nid" readonly></td>
                    </tr>

                          <tr>
                              <th class="tatd" width="100px" >제목: </th>
                              <td><input type="text" placeholder="제목을 입력하세요. " id="nTitle" name="nTitle" class="form-control"readonly/></td>
                          </tr>
                          
                              <th class="tatd">내용: </th>
                              <td>
                              <div id="nContent" style="min-height: 400px; text-align: left; font-size: 1rem"></div>
                              
                          </tr>
                         
                          <tr>
                              <th class="tatd">첨부파일: </th>
                              <td>
                                
                              </td>
                          </tr>
                       
                  </tbody>
              </table>
              <div class="float-right">
                      <input class="btn btn-link" style="background: #002c5f; color: white;" type="button" value="글목록" id="noticelist" class="pull-right"/>
                      <input class="btn btn-link" style="background: #002c5f; color: white;" type="button" value="수정하기" id="rewritego" class="pull-right"/>
                      <input class="btn btn-danger" style=" color: white;" type="button" value="삭제하기" id="noticedelete" class="pull-right"/>
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
        	
        	var nId= ${n.nId};
        	var nTitle = '${n.nTitle}';
        	var nContent = '${n.nContent}';
        	
        	$('#nid').val(nId);
        	$('#nTitle').val(nTitle);
        	$('#nContent').html(nContent);
        	
         
        
          $("#rewritego").click(function(){
            location.href="gonoticeupdate.do?nId="+nId;
          });
          
          $('#noticelist').click(function(){
        	  location.href="gonoticelist.do"
          });
          
          $('#noticedelete').click(function(){
        	  
        	  var result = confirm('공지글을 삭제하겠습니까?');
        	  if(result){
        		  location.href="deletenotice.do?nId="+nId; 
        	  }
          });

        });

      </script>




</body>

</html>