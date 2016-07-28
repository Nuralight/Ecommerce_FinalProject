<?php
require('fpdf.php');
$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial','',12);

include_once("myshop.php");
$obj=new myshop();
$row=$obj->display_orders();
$data=array();

while($row=$obj->fetch()){
	$data[]=$row;
}

 $header=array("Purchased Brand","Item Type","Quantity Purchased","Total Price","Date & Time");
foreach($header as $col)
$pdf->Cell(40,7,$col,1); $pdf->Ln();
foreach($data as $row)
{
foreach($row as $col)
$pdf->Cell(40,6,$col,1); $pdf->Ln();
} 

//$pdf->Cell(20,6,"Total Cost:",0,0); $pdf->Ln();
//$pdf->Cell(20,6,'$'.$totalcost,0,0);
$pdf->Output();

 ?>