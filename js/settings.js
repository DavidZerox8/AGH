$(document).ready(function() { 
    
    //Validate form login
    $('#formChangePassword').on('submit',function(){

        if($.trim($("#password").val()).length < 1){
            alert("Favor de ingresar su nueva contraseña.");
            $("#password").focus();
            return false;
        }

        if($.trim($("#password").val()).length < 6){
            alert("Favor de ingresar una contraseña entre 6 y 15 caracteres, preferiblemente una combinación entre números y letras.");
            $("#password").focus();
            return false;
        }

        if($.trim($("#confirm-password").val()).length < 1){
            alert("Favor de confirmar su nueva contraseña.");
            $("#confirm-password").focus();
            return false;
        }

        if ( $.trim($("#password").val()) != $.trim($("#confirm-password").val()) ){
            alert("Las contraseñás ingresadas no coinciden, favor de verificarlas.");
            $("#password").focus();
            return false;   
        }
        
        return true;

    });

});