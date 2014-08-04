/*
  *
  * TODO: add your code here!
  *
*/


$(document).ready(function(){
    $('#message-wrapper').delay(500).slideDown(1000);
});

$( "#message-wrapper" ).click(function() {
  $( "#message-wrapper" ).slideUp( "slow", function() {
  });
});