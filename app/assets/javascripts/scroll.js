$(document).ready(function(){
  $( '.scrollit' ).on('click', function(event) {
    event.preventDefault();
    var target = $(this).data('target');
    $('html, body').animate({
        scrollTop: $(target).offset().top - 51
    }, 1000);
    $(".navbar-collapse").collapse('hide');
  });
});