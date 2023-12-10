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
          <a class="nav-link text-white active d-flex justify-content-between align-items-center" href="#">
            Accommodations
            <i class="fa-solid fa-hotel"></i>
          </a>
          <a class="nav-link text-white d-flex justify-content-between align-items-center" href="#">
            Restaurants
            <i class="fa-solid fa-utensils"></i>
          </a>
          <a class="nav-link text-white d-flex justify-content-between align-items-center" href="#">
            Events
            <i class="fa-solid fa-calendar"></i>
          </a>
        </nav>
      </div> <!-- End navigation bar -->
  
      <div class="col-9 bg-light px-4 d-flex flex-column align-items-center"> <!-- Content -->
        <a class="btn btn-sm btn-secondary align-self-start mt-3 px-4" href="<%= request.getParameter("returnUrl") %>">
            <i class="fa fa-solid fa-left-long"></i>
        </a>
        
        <%
        	Accommodation accom = (Accommodation)request.getAttribute("accommodation");
        %>
        <form style="width: 60%" class="mx-auto my-4" method="post" action=""> <!-- Update form-->
          <p class="display-6 text-center mb-5">Details</p>

          <div class="row mb-3">
            <label for="name" class="col-form-label col-2">Name</label>
            <div class="col-10">
              <input type="text" class="form-control" id="name" name="name" value="<%= accom.getName()%>">
            </div>
          </div>

          <div class="row mb-3">
            <label for="contact" class="col-form-label col-2">Contact</label>
            <div class="col-10">
              <input type="text" class="form-control" id="contact" name="contact" value="<%= accom.getContact()%>">
            </div>
          </div>

          <div class="row mb-3">
            <label for="owner" class="col-form-label col-2">Owner</label>
            <div class="col-10">
              <input type="text" class="form-control" id="owner" name="owner" value="<%= accom.getOwner()%>">
            </div>
          </div>

          <div class="row mb-3">
            <label for="address" class="col-form-label col-2">Address</label>
            <div class="col-10">
              <textarea class="form-control" id="address" name="address" rows="2"><%= accom.getAddress()%></textarea>
            </div>
          </div>

          <div class="row mb-3">
            <label for="website" class="col-form-label col-2">Website</label>
            <div class="col-10">
              <textarea class="form-control" id="website" name="website" rows="2"><%= accom.getWebsite()%></textarea>
            </div>
          </div>
         
          <div class="text-center">
            <button class="btn btn-primary px-5" type="submit">Update</button>
          </div>
        </form>
      </div> <!-- End right column-->
    </div>
  </div>


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" 
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" 
      crossorigin="anonymous">
  </script>

</body>
</html>