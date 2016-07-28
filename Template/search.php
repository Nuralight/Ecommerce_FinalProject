<?php
session_start();
$jewellery="";

if(isset($_GET['name'])){
	$jewellery=$_GET['name'];
}

include_once("myshop.php");
$obj= new myshop();
$row=$obj->search($jewellery);
$data=array();
while($row=$obj->fetch()){
	$data[]=$row;
}


require_once  './Twig/Autoloader.php';
Twig_Autoloader:: register();
$loader= new Twig_loader_Filesystem('./template');
$twig= new Twig_Environment($loader);
$template=$twig->loadTemplate('search.tpl');
$params=array(
'Name'=>'Jewellery in store','values'=>$data);
$template->display($params);


?>
