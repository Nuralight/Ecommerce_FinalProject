<?php
include_once("new_adb.php");

class myshop extends new_adb{
function display_list($id){
	$str_query="select jewellery.jewelleryid,jewellery.jewellerybrand,jewellery_type.typename,jewellery_type.image,jewellery.price from jewellery left join 
     jewellery_type on jewellery.jewelleryid = jewellery_type.jewelleryid where jewellery.jewelleryid=$id";
      return $this->query($str_query);
     //$stmt=preparequery($str_query);
     //$stmt->bind_param('i',$id);
     //return $this->$stmt;

}
function necklace_list(){
		$str_query="select jewellery.jewelleryid,jewellery.jewellerybrand,jewellery_type.typename,jewellery_type.image,jewellery.price from jewellery left join 
     jewellery_type on jewellery.jewelleryid = jewellery_type.jewelleryid where jewellery_type.typename='necklace'";
   return $this->query($str_query);
	}

	function bracelete_list(){
		$str_query="select jewellery.jewelleryid,jewellery.jewellerybrand,jewellery_type.typename,jewellery_type.image,jewellery.price from jewellery left join 
     jewellery_type on jewellery.jewelleryid = jewellery_type.jewelleryid where jewellery_type.typename='bracellete'";
   return $this->query($str_query);
	}
	function ring_list(){
		$str_query="select jewellery.jewelleryid,jewellery.jewellerybrand,jewellery_type.typename,jewellery_type.image,jewellery.price from jewellery left join 
     jewellery_type on jewellery.jewelleryid = jewellery_type.jewelleryid where jewellery_type.typename='ring'";
   return $this->query($str_query);
	}
	function earrings_list(){
		$str_query="select jewellery.jewelleryid,jewellery.jewellerybrand,jewellery_type.typename,jewellery_type.image,jewellery.price from jewellery left join 
     jewellery_type on jewellery.jewelleryid = jewellery_type.jewelleryid where jewellery_type.typename='earrings'";
   return $this->query($str_query);
	}

   function search($text){
   	$str_query="select jewellery.jewellerybrand,jewellery_type.typename,jewellery_type.image,jewellery.price from jewellery left join 
     jewellery_type on jewellery.jewelleryid = jewellery_type.jewelleryid where jewellery.jewellerybrand like '%$text%'";
      return $this->query($str_query);
    // $stmt=preparequery($str_query);
     // $stmt->bind_param('s',$text);
     //return $this->$stmt;

   }
    function customer_info($fname,$lname,$tel,$shad,$email){
    $str_query="insert into customers set firstname='$fname',lastname='$lname',telephone='$tel',shipping_address='$shad',email_address='$email'";
     echo"prepare";
    return $this-> query($str_query);

    //$stmt=preparequery($str_query);
    //$stmt->bind_param('ssiss',$fname,$lname,$tel,$shad,$email);
    //return $this->$stmt;

}
function orders($id,$item,$quantity,$total){
  $str_query="insert into orders set jewelleryid='$id',purchased_item='$item',quantity_purchased='$quantity',total_price='$total'";
   return $this-> query($str_query);
 // echo"prepare";
   // $stmt=preparequery($str_query);
     //$stmt->bind_param('isii',$id,$item,$quantity,$total);
      //return $this->$stmt;
   

}
function display_orders(){
  $str_query="select orders.purchased_item,jewellery_type.typename,orders.quantity_purchased,orders.total_price,orders.date_time from orders left join jewellery_type on orders.jewelleryid=jewellery_type.jewelleryid";
  return $this-> query($str_query);

}
 function admin_login($username,$password){
    $str_query="select * from admin_login where username='$username' and password='$password'";
    return $this->query($str_query);
    //$stmt=preparequery($str_query);
    // $stmt->bind_param('ss',$username,$password);
    // return $this->$stmt;
   }
}


?>