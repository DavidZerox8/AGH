$(document).ready(function() { 
    
   //init mask for integer
   $('.input-integer').mask('999999999');

   //init mask mask of amount
   $('.input-money').mask("#,##0.00", {reverse: true});

   //init mask for decimal
   $('.input-decimal').mask('9999999999999.9999999999999');

   //init mask for date
   $ ('.input-date').mask('00/00/0000 00:00:00');

   //init mask for time
   $ ('.input-time').mask('00:00:00');

   $('#type_of_labeling').editableSelect();
   $('#liner').editableSelect();
   $('#adhesive').editableSelect();
   $('#separations_axis').editableSelect();
   $('#development_separations').editableSelect();
   $('#radio').editableSelect();
   $('#inside_diameter').editableSelect();
   


});