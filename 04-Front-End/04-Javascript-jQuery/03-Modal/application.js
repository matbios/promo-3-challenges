$(function(){
  $("#modal-launcher, #modal-background").click(function () {
    $("#modal-content,#modal-background").fadeIn(1000).toggleClass("active");
  });
});

$(function(){
  $("#modal-close").click(function () {
    $("#modal-content,#modal-background").fadeOut(1000).toggleClass("active");
  });
});