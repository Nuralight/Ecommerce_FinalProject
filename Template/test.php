<?php
include_once("custom_error_handler.php");
//$error=new custom_error_ha();
include_once("myshop.php");
$obj= new myshop();
 if($obj->customer_info($fname,$lname,$tel,$shad,$email)){
              echo'{" customer info successfully added"}';
         }
         else{
              $message="customer  info not added";
              //error_log($message,3,"error_logs.txt");
              trigger_error("A custom error has been triggered");
         }
?>