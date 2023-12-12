<%@page import="model.bean.Restaurant"%>
<%@page import="controller.BaseServlet.TempData"%>
<%@page import="dto.AlertMessage"%>
<%@page import="model.bean.Accommodation"%>
<%@page import="dto.PaginatedList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
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
          <p class="display-4 fw-medium text-center mb-5" style="color: #F9F9E0;">ADMIN</p>
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
          <a class="nav-link text-white d-flex justify-content-between align-items-center" 
          		href="<%= request.getContextPath()%>/Admin/Event">
            Events
            <i class="fa-solid fa-calendar"></i>
          </a>
          
          <form action="<%= request.getContextPath()%>/Logout" method="post" id="form-logout"></form>
          <button class="btn btn-secondary mt-4" type="submit" form="form-logout">
            Logout
          </button>
        </nav>
      </div> <!-- End navigation bar -->
  	
      <div class="col-9 bg-light px-4 d-flex flex-column"> <!-- Content -->
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
      	
      	
        <div class="w-75 mt-3"> <!-- Search input-->
		  		<%
		  			String searchKey = (request.getAttribute("searchKey") != null) ? (String)request.getAttribute("searchKey") : "";
		  		%>
          <form class="input-group mb-3" action="<%= request.getContextPath()%>/Admin/Restaurant">
            <input name="searchKey" type="text" class="form-control" placeholder="Enter something to search ..."
             value="<%= searchKey %>">
             	
            <button class="btn btn-primary" type="submit">Search</button>
          </form>
        </div>

        <div class="table-responsive mb-2">
          <table class="table table-striped caption-top">
            <caption class="mb-2 fw-medium">List of restaurants</caption>
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>
                <th scope="col">Address</th>
                <th scope="col"></th>
              </tr>
            </thead>

            <tbody class="table-group-divider">
            <%
              PaginatedList<Restaurant> paginatedList = (PaginatedList<Restaurant>)request.getAttribute("paginatedList");
            	int rowIndex = paginatedList.getIndexOfFirstItem();
            	
              for (Restaurant restaurant : paginatedList.getItems()) {
            	  int restaurantID = restaurant.getId();
            %>
	              <tr>
	                <th scope="row"><%= rowIndex %></th>
	                <td><%= restaurant.getName() %></td>
	                <td><%= restaurant.getAddress() %></td>
	
	                <td class="text-center">
	                  <div class="btn-group btn-group-sm" role="group">
	                  	<!-- Form get details -->
	                  	<form id="form-details-<%= restaurantID %>" action="<%= request.getContextPath() %>/Admin/Restaurant/Details"> 
	                  		<input name="id" value="<%= restaurantID %>" hidden>
	                  		<input name="returnUrl" value="<%= request.getAttribute("currentURL")%>" hidden>
	                  	</form>
	                    <button class="btn btn-info" type="submit" form="form-details-<%= restaurantID %>">
	                    		Details
	                    </button>
											
											<!-- Form delete -->
	                    <form id="form-delete-<%= restaurantID %>" action="<%= request.getContextPath()%>/Admin/Restaurant/Delete" method="post">
	                      <input name="id" value="<%= restaurantID %>" hidden>
	                    </form>
	                    <button name="btn-delete" type="button" class="btn btn-danger" form="form-delete-<%= restaurantID %>"
	                      data-bs-toggle="modal" data-bs-target="#confirm-delete-modal">
	                      Delete
	                    </button>
	                  </div>
	                </td>
	              </tr>
						<%
								++rowIndex;
							} 
						%>

            </tbody>
          </table>
        </div>

        <!-- Pagination -->
        <%
        	int totalPages = paginatedList.getTotalPages();
        	int activePage = paginatedList.getPageIndex();
        	
        	int startIndex = Math.max(activePage - 1, 1);
        	int endIndex = Math.min(activePage + 1, totalPages);
        	
        	// Check corner case
        	if (totalPages >= 3) {
        		if (activePage == 1) {
        			startIndex = 1;
        			endIndex = 3;
        		}
        		
        		if (activePage == totalPages) {
        			startIndex = totalPages - 2;
        			endIndex = totalPages;
        		}
        	}
        	
        %>
        
        <%!
        	String getUrlToPage(int pageIndex, String searchKey) {
        		return "/Admin/Restaurant?pageIndex=" + Integer.toString(pageIndex) 
        			+ (!searchKey.isBlank() ? "&searchKey=" + searchKey : "");
       	  }
        %>
        <div class="d-flex justify-content-between align-items-start">
          <a class="btn btn-primary" href="<%= request.getContextPath()%>/Admin/Restaurant/Create" role="button">
            Add new Restaurant
          </a>
          
          <nav>
            <ul class="pagination pagination-sm justify-content-end">
              <li class="page-item <%= (activePage == 1 ? "disabled" : "") %>">
                <a class="page-link" href="<%= request.getContextPath() + getUrlToPage(Math.max(activePage - 1, 1), searchKey)%>">
                	Previous
                </a>
              </li>
            <%
            	for (int i = startIndex; i <= endIndex; ++i) {
            %>
            		<li class="page-item <%= (i == activePage ? "active" : "") %>">
                	<a class="page-link" href="<%= request.getContextPath() + getUrlToPage(i, searchKey)%>">
                		<%= i %>
                	</a>
              	</li>
            <%
            	}
            %>
              
             <li class="page-item <%= (activePage == totalPages ? "disabled" : "") %>">
                <a class="page-link" href="<%= request.getContextPath() + getUrlToPage(Math.min(activePage + 1, totalPages), searchKey)%>">
                	Next
                </a>
              </li>
            </ul>
          </nav>
        </div>
        
      </div> <!-- End right column-->
    </div>
  </div>


  <!-- Modal confirm delete -->
  <div class="modal fade" id="confirm-delete-modal" tabindex="-1">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5">Annoucement</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
        </div>
        <div class="modal-body">
          Delete this Restaurant!
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" id="btn-confirm-delete">Confirm</button>
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Script submit form delete-->
  <script>
    let submittedForm = null;

    document.querySelectorAll('button[name="btn-delete"]').forEach(btn => {
      btn.addEventListener("click", e => {
        // Update submitted form
        submittedForm = e.target.form;
      });
    });

    document.getElementById("btn-confirm-delete").addEventListener("click", e => {
      if (submittedForm) submittedForm.submit();
    });
  </script>


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" 
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" 
      crossorigin="anonymous">
  </script>

</body>
</html>