$(document).ready(function() { 

   $('#frmGrowthPlan').on('submit',function(){

    //init has-error class in the form
    $('#frmGrowthPlan').find('.has-error').removeClass('has-error')
          .find('.help-block').addClass('display-none');

    //Stores the items that do not meet validations
    var elements = [];

    if($.trim($('#product').val()).length < 1){
       	elements.push('#product');
    }

    if($.trim($('#objetive').val()).length < 1){
       	elements.push('#objetive');
    }

    if($.trim($('#status').val()).length < 1){
       	elements.push('#status');
    }

    //Show the error message to the validated elements
    if(elements.length){
      //Add error class and remove display-none class to elements
      for (var i = 0; i < elements.length; i++) {
        $(elements[i]).closest('.form-group')
          .addClass('has-error')
          .find('.help-block')
          .removeClass('display-none');
      }
        
      //set focus to first element

      $(elements[0]).focus();
                
      return false;
    
    }else{   
      //validate success
      $(":submit").text('Guardando...').prop('disabled', true);
      return true;
    }

	});

});
