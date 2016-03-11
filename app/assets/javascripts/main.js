$(document).ready(function (){

  $(document).on('click', '#card', function(event){
    debugger
    event.preventDefault();
    $(this).addClass("flipped")
  });
});