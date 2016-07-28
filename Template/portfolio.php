<?php 
session_start();

$mycart=array();
$totalcost=0;

//print_r($_SESSION);
if(isset($_GET['func'])){

  
   if(isset($_SESSION['cart'])){
    $_SESSION['cart'] = array();
   
 }
}

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

if (isset($_GET['pageno'])) {
   $pageno = $_GET['pageno'];
} else {
   $pageno = 1;
}
$con=mysql_connect('localhost', 'root', '');
mysql_select_db("jewellery_shop", $con);

$query = "SELECT count(*) FROM jewellery";
$result = mysql_query($query, $con) or die("error");//trigger_error("SQL", E_USER_ERROR);
$query_data = mysql_fetch_row($result);
$numrows = $query_data[0];
$rows_per_page = 10;
$lastpage  = ceil ($numrows/$rows_per_page);

$pageno = (int)$pageno;
if ($pageno > $lastpage) {
   $pageno = $lastpage;
} // if
if ($pageno < 1) {
   $pageno = 1;
} //

$limit = 'LIMIT ' .($pageno - 1) * $rows_per_page .',' .$rows_per_page;
$query="select jewellery.jewelleryid, jewellery.jewellerybrand,jewellery_type.typename,jewellery_type.image,jewellery.price from jewellery left join 
jewellery_type on jewellery.jewelleryid = jewellery_type.jewelleryid $limit";
 $result = mysql_query($query, $con) or trigger_error("SQL", E_USER_ERROR);
 $data =array();
  $count=0;
 while($row=mysql_fetch_array($result)){
	$data[]=$row;
	$count++;
}



require_once  './Twig/Autoloader.php';
Twig_Autoloader:: register();
$loader= new Twig_loader_Filesystem('./template');
$twig= new Twig_Environment($loader);
$template=$twig->loadTemplate('portfolio.tpl');
$params=array(
'Name'=>'Jewellery in store','values'=>$data,'pageno'=> $pageno,'lastpage'=>$lastpage);
$template->display($params);


?>