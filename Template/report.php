<?php
session_start();
if(!isset($_SESSION['username']))
 header('Location:homepage.php');

include_once("myshop.php");
$obj=new myshop();
$row=$obj->display_orders();
$data=array();
$totalcost=0;

while($row=$obj->fetch()){
	$data[]=$row;
$totalcost+=$row["quantity_purchased"]*$row["total_price"];
}

require_once  './Twig/Autoloader.php';
Twig_Autoloader:: register();
$loader= new Twig_loader_Filesystem('./template');
$twig= new Twig_Environment($loader);
$template=$twig->loadTemplate('report.tpl');
$params=array(
'report'=>'Order Report', 'values'=>$data,'totalcost'=>$totalcost);
$template->display($params);



?>