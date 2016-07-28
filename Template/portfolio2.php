<?php
session_start();

if(!isset($_SESSION['cart'])){
	$_SESSION['cart']=array();
}

 if(isset($_GET['id'])){
 
 
 if(isset($_SESSION['cart'])){

  if(array_key_exists($_GET['id'],$_SESSION['cart'])){
   
    $_SESSION['cart'][$_GET['id']]++;
  }

  else{
    $_SESSION['cart'][$_GET['id']]=1;
  }
}

}

include_once("myshop.php");
$obj= new myshop();
$row=$obj->bracelete_list();
$data=array();
while($row=$obj->fetch()){
	$data[]=$row;
}


require_once  './Twig/Autoloader.php';
Twig_Autoloader:: register();
$loader= new Twig_loader_Filesystem('./template');
$twig= new Twig_Environment($loader);
$template=$twig->loadTemplate('portfolio2.tpl');
$params=array(
'Name'=>'Latest Brands of Braceletes','values'=>$data);
$template->display($params);


?>
