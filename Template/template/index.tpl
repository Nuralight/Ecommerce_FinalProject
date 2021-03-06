<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>JessicaWhite | professional fashion photography</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

<link href="css/prettyPhoto.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" id="camera-css"  href="css/camera.css" type="text/css" media="all">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/theme.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/skins/tango/skin.css" />
<link href="css/bootstrap-responsive.css" rel="stylesheet">
<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->    
</head>
<body>
	<!--header-->

    {% block HEADER %}

    <div class="header">
    	<div class="wrap">
        	<div class="navbar navbar_ clearfix">
            	<div class="container">
                    <div class="row">
                        <div class="span4">
                        	<div class="logo"><a href=""><img src="img/logo.png" alt="" /></a></div>                        
                        </div>
                        <div class="menu_wrap">
                        	
                                <ul class="nav sf-menu">
                                    <li>
                                    <div class="fright">
                                    <form action="search.php?nm="name"" method="get">
                                      <input type="text" name="name" value="">
                                  <input type="submit" value="search " />
                                       
                                    </form>
                                </div>
                            </li>

                                      <li class="sub-menu"><a href="javascript:{}">Myaccount</a>
                                          <ul>
                                              <li><a href=""><span>-</span>Log in</a></li>
                                              <li><a href=""><span>-</span>New customer</a></li>
                                                                                      
                                          </ul> 
                                         <li><a href="admin_login.php">Admin Login</a></li>
                                </ul>
                        
                        </div>
                            <div class="clear"></div>
                            <nav id="main_menu">
                                <div class="menu_wrap">
                                    <ul class="nav sf-menu">
                                      <li class="current"><a href="homepage.php">Home</a></li>
                                      <li><a href="about.html">About</a></li>
                                      <li class="sub-menu"><a href="javascript:{}">Category</a>
                                          <ul>
                                              <li><a href="portfolio1.php"><span>-</span>Necklace</a></li>
                                              <li><a href="portfolio2.php"><span>-</span>Bracelete</a></li>
                                              <li><a href="portfolio3.php"><span>-</span>Rings</a></li>
                                              <li><a href="portfolio4.php"><span>-</span>Earings</a></li>                                          
                                          </ul>                                          
                                      </li>
                                      <li class="sub-menu"><a href="portfolio.php">Portfolio</a>
                                    </li>                                 
                                       
                                      <li><a href="cart.php"><span>{{numitems}}</span> Cart </a></li>
                                    </ul>
                                </div>
                             </nav>                            
                        </div>
                    </div>                
                </div>
             </div>
        </div>    
    </div>
    {% endblock %}
    <!--//header-->    
     
    <!--page_container-->
    {% block BODY %}

    <div class="page_container">
        <!--slider-->
        <div id="main_slider">
            <div class="camera_wrap" id="camera_wrap_1">
                <div data-src="img/slider/slide-1.jpg"></div>
                <div data-src="img/slider/slide-2.jpg"></div>
                <div data-src="img/slider/slide-3.jpg"></div>                                        
            </div><!-- #camera_wrap_1 -->
            <div class="clear"></div>	
        </div>        
        <!--//slider-->
                       
        <!--planning-->
        <div class="wrap planning">
            <div class="container">
                <div class="row">
                    <div class="span3">
                         <a href="portfolio1.php">
                              <img src="img/featured_works/n3.jpg" alt="" />  
                                <span class="link_title">Necklace</span>
                        </a>
                                           </div>
                    <div class="span3">
                        <a href="portfolio2.php">
                        	  <img src="img/featured_works/banner2.jpg" alt="" />  
                                <span class="link_title">Bracelete</span>
                        </a>
                    </div>
                        <div class="span3">
                                  
                          <a href="portfolio3.php">
                           <img src="img/featured_works/1.jpg" alt="" />  
                                <span class="link_title">Rings</span>

                                      </a>
    
                        
                    </div>
                    <div class="span3">
                        <a href="portfolio4.php">
                              <img src="img/earrings/11.jpg" alt="" />  
                                <span class="link_title">Earrings</span>
                        </a>
                    </div>                           	
                </div>
            </div>
        </div>
        <!--//planning-->
        
        <!--Welcome-->
        <div class="wrap block">
            <div class="container welcome_block">
            	<div class="welcome_line welcome_t"></div>
                Designer Jewellery Brands
            	<span>Browse  through your choice </span>
                <div class="welcome_line welcome_b"></div>
            </div>
        </div>
        <!--//Welcome-->         
        
        <!--featured works-->
        <div class="wrap block carousel_block">
            <div class="container">
            	<h2 class="upper">{{aName}}</h2>
            	<div class="row">
                    <div class="span12">
                        <ul id="mycarousel" class="jcarousel-skin-tango">
                            <li>
                            	<div class="hover_img">
                                	<a href="img/featured_works/n2.jpg" rel="prettyPhoto[portfolio1]"><img src="img/featured_works/n2.jpg" alt="" /><span class="portfolio_zoom1"></span></a>                                    
                                </div>
                            </li>
                            <li>
                            	<div class="hover_img">
                                	<a href="img/featured_works/banner2.jpg" rel="prettyPhoto[portfolio1]"><img src="img/featured_works/banner2.jpg" alt="" /><span class="portfolio_zoom1"></span></a>                                    
                                </div>
                            </li>
                            <li>
                                <div class="hover_img">
                                	<a href="img/featured_works/3.jpg" rel="prettyPhoto[portfolio1]"><img src="img/featured_works/3.jpg" alt="" /><span class="portfolio_zoom1"></span></a>                                    
                                </div>
                            </li> 
                            <li>
                                <div class="hover_img">
                                	<a href="img/featured_works/4.jpg" rel="prettyPhoto[portfolio1]"><img src="img/featured_works/4.jpg" alt="" /><span class="portfolio_zoom1"></span></a>                                    
                                </div>
                            </li>
                            <li>
                            	<div class="hover_img">
                                	<a href="img/featured_works/1.jpg" rel="prettyPhoto[portfolio1]"><img src="img/featured_works/1.jpg" alt="" /><span class="portfolio_zoom1"></span></a>                                    
                                </div>
                            </li>
                            <li>
                            	<div class="hover_img">
                                	<a href="img/featured_works/5.jpg" rel="prettyPhoto[portfolio1]"><img src="img/featured_works/5.jpg" alt="" /><span class="portfolio_zoom1"></span></a>                                    
                                </div>
                            </li>                                                       
                        </ul>                         
                    </div>                
                </div>                
            </div>
        </div>        
        <!--//featured works-->
        <!--latest posts-->
        <div class="wrap block carousel_block">
            <div class="container">
            	<h2 class="upper">latest posts</h2>
            	<div class="row">
                    <div class="span12">
                        <ul id="mycarousel2" class="jcarousel-skin-tango">
                            <li>
                            	<div class="post_carousel">
                                	<img src="img/home_blog/banner1.jpg" alt="" />
                                	<div class="title_t"><a href="#">ipsum dolor ac egestas mas</a></div>
                                    <div class="post_meta">
                                		Posted by <a href="#">John Doe</a>  /  15 apr  / In <a href="#">Vacation</a>
                                    </div>
                                    Ut nisl turpis, tristique tincidunt cursus sed, aliquet nec odio. Integer ornare tincidunt neque a ristiquet phasellus mollis tortor. <a href="#" class="arrow_link">Read more...</a>
                                </div>	
                            </li>
                            <li>
                            	<div class="post_carousel">
                                	<img src="img/home_blog/banner2.jpg" alt="" />
                                	<div class="title_t"><a href="#">vestibulum egestas tortor</a></div>
                                    <div class="post_meta">
                                		Posted by <a href="#">John Doe</a>  /  15 apr  / In <a href="#">Vacation</a>
                                    </div>
                                    Ut nisl turpis, tristique tincidunt cursus sed, aliquet nec odio. Integer ornare tincidunt neque a ristiquet phasellus mollis tortor. <a href="#" class="arrow_link">Read more...</a>
                                </div>	
                            </li>
                            <li>
                            	<div class="post_carousel">
                                	<img src="img/home_blog/banner3.jpg" alt="" />
                                	<div class="title_t"><a href="#">Quisque sodales dolor</a></div>
                                    <div class="post_meta">
                                		Posted by <a href="#">John Doe</a>  /  15 apr  / In <a href="#">Vacation</a>
                                    </div>
                                    Ut nisl turpis, tristique tincidunt cursus sed, aliquet nec odio. Integer ornare tincidunt neque a ristiquet phasellus mollis tortor. <a href="#" class="arrow_link">Read more...</a>
                                </div>	
                            </li>
                            <li>
                            	<div class="post_carousel">
                                	<img src="img/home_blog/banner4.jpg" alt="" />
                                	<div class="title_t"><a href="#">ipsum dolor ac egestas mas</a></div>
                                    <div class="post_meta">
                                		Posted by <a href="#">John Doe</a>  /  15 apr  / In <a href="#">Vacation</a>
                                    </div>
                                    Ut nisl turpis, tristique tincidunt cursus sed, aliquet nec odio. Integer ornare tincidunt neque a ristiquet phasellus mollis tortor. <a href="#" class="arrow_link">Read more...</a>
                                </div>	
                            </li> 
                            <li>
                            	<div class="post_carousel">
                                	<img src="img/home_blog/banner1.jpg" alt="" />
                                	<div class="title_t"><a href="#">Tristique cursus tincidunt</a></div>
                                    <div class="post_meta">
                                		Posted by <a href="#">John Doe</a>  /  15 apr  / In <a href="#">Vacation</a>
                                    </div>
                                    Ut nisl turpis, tristique tincidunt cursus sed, aliquet nec odio. Integer ornare tincidunt neque a ristiquet phasellus mollis tortor. <a href="#" class="arrow_link">Read more...</a>
                                </div>	
                            </li>
                            <li>
                            	<div class="post_carousel">
                                	<img src="img/home_blog/banner2.jpg" alt="" />
                                	<div class="title_t"><a href="#">ipsum dolor ac egestas mas</a></div>
                                    <div class="post_meta">
                                		Posted by <a href="#">John Doe</a>  /  15 apr  / In <a href="#">Vacation</a>
                                    </div>
                                    Ut nisl turpis, tristique tincidunt cursus sed, aliquet nec odio. Integer ornare tincidunt neque a ristiquet phasellus mollis tortor. <a href="#" class="arrow_link">Read more...</a>
                                </div>	
                            </li>                                                                                   
                        </ul>                        
                    </div>                
                </div>                
            </div>
        </div>        
        <!--//latest posts--> 
    </div>
    {% endblock %}
    <!--//page_container-->
    
    <!--footer-->
    {% block FOOTER %}
    <div id="footer">
    	<div class="wrap">
    		<div class="container">
            	<div class="row">
                	<div class="span3">
                    	<h2 class="title">Latest tweets</h2>
                        <div class="tweet_block"></div>                       
                    </div>
                    <div class="span3">
                    	<h2 class="title">Get in touch!</h2>
                        <form action="#" method="post">
                        	<input class="span3" type="text" name="name" id="name" value="Name" onFocus="if (this.value == 'Name') this.value = '';" onBlur="if (this.value == '') this.value = 'Name';" />
                            <input class="span3" type="text" name="email" id="email" value="Email" onFocus="if (this.value == 'Email') this.value = '';" onBlur="if (this.value == '') this.value = 'Email';" />
                            <textarea name="message" id="message" class="span3" onFocus="if (this.value == 'Message') this.value = '';" onBlur="if (this.value == '') this.value = 'Message';" >Message</textarea>
                            <div class="clear"></div>
                            <input type="reset" class="btn dark_btn" value="Clear form" />
                            <input type="submit" class="btn send_btn" value="Send!" />
                            <div class="clear"></div>
                        </form>
                    </div> 
                    <div class="span3">
                    	<h2 class="title">Testimonials</h2>
                        <ul>
                        	<li>
                            	<span class="testimonials_arrow"></span>Orci nisi, luctus vitae imperdiet a, iquam vel urna. Pellentesque tincidunt laoreet est, in tristique sapien consequat a purus at ullamcorper pulvinar, massa libero magna.
                            	<div class="clear"></div>
                                <div class="author">Anna Smith, Company inc.</div>
                            </li>
                            <li>
                            	<span class="testimonials_arrow"></span>Luctus vitae imperdiet a, iquamorci nisi lorem. Pellentesque tincidunt laoreet est, in tristique sapien consequat a purus at ullam pulvinar, massa libero consequat egestas mas.
                            	<div class="clear"></div>
                                <div class="author">John Doe, Company inc.</div>
                            </li>
                        </ul>                     
                    </div>
                    <div class="span3">
                    	<h2 class="title">flickr photostream</h2>
                        <div class="flickrs">
                            <div class="FlickrImages">
                                <ul></ul>
                                <div class="clear"></div>
                            </div>
                        </div> 
                    </div>         	
            	</div>
        	</div>            
        </div>
        
        <div class="footer_bottom">
            <div class="wrap">
            	<div class="container">
                	<div class="row">
                		<div class="span5">
                            <a href="disclaimer.php"> Disclaimer</a>
                        	<div class="foot_logo"><a href="index.html"><img src="img/foot_logo.png" alt="" /></a></div>    
                        	<div class="copyright">&copy; 2020 Jessica White. Professional Fashion Photography. All Rights Reserved.</div>                        
                        </div>
                        <div class="span7">
                        	<div class="foot_right_block">
                            	<div class="fright">
                                	<form action="#" method="post">
                                        <input class="inp_search" name="name" type="text" value="Search the Site" onfocus="if (this.value == 'Search the Site') this.value = '';" onblur="if (this.value == '') this.value = 'Search the Site';" />                                        
                                    </form>
                                </div>
                                <div class="follow_us">
                                	<ul>
                                        <li><a rel="tooltip" href="#" title="Facebook" class="facebook">Facebook</a></li>
                                        <li><a rel="tooltip" href="#" title="Twitter" class="twitter">Twitter</a></li>
                                        <li><a rel="tooltip" href="#" title="Tumbrl" class="tumbrl">Tumbrl</a></li>
                                        <li><a rel="tooltip" href="#" title="Vimeo" class="vimeo">Vimeo</a></li>
                                        <li><a rel="tooltip" href="#" title="Delicious" class="delicious">Delicious</a></li>
                                    </ul>
                                </div>
                                <div class="clear"></div>
                            
                            	<div class="clear"></div>
                            	<div class="foot_menu">
                            		<ul>
                                        <li><a href="index.html" class="current">Home</a></li>
                                        <li><a href="about.html">About</a></li>
                                        <li><a href="scaffolding.html">features</a></li>
                                        <li><a href="portfolio_2columns.html">Portfolio</a></li>
                                        <li><a href="blog.html">Blog</a></li>
                                        <li><a href="contacts.html">Contacts</a></li>
                                    </ul>
                            	</div>
                            </div>                            
                        </div>
                    </div>	
                </div>
            </div>
        </div>
    </div>
    {% endblock %}
    <!--//footer-->    

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="js/jquery.mobile.customized.min.js"></script>
    <script type="text/javascript" src="js/camera.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/superfish.js"></script>
    <script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="js/jquery.jcarousel.js"></script>
    <script type="text/javascript" src="js/jquery.tweet.js"></script>
    <script type="text/javascript" src="js/myscript.js"></script>
    <script type="text/javascript">
		$(document).ready(function(){	
			//Slider
			$('#camera_wrap_1').camera();
			
			//Featured works & latest posts
			$('#mycarousel, #mycarousel2, #newscarousel').jcarousel();													
		});		
	</script>
</body>
</html>

