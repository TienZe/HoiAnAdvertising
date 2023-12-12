var accommodationPageIndex = 1;

function fetchDataAndDisplay() {
  sendAjaxRequest({ pageSize: 10 }, displayAccommodations);
}

function clearTableRows() {
  deleteTableRows("accommodationTable");
}

function displayAccommodations(accommodations, pageSize, pageIndex, indexOfFirstItem, totalPages) {
  clearTableRows("accommodationTable");

  var table = document.getElementById("accommodationTable");

  accommodations.forEach(function (accommodation, index) {
    var row = table.insertRow(index + 1);

    for (var i = 0; i < 4; i++) {
      row.insertCell(i);
    }

    row.cells[0].innerHTML = '<a href="https://example.com" target="_blank">' + accommodation.name + '</a>';
    row.cells[1].innerHTML = accommodation.contact;
    row.cells[2].innerHTML = accommodation.address;
    row.cells[3].innerHTML = '<a href="https://example.com" target="_blank">' + accommodation.website + '</a>';
  });

  updateRecordRange(indexOfFirstItem, pageSize, totalPages);

  updateButtonStatus(pageIndex, totalPages);
}

function handleRecordCountChange() {
  accommodationPageIndex = 1;
  var selectedRecordCount = document.getElementById("recordCount").value;
  sendAjaxRequest({ pageSize: selectedRecordCount }, displayAccommodations);
}

function prevPage() {
  sendPageRequestForSearch(--accommodationPageIndex);
}

function nextPage() {
  sendPageRequestForSearch(++accommodationPageIndex);
}

function sendPageRequest(pageIndex) {
  var selectedRecordCount = document.getElementById("recordCount").value;
  sendAjaxRequest({ pageSize: selectedRecordCount, pageIndex: pageIndex }, displayAccommodations);
}

function handleSearch() {
  accommodationPageIndex = 1;
  var searchValue = document.getElementById("searchValue").value;
  var selectedRecordCount = document.getElementById("recordCount").value;
  sendAjaxRequest({ pageSize: selectedRecordCount, searchKey: searchValue }, displayAccommodations);
}

function sendAjaxRequest(data, successCallback) {
  $.ajax({
    type: "GET",
    url: "Accommodation",
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

function sendPageRequestForSearch(pageIndex) {
  var searchValue = document.getElementById("searchValue").value;
  var selectedRecordCount = document.getElementById("recordCount").value;
  sendAjaxRequest({ pageSize: selectedRecordCount, searchKey: searchValue, pageIndex: pageIndex }, displayAccommodations);
}

function updateRecordRange(indexOfFirstItem, pageSize, totalPages) {
  var indexOfLastItem = indexOfFirstItem + pageSize - 1;
  var recordRange = indexOfFirstItem + '-' + indexOfLastItem + ' của ' + totalPages;
  document.getElementById("recordRange").innerHTML = recordRange;
}

function updateButtonStatus(pageIndex, totalPages) {
  var prevButton = document.getElementById("prevPage");
  var nextButton = document.getElementById("nextPage");

  prevButton.disabled = pageIndex === 1;
  nextButton.disabled = pageIndex === totalPages;
}

// Call fetchDataAndDisplay() function when the page is loaded
$(document).ready(function () {
  fetchDataAndDisplay();
});
