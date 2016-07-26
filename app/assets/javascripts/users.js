// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  Materialize.updateTextFields();

  $('.play').click(function(e){
    // debugger

    var pause = this.parentElement.nextElementSibling;
    var url = $(this).data("url");
    $('#player').prop('src', url);
    // $('#player').play();
    // $(pause).removeClass("inactive");
    // $(this.parentElement).addClass("inactive");
  });

  // $('.pause').click(function(e){
  //   var play = this.previousElementSibling;
  //   debugger
  //   $('#player').pause();
  //   $(pause).removeClass("inactive");
  //   $(this).addClass("inactive");
  // });

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
