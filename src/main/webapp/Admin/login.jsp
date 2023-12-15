<%@page import="dto.AlertMessage"%>
<%@page import="controller.BaseServlet.TempData"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Admin login page</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" >
	<style>
		section {
			background-image: url("<%= request.getContextPath()%>/images/HoiAn-hero3.jpg");
			background-repeat: no-repeat;
		  background-position: center;
		  background-size: cover;
		}
	</style>
</head>
<body>

	<!-- Login 9 - Bootstrap Brain Component -->
<section class="py-3 py-md-5 py-xl-8 vh-100">
  <div class="container h-100">
    <div class="row gy-4 align-items-center h-100">
    
      <div class="col-12 col-md-6 mt-0 py-4" style="background-color: rgba(0, 0, 0, 0.25); border-radius: 10px;"> <!-- Left pane -->
        <div class="d-flex justify-content-center text-white">
          <div class="col-12 col-xl-9">
            
            <!-- <hr class="border-primary-subtle mb-4"> -->
            <h2 class="h1 mb-4">Hội An Advertising</h2>
            <p class="lead mb-5">
            	Hội An là một thành phố cổ thuộc tỉnh Quảng Nam, nằm ở miền Trung Việt Nam. 
            	Thành phố này nổi tiếng với kiến trúc cổ độc đáo, phong cách kiến trúc hòa quyện 
            	giữa các yếu tố văn hóa Việt Nam, Trung Quốc và Nhật Bản.
            </p>
            <div class="text-endx">
              <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" fill="currentColor" class="bi bi-grip-horizontal" viewBox="0 0 16 16">
                <path d="M2 8a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm0-3a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm3 3a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm0-3a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm3 3a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm0-3a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm3 3a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm0-3a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm3 3a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm0-3a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
              </svg>
            </div>
          </div>
        </div>
      </div>
      
      <div class="col-12 col-md-5"> <!-- Right pane -->
        <div class="card border-0 rounded-4">
          <div class="card-body p-3 p-md-4 p-xl-5">
            <div class="row">
              <div class="col-12">
                <div class="mb-4">
                  <h3>Sign in as Admin</h3>
                  
                </div>
              </div>
            </div>
            <form action="<%= request.getContextPath()%>/Login" method="post">
              <div class="row gy-3 overflow-hidden">
              	<div class="col-12">
                	<!-- Alert message -->
							   	<%
							   		if (request.getAttribute("TempData") != null) {
							   			TempData tempData = (TempData)request.getAttribute("TempData");
							   			AlertMessage alertMessage = (AlertMessage)tempData.get("alertMessage");
							   	%>
							     		<div class="alert alert-<%= alertMessage.getType()%> alert-dismissible fade show mt-3">
							          <%= alertMessage.getMessage()%>
							          <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
							        </div>
							   	<%	
							   		}
							   	%>
                </div>
                
                <div class="col-12">
                  <div class="form-floating mb-3">
                    <input type="text" class="form-control" name="username" id="username" required autocomplete="false">
                    <label for="username" class="form-label">Username</label>
                  </div>
                </div>
                <div class="col-12">
                  <div class="form-floating mb-3">
                    <input type="password" class="form-control" name="password" id="password" required autocomplete="false">
                    <label for="password" class="form-label">Password</label>
                  </div>
                </div>
                
                <div class="col-12">
                  <div class="d-grid">
                    <button class="btn btn-primary btn-lg" type="submit">Log in now</button>
                  </div>
                </div>
                
                
              </div>
            </form>
            
            
          </div>
        </div>
      </div>
    </div> <!-- End row  -->
		  
  </div>
</section>
	
  <%
  	boolean showDialog = request.getAttribute("need-authen-error") != null;
    
    if (showDialog) {
  %>
			<script>
				window.addEventListener('load', function() {
					alert("You need to login to access that resources!");
				});

				
			</script>	
	<%
		} 
	%>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" 
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" 
      crossorigin="anonymous">
  </script>
</body>
</html>