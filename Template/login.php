<?php

session_start();
if(!isset($_REQUEST['cmd'])){
	echo '{"result":0,message:"unknown command"}';
	exit();
}
$cmd=$_REQUEST['cmd'];
switch($cmd)
{
case 1:
 admin_login();
 break;
  default:
  echo '{"result";0,message:"unknown command"}';
  break;
}
function admin_login(){
        include ("myshop.php");
        $obj=new myshop();
        $username=$_GET['username'];
        $password=$_GET['password'];
        $obj->admin_login ($username, $password);
        $row=$obj->fetch();
        if($row){
            
            $_SESSION['username']=$username;
            $_SESSION['password']=$password;
            echo '{"result": 1, "user": [';
            while($row){
                echo json_encode($row);
                $row =$obj->fetch();
                 if($row){
                    echo ',';
                }
            }
                 echo"]}";
            return;
        }
        echo'{"resutl": 0, "message":"Invalid username or password! please try again"}';
        return;
  }
  ?>