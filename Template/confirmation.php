<?php
session_start();
include_once("custom_error_handler.php");

//if(isset($_GET['fnm'])){
  //header("location:reload.php?id=4");
//}
//$con=mysqli_connect("localhost","root","","jewellery_shop");
if (mysqli_connect_errno()) {
  $message="Failed to connect to MySQL: " . mysqli_connect_error();
  //error_log($message,3,"error_logs.txt");
 trigger_error("A custom error has been triggered");


}
function mysql_entities_fix_string($string)
 {
return htmlentities(mysql_fix_string($string));
 }

 function mysql_fix_string($string)
 {
if (get_magic_quotes_gpc()) $string = stripslashes($string);
 return mysql_real_escape_string($string); 
}
  $ck_fname="/^[A-Za-z ]{3,20}$/";
  $ck_lname="/^[A-Za-z ]{3,20}$/";
  $ck_tel="/^([0-9]{2,3}[ ]*)?[0-9]{4}[ ]*[0-9]{4}$/";
  $ck_shipping="/^[A-Za-z0-9 ]{3,20}$/";
  $ck_email="/^[^0-9][A-z0-9_]+([.][A-z0-9_]+)*[@][A-z0-9_]+([.][A-z0-9_]+)*[.][A-z]{2,4}$/";


$fname="";
$lname="";
$tel="";
$shad="";
$email="";
 $mycart=array();
 	$cart=array();
  $totalcost=0;

if(isset($_GET['fnm'])){
  $fnm=mysql_entities_fix_string($_GET['fnm']);
	$fname= mysql_fix_string($fnm);
  if (strcmp($ck_fname,$fname)!=0){
    echo "invalid name";
  }
	$_SESSION['fnm']=$fname;
}
//echo $_GET['fnm'];
if(isset($_GET['lnm'])){
  $lnm=mysql_entities_fix_string($_GET['lnm']);
	$lname=mysql_fix_string($lnm);
  if (strcmp($ck_lname,$lname)!=0){
    echo "invalid name";
  }
	$_SESSION['lnm']=$lname;
}
if(isset($_GET['tel'])){
  $t=mysql_entities_fix_string($_GET['tel']);
	$tel=mysql_fix_string($t);
  if ($ck_tel!=$tel){
    echo "invalid number";
  }
	$_SESSION['tel']=$tel;
}
if(isset($_GET['shad'])){
  $sh=mysql_entities_fix_string($_GET['shad']);
	$shad=mysql_fix_string($sh);
  if (strcmp($ck_shipping,$shad)!=0){
    echo "invalid address";
  }
	$_SESSION['shad']=$shad;
}
if(isset($_GET['email'])){
  $em=mysql_entities_fix_string($_GET['email']);
	$email=mysql_fix_string($em);
  if (strcmp($ck_email,$email)!=0){
    echo "invalid email";
  }
	$_SESSION['email']=$email;
}

  if(isset($_GET['sid'])){

  if(isset($_SESSION['cart'])){
      $_SESSION['cart'][$_GET['sid']]--;
   
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

  		}
  		$mycart[]=$cart;

  	}
  }
include_once("myshop.php");
$obj= new myshop();
 if($obj->customer_info($fname,$lname,$tel,$shad,$email)){
              //echo'{" customer info successfully added"}';
         }
         else{
              $message="customer  info not added";
              //error_log($message,3,"error_logs.txt");
              trigger_error("A custom error has been triggered");
         }


require_once  './Twig/Autoloader.php';
Twig_Autoloader:: register();
$loader= new Twig_loader_Filesystem('./template');
$twig= new Twig_Environment($loader);
$template=$twig->loadTemplate('confirmation.tpl');
$params=array(
'info'=>'Confirmation Page', 'mycart'=>$mycart , 'totalcost'=>$totalcost, 'fname'=>$fname,
'lname'=>$lname, 'tel'=>$tel, 'address'=>$shad);
$template->display($params);


?>