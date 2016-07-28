{% extends "index.tpl" %}

{% block BODY %}
<div class="page_container">
    	<div class="breadcrumb">
        	<div class="wrap">
                <div class="container">
                    <h1>{{Name}}</h1>
                </div>
            </div> 
        </div>
         <div class="wrap">
            <div class="container inner_content">
             
                <div class="row">
                    <!-- portfolio_block -->
                     {% for x in values %}

                        	 
                        	<div class="span5">
                        	 		 
                           
                      
                            <div class="item_description">
                            	   <img src="{{x.image}}" alt="" />
                                <h6><a href="">{{x.jewellerybrand}}</a>${{x.price}}</h6>
                                <div id="options">
                                	<a href="" data-option-value=".category03" class="btn dark_btn">Add to Cart </a>
                                </div>
                            </div> 
                        
                        
                                                            
                        </div>
                        
                        <!-- <div class="clear"></div> -->
                    <!-- </div>   -->
                         {% endfor %} 
                    <!-- //portfolio_block -->   
                </div>
            </div>
        </div>
       
{%endblock%}