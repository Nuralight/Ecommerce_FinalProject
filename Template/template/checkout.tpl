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
        <div class="wrap">
            <div class="container inner_content">
            <div class="alert alert-success">
  <strong>Success!</strong> You have successfully Checkout.
</div>
<p><b> You will soon receive an email from us </b></p>

<p><a href="purchase.php"> View Purchase </a><a href="portfolio.php?func=1"> Continue Shopping<a></p> 


            </div>
        </div>
        {% endblock %}