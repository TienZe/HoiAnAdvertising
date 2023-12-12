var restaurantPageIndex = 1;

function fetchRestaurantDataAndDisplayTable() {
  sendAjaxRequestForRestaurant({ pageSize: 10 }, displayRestaurantTable);
}

function clearRestaurantTableRows() {
  deleteTableRows("restaurantsTable");
}

function displayRestaurantTable(restaurants, pageSize, pageIndex, indexOfFirstItem, totalPages, totalItems) {
  console.log("Display restaurants");
  clearRestaurantTableRows();

  var table = document.getElementById("restaurantsTable");

  restaurants.forEach(function (restaurant, index) {
    var row = table.insertRow(index + 1);

    for (var i = 0; i < 4; i++) {
      row.insertCell(i);
    }

    row.cells[0].innerHTML = '<a href="https://example.com" target="_blank">' + restaurant.name + '</a>';
    row.cells[1].innerHTML = restaurant.contact;
    row.cells[2].innerHTML = restaurant.owner;
    row.cells[3].innerHTML = '<a href="https://example.com" target="_blank">' + restaurant.address + '</a>';
  });

  updateRestaurantRecordRange(indexOfFirstItem, pageSize, totalPages, totalItems);

  updateRestaurantButtonStatus(pageIndex, totalPages);
}

function handleRestaurantRecordCountChange() {
  restaurantPageIndex = 1;
  var selectedRecordCount = document.getElementById("restaurantRecordCount").value;
  sendAjaxRequestForRestaurant({ pageSize: selectedRecordCount }, displayRestaurantTable);
}

function prevRestaurantPage() {
  sendRestaurantPageRequest(--restaurantPageIndex);
}

function nextRestaurantPage() {
  sendRestaurantPageRequest(++restaurantPageIndex);
}

function sendRestaurantPageRequest(pageIndex) {
  var selectedRecordCount = document.getElementById("restaurantRecordCount").value;
  var searchValue = document.getElementById("restaurantSearchValue").value;
  sendAjaxRequestForRestaurant({ pageSize: selectedRecordCount, pageIndex: pageIndex, searchKey: searchValue }, displayRestaurantTable);
}

function handleRestaurantSearch() {
  restaurantPageIndex = 1;
  var searchValue = document.getElementById("restaurantSearchValue").value;
  var selectedRecordCount = document.getElementById("restaurantRecordCount").value;
  sendAjaxRequestForRestaurant({ pageSize: selectedRecordCount, searchKey: searchValue }, displayRestaurantTable);
}

function sendAjaxRequestForRestaurant(data, successCallback) {
  $.ajax({
    type: "GET",
    url: "Restaurant",
    data: data,
    dataType: "json",
    success: function (data) {
      successCallback(data.items, data.pageSize, data.pageIndex, data.indexOfFirstItem, data.totalPages, data.totalItems);
    },
    error: function (error) {
      console.error(error);
    }
  });
}

function updateRestaurantRecordRange(indexOfFirstItem, pageSize, totalPages, totalItems) {
  var indexOfLastItem = indexOfFirstItem + pageSize - 1;
  var recordRange;
  if (restaurantPageIndex === totalPages)
  	recordRange = indexOfFirstItem + '-' + totalItems + ' of ' + totalPages;
  else
  	recordRange = indexOfFirstItem + '-' + indexOfLastItem + ' of ' + totalPages;
  document.getElementById("restaurantRecordRange").innerHTML = recordRange;
}

function updateRestaurantButtonStatus(pageIndex, totalPages) {
  var prevButton = document.getElementById("restaurantPrevPage");
  var nextButton = document.getElementById("restaurantNextPage");

  prevButton.disabled = pageIndex === 1;
  nextButton.disabled = pageIndex === totalPages;
}

// Call fetchRestaurantDataAndDisplayTable() function when the page is loaded
document.addEventListener("DOMContentLoaded", function () {
  fetchRestaurantDataAndDisplayTable();
  console.log("Display restaurants");
});

