$(document).ready(function() { 

  //Box enables modification comments
  $(document).on('click', '.comment-edit', function(){ // Use $(document) to controllers events based on delegation
    
    //Get article element and observation text
    var articleContent = $(this).closest('article');
    var messageContent = articleContent.find('.message-content')
    var observation = messageContent.text();

    //Hide message content
    messageContent.hide();
    
    //Show edit-observation-content
    articleContent.find('.edit-message-content').show()
      .find('.input-comment')
      .val(observation);

  });

  //Box disables modification comments
  $(document).on('click', '.cancel-edit', function(){ // Use $(document) to controllers events based on delegation
    
    //Get main element and observation
    var observationContent = $(this).closest('article');
    //Hide observation-message-content
    observationContent.find('.edit-message-content').hide();
    //Show observation-content
    observationContent.find('.message-content').show();

  });

  //Save and update new observations
  $(document).on('submit', '.form-comments', function(){
    
    //Init class has-error in the form
    $(this).find('.has-error').removeClass('has-error')
      .find('.help-block').addClass('display-none');

    // Get element the form
    var form = $(this);
    var inputComment = form.find('.input-comment');
    var btnSubmit = form.find(':submit');
    
    //Get commment
    var observation = $.trim(inputComment.val());
    
    //validate input comment
    if (!observation.length < 1){
      
      //get manufacturing order id, stage id value and operation type
      var manufacturingOrderId = $.trim($('#manufacturing_order_id').val());
      var stageId = $.trim(form.find('input[name=stage_id]').val());
      var operation = $.trim(form.find('input[name=operation]').val());

      //condition operation type POST (save observation) or PUT (update observation)
      if (operation == "post"){
        //Prepare the destination url
        var url = publicPath+"/comments-manufacturing-steps";
      }else{
        //Get the id of the comment that modify and prepare the destination url
        var id = $.trim(form.find('input[name=id]').val());
        var url = publicPath+"/comments-manufacturing-steps/"+id;
      }

      //save or update observation whit ajax
      $.ajax({
        type: operation,
        url: url,
        data: { 
          manufacturing_order_id: manufacturingOrderId,
          stage_id: stageId,
          observation: observation
        },
        beforeSend: function() {
          //Disabled button
          btnSubmit.text('Guardando...')
            .prop('disabled',true);
        }
      }).done(function(response){
       
        //Validate response
        if (response.success){
          
          if (operation == "post"){
            //Get the main comments content
            var mainContent = form.closest('.panel-footer').find('.main-comments');
            // add the observation at the view
            mainContent.prepend(
              '<article>'+
                '<div class="text-primary margin-bottom-10 action-button">'+
                  'Nueva observación: '+ 
                  '<div class="pull-right">'+
                    '<a title="Editar observación" class="comment-edit margin-right-2 cursor-pointer">' +
                      '<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>' +
                    '</a>'+
                    '<a class="observation-delete cursor-pointer" style="padding-left:2px;" title="Eliminar observación" data-id="'+response.insertId+'">'+
                      '<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>'+
                    '</a>'+
                  '</div>'+
                '</div>'+
                '<p class="message-content">'+ observation +'</p>'+
                '<div class="edit-message-content div-message-content margin-bottom-40 display-none">'+
                  '<form class="form-comments" autocomplete="OFF" role="role">'+
                    '<input type="hidden" name="id" value="'+response.insertId+'" />'+
                    '<input type="hidden" name="operation" value="put" />'+
                    '<input type="hidden" name="stage_id" value="'+stageId+'" />'+
                    '<textarea class="form-control input-sm input-comment" rows="2" maxlength="255"></textarea>'+
                    '<p class="help-block display-none">* Ingrese su comentario u observación.</p>'+
                    '<div class="pull-right margin-top-5">'+
                      '<button type="button" class="btn btn-default btn-xs cancel-edit margin-right-5">'+
                        'Cancelar'+
                      '</button>'+
                      '<button type="submit" class="btn btn-info btn-xs">'+
                        'Actualizar'+
                      '</button>'+
                    '</div>'+
                  '</form>'+
                '</div>'+
              '</article>'
            );

          }else{
            //update message and show the observation at the view
            form.closest('article').find('.message-content').text(observation).show();
            form.closest('.edit-message-content').hide();
          }

        }
        else
        {
          alert('Ocurrió un error al procesar su solicitud, intente de nuevo por favor.');
        }

      }).fail(function(response){
        
        alert('Ocurrió un error al conectar con el servidor, intente de nuevo por favor.');
      
      }).always(function() {
        
        if (operation == "post"){
          //reset the form elements
          btnSubmit.text('Publicar')
            .prop('disabled',false);
        }else{
          //reset the form elements
          btnSubmit.text('Actualizar')
            .prop('disabled',false);
        }
        //reset input comment value
        inputComment.val('');
        
      });

    }else{
      //Show validate message error
      form.find('.input-comment').closest('.div-message-content')
        .addClass('has-error')
        .find('.help-block')
        .removeClass('display-none');
    }

    return false;
    
  });

  //Delete observation function
  $(document).on('click', '.observation-delete', function(e){ // Use $(document) to controllers events based on delegation
    
    e.preventDefault(); 
    
    //Validate confirmation
    var confirmation = confirm("Estás seguro de eliminar la observación");

    if (confirmation == true) {
      
      //Get element and observation id
      var elementDelete = $(this);
      var id = elementDelete.attr("data-id");
      var url = publicPath+"/comments-manufacturing-steps/"+id;

      //Delete observation whit Ajax
      $.ajax({
        type: "delete",
        url: url
      }).done(function(response){
        
        //Validate response
        if (response.success){
                  
          //Delete observation in the Dom
          elementDelete.closest('article').remove();
          //Confirmation user message

        }
        else
        {
          alert('Ocurrió un error al eliminar la observación, intente de neuvo por favor.');
        }

      }).fail(function(response){
        
        alert('Ocurrió un error al conectar con el servidor, intente de nuevo por favor.');
        
      });

    } else {
      
      return false;
    
    }

  });
  
});