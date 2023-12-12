var accommodationPageIndex = 1;

function fetchAccommodationDataAndDisplayTable() {
  sendAjaxRequestForAccommodation({ pageSize: 10 }, displayAccommodationTable);
}

function clearAccommodationTableRows() {
  deleteTableRows("accommodationTable");
}

function displayAccommodationTable(accommodations, pageSize, pageIndex, indexOfFirstItem, totalPages, totalItems) {
  console.log("Display accommodations");
  clearAccommodationTableRows();

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

  updateAccommodationRecordRange(indexOfFirstItem, pageSize, totalPages, totalItems);

  updateAccommodationButtonStatus(pageIndex, totalPages);
}

function handleAccommodationRecordCountChange() {
  accommodationPageIndex = 1;
  var selectedRecordCount = document.getElementById("accommodationRecordCount").value;
  sendAjaxRequestForAccommodation({ pageSize: selectedRecordCount }, displayAccommodationTable);
}

function prevAccommodationPage() {
  sendAccommodationPageRequest(--accommodationPageIndex);
}

function nextAccommodationPage() {
  sendAccommodationPageRequest(++accommodationPageIndex);
}

function sendAccommodationPageRequest(pageIndex) {
  var selectedRecordCount = document.getElementById("accommodationRecordCount").value;
  var searchValue = document.getElementById("accommodationSearchValue").value;
  sendAjaxRequestForAccommodation({ pageSize: selectedRecordCount, pageIndex: pageIndex, searchKey: searchValue }, displayAccommodationTable);
}

function handleAccommodationSearch() {
  accommodationPageIndex = 1;
  var searchValue = document.getElementById("accommodationSearchValue").value;
  var selectedRecordCount = document.getElementById("accommodationRecordCount").value;
  sendAjaxRequestForAccommodation({ pageSize: selectedRecordCount, searchKey: searchValue }, displayAccommodationTable);
}

function sendAjaxRequestForAccommodation(data, successCallback) {
  $.ajax({
    type: "GET",
    url: "Accommodation",
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

function deleteTableRows(tableId) {
  var table = document.getElementById(tableId);

  for (var i = table.rows.length - 1; i > 0; i--) {
    table.deleteRow(i);
  }
}

function updateAccommodationRecordRange(indexOfFirstItem, pageSize, totalPages, totalItems) {
  var indexOfLastItem = indexOfFirstItem + pageSize - 1;
  var recordRange;
  if (accommodationPageIndex === totalPages)
  	recordRange = indexOfFirstItem + '-' + totalItems + ' of ' + totalItems;
  else
  	recordRange = indexOfFirstItem + '-' + indexOfLastItem + ' of ' + totalItems;
  document.getElementById("accommodationRecordRange").innerHTML = recordRange;
}

function updateAccommodationButtonStatus(pageIndex, totalPages) {
  var prevButton = document.getElementById("accommodationPrevPage");
  var nextButton = document.getElementById("accommodationNextPage");

  prevButton.disabled = pageIndex === 1;
  nextButton.disabled = pageIndex === totalPages;
}

// Call fetchAccommodationDataAndDisplayTable() function when the page is loaded
document.addEventListener("DOMContentLoaded", function () {
  fetchAccommodationDataAndDisplayTable();
  console.log("Display accommodations");
});
