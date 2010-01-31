$(document).ready(function() {
	$('#image_galleries li a').lightBox({
		imageLoading: "/images/lightbox-ico-loading.gif",
		imageBtnClose: "/images/lightbox-btn-close.gif",
		imageBtnPrev: "/images/lightbox-btn-prev.gif", 
		imageBtnNext: "/images/lightbox-btn-next.gif",
		txtImage: "Photo"
	});
});