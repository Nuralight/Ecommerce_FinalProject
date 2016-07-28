<?php
session_start();
include_once("custom_error_handler.php");
$mycart=array();
 $totalcost=0;
  echo"prepared";
 if(isset($_GET['ck'])){
  header("location:reload.php?myid=2");
}


if(isset($_GET['ck'])){
	if(isset($_SESSION['cart'])){
  	foreach($_SESSION['cart'] as $i=>$value){
  		if(isset($_SESSION['cart'][$i])){
  			include_once('myshop.php');
  			$obj=new myshop();
  			$obj->display_list($i);
  			$myjewellery=$obj->fetch();
        $cart['jewelleryid']=$myjewellery["jewelleryid"];
  			$cart['jewellerybrand']=$myjewellery["jewellerybrand"];
  			$cart['id']=$_SESSION['cart'][$i];
  			$cart['price']=$myjewellery["price"];
  			$totalcost+=$_SESSION['cart'][$i]*$myjewellery["price"];
        echo"prepared";
        
  			if($obj->orders($cart['jewelleryid'],$cart['jewellerybrand'],$cart['id'],$cart['price'])){
		     echo'{"message": "successfully added"}';
		}
		else{
            $message="message error adding";
             //error_log($message,2,"error_logs.txt");
             trigger_error("A custom error has been triggered");

         }
  		$mycart[]=$cart;

  	}
  }
  //include_once('myshop.php');


}
include_once('mail.php');
$mail = new mailsender();
$mail->mail();


}

include_once('mail.php');
$mail = new mailsender();
$mail->mail();



require_once  './Twig/Autoloader.php';
Twig_Autoloader:: register();
$loader= new Twig_loader_Filesystem('./template');
$twig= new Twig_Environment($loader);
$template=$twig->loadTemplate('checkout.tpl');
$params=array(
'info'=>'Checkout Page');
$template->display($params);



?>