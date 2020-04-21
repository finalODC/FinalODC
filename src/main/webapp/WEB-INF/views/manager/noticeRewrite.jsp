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
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>
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
          <h1 class="h3 mb-2 text-gray-800">공지
          </h1>
          

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <form action="noticeUpdate.do" method="POST" id="noticerw">
                
                <table class="table table-bordered " style="background: white;">
                  <tbody>
                    <tr>
                      <th class="tatd" width="100px">공지번호:</th>
                      <td><input type="text" class ="form-control" style="width:70px;" id="nId" name="nId" value="123"readonly></td>
                    </tr>
                          <tr>
                              <th class="tatd">제목: </th>
                              <td><input type="text" placeholder="제목을 입력하세요. " id="nTitle" name="nTitle" class="form-control"/></td>
                          </tr>
                          <tr>
                              <th class="tatd">내용: </th>
                               <td><textarea name="nContent" id="nContent" rows="10" cols="200"></textarea>
       
                              </td>
                          </tr>
                         
                          <tr>
                              <th class="tatd">첨부파일: </th>
                              <td>
                                  <span style="float:left;"><input type="file"></span>
                              </td>
                          </tr>
                       
                  </tbody>
              </table>
              <div class="float-right">
                      <input class="btn btn-link" style="background: #002c5f; color: white;" type="button" value="공지수정" id="rewriteno" class="pull-right"/>
              </div>
            </form>
              </div>
            </div>
          </div>

        </div>
        <!-- End of Content Wrapper -->

      </div>
      <!-- End of Page Wrapper -->


      <!-- Bootstrap core JavaScript-->

      <script type="text/javascript">
		var oEditors = [];
		nhn.husky.EZCreator.createInIFrame({
		 oAppRef: oEditors,
		 elPlaceHolder: "nContent",
		 sSkinURI: "<%=request.getContextPath()%>/resources/se2/SmartEditor2Skin.html",
		 fCreator: "createSEditor2"
		});
		</script>
      <script>
     
        $(function(){
          //공지작성
          
            var nId= ${n.nId};
        	var nTitle = '${n.nTitle}';
        	var nContent = '${n.nContent}';
        	

        	$('#nId').val(nId);
        	$('#nTitle').val(nTitle);
        	$('#nContent').html(nContent);
        
          $("#rewriteno").click(function(){
        	  oEditors.getById["nContent"].exec("UPDATE_CONTENTS_FIELD", []);
        	  $("#noticerw").submit()
  
          });


        });
        
        
 

      </script>
 



</body>

</html>