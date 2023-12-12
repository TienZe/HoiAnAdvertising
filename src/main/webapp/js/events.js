var eventsPageIndex = 1;

function fetchEventDataAndDisplayTable() {
  sendAjaxRequestForEvents({ pageSize: 10 }, displayEventsTable);
}

function clearEventsTableRows() {
  deleteTableRows("eventsTable");
}

function displayEventsTable(events, pageSize, pageIndex, indexOfFirstItem, totalPages, totalItems) {
  console.log("Display events");
  clearEventsTableRows();

  var table = document.getElementById("eventsTable");

  events.forEach(function (event, index) {
    var row = table.insertRow(index + 1);

    for (var i = 0; i < 3; i++) {
      row.insertCell(i);
    }

    row.cells[0].innerHTML = '<a href="https://example.com" target="_blank">' + event.name + '</a>';
    row.cells[1].innerHTML = event.timeZone;
    row.cells[2].innerHTML = event.location;
  });

  updateEventsRecordRange(indexOfFirstItem, pageSize, totalPages, totalItems);

  updateEventsButtonStatus(pageIndex, totalPages);
}

function handleEventsRecordCountChange() {
  eventsPageIndex = 1;
  var selectedRecordCount = document.getElementById("eventsRecordCount").value;
  sendAjaxRequestForEvents({ pageSize: selectedRecordCount }, displayEventsTable);
}

function prevEventsPage() {
  sendEventsPageRequest(--eventsPageIndex);
}

function nextEventsPage() {
  sendEventsPageRequest(++eventsPageIndex);
}

function sendEventsPageRequest(pageIndex) {
  var selectedRecordCount = document.getElementById("eventsRecordCount").value;
  var searchValue = document.getElementById("eventsSearchValue").value;
  sendAjaxRequestForEvents({ pageSize: selectedRecordCount, pageIndex: pageIndex, searchKey: searchValue }, displayEventsTable);
}

function handleEventsSearch() {
  eventsPageIndex = 1;
  var searchValue = document.getElementById("eventsSearchValue").value;
  var selectedRecordCount = document.getElementById("eventsRecordCount").value;
  sendAjaxRequestForEvents({ pageSize: selectedRecordCount, searchKey: searchValue }, displayEventsTable);
}

function sendAjaxRequestForEvents(data, successCallback) {
  $.ajax({
    type: "GET",
    url: "Event",
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

function updateEventsRecordRange(indexOfFirstItem, pageSize, totalPages, totalItems) {
  var indexOfLastItem = indexOfFirstItem + pageSize - 1;
  var recordRange;
  if (eventsPageIndex === totalPages)
    recordRange = indexOfFirstItem + '-' + totalItems + ' of ' + totalPages;
  else
    recordRange = indexOfFirstItem + '-' + indexOfLastItem + ' of ' + totalPages;
  document.getElementById("eventsRecordRange").innerHTML = recordRange;
}

function updateEventsButtonStatus(pageIndex, totalPages) {
  var prevButton = document.getElementById("eventsPrevPage");
  var nextButton = document.getElementById("eventsNextPage");

  prevButton.disabled = pageIndex === 1;
  nextButton.disabled = pageIndex === totalPages;
}

// Call fetchEventDataAndDisplayTable() function when the page is loaded
document.addEventListener("DOMContentLoaded", function () {
  fetchEventDataAndDisplayTable();
  console.log("Display events");
});

