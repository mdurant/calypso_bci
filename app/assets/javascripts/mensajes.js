$(document).ready(function() {
 
    $("#notice_wrapper").fadeIn("slow").delay(2000).fadeOut("slow");
    
    $('#datepicker1').datepicker({
        format: 'yyyy-mm-dd'
    });
    
    $('#myCarousel').carousel({
      interval: 4000,
      pause: false
    });
   
});