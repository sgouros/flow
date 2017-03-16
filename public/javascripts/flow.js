$(document).ready(function(){
  $('#status_id').click(function(){
    if ($('#dispatch_stage_id').attr('checked')){
      $('.description').show();
    }
    else{
      $('.description').hide();
    }
  });
});

