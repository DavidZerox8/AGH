$(document).ready(function() { 

  //validate upload arts
  $('#formUploadArts').on('submit',function(){
    //get input file
    var files = $('#files').val(); 
    
    //valdiate empty files
    if(!files == '') { 
      //disabled buttons and show upload info
      files.disabled = true;
      $('.alert-info-upload').removeClass('display-none');
      $('#btnCancel').prop('disabled', true );
      $('#btnAddArts').prop('disabled', true )
        .text('Guardando artes...');

      return true;

    }else{
      //display user message
      $('.help-block').removeClass('display-none');
      return false;      
    }

  })
  
});