// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  Materialize.updateTextFields();

  $('.play').click(function(e){
    e.preventDefault();
    // debugger

    var pause = this.parentElement.nextElementSibling;
    var url = $(this).data("url");
    $('#player').prop('src', url);
    // $('#player').play();
    $(pause).removeClass("inactive");
    $(this.parentElement).addClass("inactive");
  });

  $('.pause').click(function(e){
    var pause = this.parentElement.previousElementSibling;
    // $('#player').pause();
    $(pause).removeClass("inactive");
    $(this.parentElement).addClass("inactive");
  });

  $('.article').on('click', '.show-text', function(e) {
    var text = this.parentElement.lastChild.previousElementSibling;
    if($(text).is(":hidden")) {
      $('.text-scroll-container').hide();
      $(text).slideToggle();
    } else {
      $(text).slideToggle();
    }
  });
});
