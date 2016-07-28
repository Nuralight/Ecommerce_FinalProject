<?php
session_start();
if(isset($_GET['id'])){
	header("location:confirmation.php");
}
if(isset($_GET['myid'])){
	header("location:checkout.php");
}
if(isset($_GET['pid'])){
	header("location:cart.php");
}


?>