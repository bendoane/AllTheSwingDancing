// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require underscore
//= require gmaps/google
//= require_tree .

$(function() {
  $('#event_image_thumbnail').on('change', function(event) {
    var files = event.target.files;
    var image = files[0]
    var reader = new FileReader();
    reader.onload = function(file) {
      var img = new Image();
      console.log(file);
      img.src = file.target.result;
      $('#preview').html(img);
      img.style.width = '300px';
    }
    reader.readAsDataURL(image);
    console.log(files);
  });
});

// Still toying with the button functionality for "going" or "not going"
// $(document).ready(function () {
//   $('.panel-heading.panel-bottom').click(function (item) {
//     $(item.currentTarget).toggleClass('going');
//     	if (item.currentTarget.innerHTML == "Going") {
// 				item.currentTarget.innerHTML = "Not Going";
// 			} else {
// 				item.currentTarget.innerHTML = "Going";
// 			};
//     $(item.currentTarget).parent('panel-heading.panel-bottom').toggleClass('going');
//   });
// });
