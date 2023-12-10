var pageIndex = 1;

// your-ajax-script.js
function fetchDataAndDisplay() {
  $.ajax({
    type: "GET",
    url: "Accommodation",
    data: { pageSize: 10 },
    dataType: "json",
    success: function (data) {
      // Xử lý dữ liệu JSON và hiển thị trong bảng
      pageIndex = data.pageIndex;
      displayAccommodations(data.items, data.pageSize, data.pageIndex, data.indexOfFirstItem, data.totalPages);
    },
    error: function (error) {
      console.error(error);
    }
  });
}

function clearTableRows() {
  var table = document.getElementById("accommodationTable");
  console.log(table.rows.length);
  // Xóa các dòng, bắt đầu từ hàng thứ 2
  for (var i = table.rows.length - 1; i > 0; i--) {
    table.deleteRow(i);
  }
}

// Hàm hiển thị dữ liệu trong bảng
function displayAccommodations(accommodations, pageSize, pageIndex, indexOfFirstItem, totalPages) {
  var table = document.getElementById("accommodationTable");

  for (var i = table.rows.length - 1; i > 0; i--) {
    table.deleteRow(i);
  }

  // Lặp qua danh sách đối tượng Accommodation và thêm vào bảng
  for (var i = 0; i < accommodations.length; i++) {
    var accommodation = accommodations[i];

    var row = table.insertRow(i + 1);

    var cell1 = row.insertCell(0);
    var cell2 = row.insertCell(1);
    var cell3 = row.insertCell(2);
    var cell4 = row.insertCell(3);

    cell1.innerHTML = '<a href="https://example.com" target="_blank">' + accommodation.name + '</a>';
    cell2.innerHTML = accommodation.contact;
    cell3.innerHTML = accommodation.address;
    cell4.innerHTML = '<a href="https://example.com" target="_blank">' + accommodation.website + '</a>';
  }
  
  var indexOfLastItem = indexOfFirstItem + pageSize - 1;
  var recordRange = indexOfFirstItem + '-' + indexOfLastItem + ' của ' + totalPages;
  document.getElementById("recordRange").innerHTML = recordRange;

  var prevButton = document.getElementById("prevPage");
  var nextButton = document.getElementById("nextPage");
  
  console.log("pageIndex:", pageIndex);
  console.log("totalPages:", totalPages);

  // Kiểm tra nếu currentPageIndex là 1 thì disable nút prev
  if (pageIndex === 1) {
    prevButton.disabled = true;
  } else {
    prevButton.disabled = false;
  }

  // Kiểm tra nếu currentPageIndex là totalPages thì disable nút next
  if (pageIndex === totalPages) {
    nextButton.disabled = true;
  } else {
    nextButton.disabled = false;
  }
}

function handleRecordCountChange() {
  var selectedRecordCount = document.getElementById("recordCount").value;
  pageIndex = 1;
  console.log(selectedRecordCount);

  $.ajax({
    type: "GET",
    url: "Accommodation",
    data: { pageSize: selectedRecordCount },
    dataType: "json",
    success: function (data) {
      displayAccommodations(data.items, data.pageSize, data.pageIndex, data.indexOfFirstItem, data.totalPages);
    },
    error: function (error) {
      console.error(error);
    }
  });
}

function prevPage() {
  var pagePreIndex = --pageIndex;
  var selectedRecordCount = document.getElementById("recordCount").value;

  console.log(pagePreIndex);

  $.ajax({
    type: "GET",
    url: "Accommodation",
    data: { pageSize: selectedRecordCount, pageIndex: pagePreIndex },
    dataType: "json",
    success: function (data) {
      displayAccommodations(data.items, data.pageSize, data.pageIndex, data.indexOfFirstItem, data.totalPages);
    },
    error: function (error) {
      console.error(error);
    }
  });
}

function nextPage() {
  var pageNextIndex = ++pageIndex;
  var selectedRecordCount = document.getElementById("recordCount").value;

  console.log(pageNextIndex);

  $.ajax({
    type: "GET",
    url: "Accommodation",
    data: { pageSize: selectedRecordCount, pageIndex: pageNextIndex },
    dataType: "json",
    success: function (data) {
      displayAccommodations(data.items, data.pageSize, data.pageIndex, data.indexOfFirstItem, data.totalPages);
    },
    error: function (error) {
      console.error(error);
    }
  });
}


//Call fetchDataAndDisplay() function when page is loaded
$(document).ready(function () {
  fetchDataAndDisplay();
});
