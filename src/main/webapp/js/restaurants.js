var restaurantsPageIndex = 1;

function fetchDataAndDisplay() {
  sendAjaxRequest({ pageSize: 10 }, displayrestaurants);
}

function clearTableRows() {
  deleteTableRows("restaurantsTable");
}

function displayrestaurants(restaurants, pageSize, pageIndex, indexOfFirstItem, totalPages) {
  clearTableRows("restaurantsTable");

  var table = document.getElementById("restaurantsTable");

  restaurants.forEach(function (restaurants, index) {
    var row = table.insertRow(index + 1);

    for (var i = 0; i < 4; i++) {
      row.insertCell(i);
    }

    row.cells[0].innerHTML = '<a href="https://example.com" target="_blank">' + restaurants.name + '</a>';
    row.cells[1].innerHTML = restaurants.contact;
    row.cells[2].innerHTML = restaurants.owner;
    row.cells[3].innerHTML = '<a href="https://example.com" target="_blank">' + restaurants.address + '</a>';
  });

  updateRecordRange(indexOfFirstItem, pageSize, totalPages);

  updateButtonStatus(pageIndex, totalPages);
}

function handleRecordCountChange() {
  restaurantsPageIndex = 1;
  var selectedRecordCount = document.getElementById("recordRestaurantCount").value;
  sendAjaxRequest({ pageSize: selectedRecordCount }, displayrestaurants);
}

function prevPage() {
  sendPageRequestForSearch(--restaurantsPageIndex);
}

function nextPage() {
  sendPageRequestForSearch(++restaurantsPageIndex);
}

function handleSearch() {
  restaurantsPageIndex = 1;
  var searchValue = document.getElementById("searchRestaurantValue").value;
  var selectedRecordCount = document.getElementById("recordRestaurantCount").value;
  sendAjaxRequest({ pageSize: selectedRecordCount, searchKey: searchValue }, displayrestaurants);
}

function sendPageRequestForSearch(pageIndex) {
  var searchValue = document.getElementById("searchRestaurantValue").value;
  var selectedRecordCount = document.getElementById("recordRestaurantCount").value;
  sendAjaxRequest({ pageSize: selectedRecordCount, searchKey: searchValue, pageIndex: pageIndex }, displayrestaurants);
}


function sendAjaxRequest(data, successCallback) {
  $.ajax({
    type: "GET",
    url: "restaurants",
    data: data,
    dataType: "json",
    success: function (data) {
      successCallback(data.items, data.pageSize, data.pageIndex, data.indexOfFirstItem, data.totalPages);
    },
    error: function (error) {
      console.error(error);
    }
  });
}

function deleteTableRows(tableId) {
  var table = document.getElementById(tableId);

  for (var i = table.rows.length - 1; i > 0; i--) {
    table.deleteRow(i);
  }
}

function updateRecordRange(indexOfFirstItem, pageSize, totalPages) {
  var indexOfLastItem = indexOfFirstItem + pageSize - 1;
  var recordRange = indexOfFirstItem + '-' + indexOfLastItem + ' của ' + totalPages;
  document.getElementById("recorRestaurantdRange").innerHTML = recordRange;
}

function updateButtonStatus(pageIndex, totalPages) {
  var prevButton = document.getElementById("prevRestaurantPage");
  var nextButton = document.getElementById("nextRestaurantPage");

  prevButton.disabled = pageIndex === 1;
  nextButton.disabled = pageIndex === totalPages;
}

// Call fetchDataAndDisplay() function when the page is loaded
$(document).ready(function () {
  fetchDataAndDisplay();
});
