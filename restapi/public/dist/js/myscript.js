$(document).ready(function () {
    $.widget.bridge('uibutton', $.ui.button);
});

$(".select2").select2();
    
$('#notifications').slideDown('slow').delay(2000).slideUp('slow');

$('.tanggal').datepicker({
   format: "yyyy-mm-dd",
   autoclose: true,
   todayHighlight: true,
   changeYear: true,
   changeMonth: true,
   startView: 'decade',
   yearRange: '1980:+0'
});

$('.tanggal_expired').datepicker({
   format: "yyyy-mm-dd h:i:s",
   autoclose: true,
   todayHighlight: true,
   changeYear: true,
   changeMonth: true,
   startView: 'decade',
   yearRange: '1980:+0'
});