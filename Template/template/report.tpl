{% extends "index.tpl" %}

{% block BODY %}
<div class="page_container">
        <div class="breadcrumb">
            <div class="wrap">
                <div class="container">
                    <h1>{{report}}</h1>
                </div>
            </div> 
        </div>
         <div class="wrap">
            <div class="container inner_content">
                <table class="table">

                            <thead>
                                <tr><th> Purchased Brand </th><th>Item Type</th><th>Quantity Purchased </th><th> Total Price </th><th>Date & Time</th>
                                </thead>
                                {% for y in  values %}
                                <tbody>
                                    <tr><td>{{y.purchased_item}}</td><td>{{y.typename}}</td><td>{{y.quantity_purchased}}</td><td>${{y.total_price}}</td><td>{{y.date_time}}</td></tr></tbody> 

                                {% endfor %}
                                  <tr><td> Total cost</td><td></td><td></td><td>${{totalcost}}</td></tr>
                        </table>
                        <p><a href="order_report.php"> View as PDF </a>  <a href="homepage.php"> Log out </a></p>
                        






          </div>
        </div>
       
{%endblock%}