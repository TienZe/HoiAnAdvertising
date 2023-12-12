<%@page import="model.bean.Accommodation"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" 
    rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" 
    crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" >
  
  <style>
    .nav-link:hover {
      color: lightgray !important;
    }
  </style>


<body>
  <div class="container-fluid p-0" style="height: 100vh">
    <div class="row m-0" style="height: 100%">
      <div class="col-3 bg-dark py-3 px-4"> <!-- Navigation bar-->
        <nav class="nav nav-pills flex-column row-gap-3">
          <p class="display-4 text-warning fw-medium text-center mb-5">ADMIN</p>
          <a class="nav-link text-white d-flex justify-content-between align-items-center" 
          		href="<%= request.getContextPath()%>/Admin/Accommodation">
            Accommodations
            <i class="fa-solid fa-hotel"></i>
          </a>
          <a class="nav-link text-white active d-flex justify-content-between align-items-center" 
          	href="<%= request.getContextPath()%>/Admin/Restaurant">
            Restaurants
            <i class="fa-solid fa-utensils"></i>
          </a>
          <a class="nav-link text-white d-flex justify-content-between align-items-center" href="#">
            Events
            <i class="fa-solid fa-calendar"></i>
          </a>
          
          <form action="<%= request.getContextPath()%>/Logout" method="post" id="form-logout"></form>
          <button class="btn btn-secondary mt-4" type="submit" form="form-logout">
            Logout
          </button>
        </nav>
      </div> <!-- End navigation bar -->
  
      <div class="col-9 bg-light px-4 d-flex flex-column align-items-center"> <!-- Content -->
        <a class="btn btn-sm btn-secondary align-self-start mt-3 px-4" href="<%= request.getContextPath()%>/Admin/Restaurant">
            <i class="fa fa-solid fa-left-long"></i>
        </a>
        
        <form style="width: 60%" class="mx-auto my-4 needs-validation" novalidate 
            method="post" action="<%= request.getContextPath()%>/Admin/Restaurant/Create"> <!-- Create form-->
          <p class="display-6 text-center mb-5">Create new Restaurant</p>

          <div class="row mb-3">
            <label for="name" class="col-form-label col-2">Name</label>
            <div class="col-10">
              <input type="text" class="form-control" id="name" name="name" required>
              <div class="invalid-feedback">
				        Please enter accommodation's name
				      </div>
            </div>
          </div>

          <div class="row mb-3">
            <label for="contact" class="col-form-label col-2">Contact</label>
            <div class="col-10">
              <input type="text" class="form-control" id="contact" name="contact" required>
              <div class="invalid-feedback">
                Please enter a contact infomation
              </div>
            </div>
          </div>

          <div class="row mb-3">
            <label for="owner" class="col-form-label col-2">Owner</label>
            <div class="col-10">
              <input type="text" class="form-control" id="owner" name="owner" required>
              <div class="invalid-feedback">
                Please enter an owner infomation
              </div>
            </div>
          </div>

          <div class="row mb-3">
            <label for="address" class="col-form-label col-2">Address</label>
            <div class="col-10">
              <textarea class="form-control" id="address" name="address" rows="2" required></textarea>
              <div class="invalid-feedback">
                Please enter an address of accommodation
              </div>
            </div>
          </div>

          <div class="text-center">
            <button class="btn btn-primary px-5" type="submit">Create</button>
          </div>
        </form>
        
      </div> <!-- End right column-->
    </div>
  </div>

	<script>
		// Fetch all the forms we want to apply custom Bootstrap validation styles to
	  const forms = document.querySelectorAll('.needs-validation');

	  // Validate form input, and apply appropriate styles to them
	  Array.from(forms).forEach(form => {
	    form.addEventListener('submit', event => {
        // Validate input dựa trên các html attribute như required, email, min, max, ...
	      if (!form.checkValidity()) {
	        event.preventDefault();
	        event.stopPropagation();
	      }

	      form.classList.add('was-validated');
	    }, false);
    });
	</script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" 
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" 
      crossorigin="anonymous">
  </script>

</body>
</html>