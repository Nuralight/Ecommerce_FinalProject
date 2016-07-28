<?php
require('fpdf.php');
$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial','',12);
session_start();


 $mycart=array();
  $totalcost=0;

   if(isset($_SESSION['cart'])){
  	foreach($_SESSION['cart'] as $i=>$value){
  		if(isset($_SESSION['cart'][$i])){
  			include_once('myshop.php');
  			$obj=new myshop();
  			$obj->display_list($i);
  			$myjewellery=$obj->fetch();
  			$cart['jewellerybrand']=$myjewellery["jewellerybrand"];
  			$cart['id']=$_SESSION['cart'][$i];
  			$cart['price']=$myjewellery["price"];
  			$totalcost+=$_SESSION['cart'][$i]*$myjewellery["price"];
		}
  		$mycart[]=$cart;

  	}
  }
  $header=array("Jewellerybrand","Number Purchase","Price");
foreach($header as $col)
$pdf->Cell(40,7,$col,1); $pdf->Ln();
foreach($mycart as $row)
{
foreach($row as $col)
$pdf->Cell(40,6,$col,1); $pdf->Ln();
} 

$pdf->Cell(20,6,"Total Cost:",0,0); $pdf->Ln();
$pdf->Cell(20,6,'$'.$totalcost,0,0);
//echo'</p><a href=""> Continue Shopping<a></p>';
$pdf->Output();

 ?>