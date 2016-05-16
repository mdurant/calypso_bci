$(document).ready(function() {
 
    $("#notice_wrapper").fadeIn("slow").delay(2000).fadeOut("slow");
    
    $('.datepicker').datepicker({
        format: 'yyyy-mm-dd'
    });
    
    $('.input-daterange').datepicker({
        format: 'yyyy-mm-dd'
    });
    
    
    
    $('#hitos_date').datepicker().on('changeDate', function(){
        var date = $('#hitos_date').val();
        $('.hitos_header_date').empty();
        $('.hitos_header_date').append(date);
    });
    
    $('.date-deed').datepicker({
        format: 'yyyy-mm-dd'
    });
    
    $('#myCarousel').carousel({
      interval: 4000,
      pause: false
    });
   
});