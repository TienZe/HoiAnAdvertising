var eventsPageIndex = 1;

function fetchDataAndDisplay() {
  sendAjaxRequest({ pageSize: 10 }, displayevents);
}

function displayevents(events, pageSize, pageIndex, indexOfFirstItem, totalPages) {
  deleteTableRows("eventsTable");

  var table = document.getElementById("eventsTable");

  events.forEach(function (events, index) {
    var row = table.insertRow(index + 1);

    for (var i = 0; i < 4; i++) {
      row.insertCell(i);
    }

    row.cells[0].innerHTML = '<a href="https://example.com" target="_blank">' + events.name + '</a>';
    row.cells[1].innerHTML = events.timezone;
    row.cells[2].innerHTML = events.location;
  });

  updateRecordRange(indexOfFirstItem, pageSize, totalPages);

  updateButtonStatus(pageIndex, totalPages);
}

function handleRecordCountChange() {
  eventsPageIndex = 1;
  var selectedRecordCount = document.getElementById("recordEventsCount").value;
  sendAjaxRequest({ pageSize: selectedRecordCount }, displayevents);
}

function prevPage() {
  sendPageRequestForSearch(--eventsPageIndex);
}

function nextPage() {
  sendPageRequestForSearch(++eventsPageIndex);
}

function handleSearch() {
  eventsPageIndex = 1;
  var searchValue = document.getElementById("searchEventValue").value;
  var selectedRecordCount = document.getElementById("recordEventCount").value;
  sendAjaxRequest({ pageSize: selectedRecordCount, searchKey: searchValue }, displayevents);
}

function sendPageRequestForSearch(pageIndex) {
  var searchValue = document.getElementById("searchEventValue").value;
  var selectedRecordCount = document.getElementById("recordEventCount").value;
  sendAjaxRequest({ pageSize: selectedRecordCount, searchKey: searchValue, pageIndex: pageIndex }, displayevents);
}


function sendAjaxRequest(data, successCallback) {
  $.ajax({
    type: "GET",
    url: "events",
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
  document.getElementById("recordValueRange").innerHTML = recordRange;
}

function updateButtonStatus(pageIndex, totalPages) {
  var prevButton = document.getElementById("prevEventPage");
  var nextButton = document.getElementById("nextEventPage");

  prevButton.disabled = pageIndex === 1;
  nextButton.disabled = pageIndex === totalPages;
}

// Call fetchDataAndDisplay() function when the page is loaded
/*$(document).ready(function () {
  fetchDataAndDisplay();
});*/
