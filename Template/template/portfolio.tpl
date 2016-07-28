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
        {% if pageno== 1 %}
                    
                       <a href="#">First</a>
                        <a href="#">Previous</a>
                        {% else %}
                        <a href="?pageno=1">First</a>
                        <a href="?pageno={{pageno-1}}">Previous</a>
                        {% endif %}
                        {% if pageno== lastpage %}
                        <a href="#">Last</a>
                        <a href="#">Next</a>
                        {% else %}
                         <a href="?pageno={{lastpage}}">Last</a>
                        <a href="?pageno={{pageno+1}}">Next</a>
                        {% endif %}
      
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
                                	 <a href="?id={{x.jewelleryid}}" data-option-value=".category03" class="btn dark_btn">Add to Cart </a>
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