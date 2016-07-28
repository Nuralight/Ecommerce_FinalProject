{% extends "index.tpl" %}

{% block BODY %}
<div class="page_container">
    	<div class="breadcrumb">
        	<div class="wrap">
                <div class="container">
                    <h1>{{info}}</h1>
                </div>
            </div> 
        </div>
        <script>
        var ck_fname=/^[A-Za-z ]{3,20}$/;
        var ck_lname=/^[A-Za-z ]{3,20}$/;
        var ck_tel=/^([0-9]{2,3}[ ]*)?[0-9]{4}[ ]*[0-9]{4}$/;
        var ck_shipping=/^[A-Za-z0-9 ]{3,20}$/;
        var ck_email=/^[^0-9][A-z0-9_]+([.][A-z0-9_]+)*[@][A-z0-9_]+([.][A-z0-9_]+)*[.][A-z]{2,4}$/;

        function validate(){
        var fname=$("#fnm").val();
        var lname=$("#lnm").val();
        var tel=$("#tel").val();
        var shad=$("#shad").val();
        var email=$("#email").val();
        var errors="";

        if(!ck_fname.test(fname)){
            errors= "Invalid  firstname";
             alert(errors);
              //document.getElementById(fname).style.background ='#e35152';
              return false;

        }
          if(!ck_lname.test(lname)){
            errors="Invalid lastname";
             alert(errors);
              //document.getElementById(lname).style.background ='#e35152';
              return false;
        }
          if(!ck_tel.test(tel)){
            errors="Invalid telephone number";
             alert(errors);
              //document.getElementById('tel').style.background ='#e35152';
              return false;
        }
          if(!ck_shipping.test(shad)){
            errors="Invalid Shipping address";
             alert(errors);
             // document.getElementById('shad').style.background ='#e35152';
              return false
        }
          if(!ck_email.test(email)){
            errors="Invalid email address";
             alert(errors);
             //document.getElementById('email').style.background ='#e35152';
             return false;
                
        }
         

        }
      
       

        </script>
         <div class="wrap">
            <div class="container inner_content">
            	   <div class="container">

                    <form method="get" action="confirmation.php?fnm="fnm"&lnm="lnm"&tel="tel"&shad="shad"&email="email"" onsubmit= "return validate()"  >
                    <div class="form-group">
                
                        <input placeholder="firstname" class="form-control" type="text" id="fnm" name="fnm" tabindex="4" required="">
                
                </div>
                    <div class="form-group">
                    
                        <input placeholder="lastname" class="form-control" type="text" id="lnm" name="lnm" tabindex="4" required="">
                    
                </div>
                <div class="form-group">
                    
                        <input placeholder="telephone number" class="form-control"  id="tel"  name="tel"type="text" tabindex="4" required="">
                
                </div>
                 <div class="form-group">
                    
                        <input placeholder="shipping address" class="form-control" type="text" id="shad"  name="shad" tabindex="3" required="">
                    
                </div>
               

                <div class="form-group">
                    
                        <input placeholder="email" class="form-control" type="email" id="email" name="email" tabindex="3" required="">
                    
                </div>
                                    
                <div class="form-group">
                    <input type="submit" class="btn btn-default"value="Proceed to Check out">
                </div>
                
            </form>
            <!-- /Form -->
        </div>
    </div>
</div>
     {%endblock%}