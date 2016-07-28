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
                <p><b>Customer Name:</b> {{fname}} {{lname}}</p>
                <p><b>Address:</b> {{address}}</p>
                <p><b>Telephone:</b>{{tel}}</p>
                <h1>Items Purchased</h1>
                <table class="table">

                            <thead>
                                <tr><th> Jewellery </th><th>Brand</th><th>Number of Shoes Added</th><th>Price</th>
                                </thead>
                                {% for y in  mycart %}
                                <tbody>
                                    <tr><td><img src="{{y.image}}" alt="" /></td><td>{{y.jewellerybrand}}</td><td><a href="cart.php?sid={{y.sid}}">{{y.id}}</a></td><td>${{y.price}}</td></tr></tbody> 

                                {% endfor %}
                                 <tr><td> Total cost</td><td></td><td></td><td>${{totalcost}}</td></tr>
                        </table>
                        <div class="btn_form">
                            
                            <form action="checkout.php?func='name'" method="get">
                                 <div class="form-group">
                                <input type="submit"  name="ck" class="btn btn-default" value="Confirm Checkout"/>
                            </div>
                                
                            </form>
                        
                        </div>
            </div>
        </div>
         {%endblock%}
