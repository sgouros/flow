$(function() 
{   
    $("#dispatch_stage_id").change(function() {
      var selected_index = $("#dispatch_stage_id option").index($("#dispatch_stage_id option:selected"));
      var document_target_protocol = $("#document_target_protocol").val();
      
      if ( selected_index == 3 ) // G::DDS_DISPATCHED-1
      {
        $('#dispatch_protocol').show(150);
        $('#dispatch_date').show(150);
        $("#document_dispatch_protocol").val(document_target_protocol);
      }
      else if ( selected_index == 4 ) // G::DDS_ARCHIVED-1
      {
        $('#dispatch_date').show(150);
        $("#document_dispatch_protocol").val('Αρχείο');
        $('#dispatch_protocol').hide(150);
      }
      else
      {  
        $('#dispatch_protocol').hide(150);
        $('#dispatch_date').hide(150);
      };
                 
    }).change();

    $(".sel2").select2(); 

})

        
        
        
    
    

