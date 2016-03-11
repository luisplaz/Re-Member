$(document).ready(function (){

  $(document).on('click', '#card', function(event){
    event.preventDefault();
      $(this).toggleClass("flipped")
  });
});