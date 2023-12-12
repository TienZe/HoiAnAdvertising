document.addEventListener("DOMContentLoaded", function () {
    var photoContainer = document.getElementById("section-photos");
    var photoItemsHTML = '';
  
    for (var i = 1; i <= 30; i++) {
      var currentImageSrc = "images/HoiAn_Short" + i + ".jpg";
      var currentAnchorHref = "images/HoiAn_Short" + i + ".jpg";
  
      var photoItemHTML = `
        <div class="col-6 col-md-6 col-lg-4" data-aos="fade-up">
          <a href="${currentAnchorHref}" class="d-block photo-item" data-fancybox="gallery">
            <img src="${currentImageSrc}" alt="Image" class="img-fluid mb-0">
            <div class="photo-text-more">
              <span class="icon icon-eye"></span>
            </div>
          </a>
        </div>
      `;
  
      photoItemsHTML += photoItemHTML;
    }
  
    // Thêm tất cả các đoạn mã HTML vào phần tử #section-photos-inner
    photoContainer.innerHTML = photoItemsHTML;
});
  