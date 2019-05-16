<?php
// displaying errors
function display_errors($errors){
     $display= '<ul class="bg-danger">';
     foreach ($errors as $error) {
       $display.='<li class="text-danger">'.$error.'</li>';
     }
     $display.='</ul>';
     return $display;
   }

  //security.
 function sanitize ($dirty){
 	$dirty = trim($dirty);
  $dirty = stripslashes($dirty);
  $dirty = htmlspecialchars($dirty);
     return htmlentities ($dirty, ENT_QUOTES, "UTF-8");
   }

   //date formatter
   function dmY($date){
   	$date=strtotime($date);
   	
   	//Y-m-d
   	$date=date('d-m-Y', $date);
    return $date;
   }

   function dateMY($date){
    $date=strtotime($date);
   	//d-M-Y
	$date=date('d-M-Y', $date);
   }
    
    function money($number){
        return '$ '. number_format($number, 2);
    }
