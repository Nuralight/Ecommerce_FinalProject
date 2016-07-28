<?php
session_start();
 $mycart=array();
 	$cart=array();
  $totalcost=0;
 


  if(isset($_GET['sid'])){

  if(isset($_SESSION['cart'])){
      $_SESSION['cart'][$_GET['sid']]--;
      if($_SESSION['cart'][$_GET['sid']]<=0){
        unset($_SESSION['cart'][$_GET['sid']]);
      }
   
  }
}

  if(isset($_SESSION['cart'])){
  	foreach($_SESSION['cart'] as $i=>$value){
  		if(isset($_SESSION['cart'][$i])){
  			include_once('myshop.php');
  			$obj=new myshop();
  			$obj->display_list($i);
  			$myjewellery=$obj->fetch();
  		 
  			$cart['image']=$myjewellery["image"];
  			$cart['jewellerybrand']=$myjewellery["jewellerybrand"];
  			$cart['id']=$_SESSION['cart'][$i];
  			$cart['price']=$myjewellery["price"];
  			$cart['sid']=$myjewellery['jewelleryid'];
  			$totalcost+=$_SESSION['cart'][$i]*$myjewellery["price"];
        // if($_SESSION['id']<=0){
        //unset($_)
      


  		}
       		$mycart[]=$cart;

  	}
  }
  require_once  './Twig/Autoloader.php';
Twig_Autoloader:: register();
$loader= new Twig_loader_Filesystem('./template');
$twig= new Twig_Environment($loader);
$template=$twig->loadTemplate('cart.tpl');
$param=array(
	'cart'=> 'Cart', 'mycart'=>$mycart , 'totalcost'=>$totalcost
);
$template->display($param); 


?>