<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Shopping Mall Online Shopping </title>
	<link href="css/historyStyle.css" rel="stylesheet"  type="text/css" > 
	<%@ include file="header.jsp" %>
</head>
<body>
  	 <!-- Category Menu  -->
   	 <%@ include file="menu.jsp" %>
 <!--banner-->
<div class="banner-top">
	<div class="container">
		<h3 >History</h3>
		<div class="clearfix"> </div>
	</div>
</div>
<div class="container" style="height:700px;">
	<div class="row">
	  <div class="col-sm-3 profile"><img src="images/user.jpg" alt="profile" class="userImg"/>
	  		<div class="col-sm-8 pull-right"><h4>Moeung Theara</h4></div>
	  </div>
	  
	  <div class="col-sm-8">
	  	<table class="table">
		    <thead>
		      <tr>
		        <th>Firstname</th>
		        <th>Lastname</th>
		        
		      </tr>
		    </thead>
		    <tbody>
		      <tr>
		        <td>John</td>
		        <td>Doe</td>
		     
		      </tr>
		      <tr>
		        <td>Mary</td>
		        <td>Moe</td>
		      
		      </tr>
		     
		    </tbody>
  		</table>
	  </div>
	</div>
</div>
<!--footer-->
<div class="footer">
	<div class="container">
	
		<div class="col-md-3 footer-grid ">
			<h3>Menu សំខាន់ៗ</h3>
			<ul>
				<li><a href="index.html">ទំព័រដើម</a></li>
				<li><a href="kitchen.html">ហ្វេសសិន</a></li>
				<li><a href="care.html">សុខភាព និង សម្រស់</a></li>
				<li><a href="hold.html">អេឡិចត្រូនិច និង កំព្យូទ័រ</a></li>						 
				<li><a href="codes.html">ការកំសាន្ត</a></li> 
				<li><a href="contact.html">សម្ភារៈកីឡា</a></li>
				<li><a href="hold.html">សម្ភារៈក្មេង</a></li>						 
				<li><a href="codes.html">សម្ភារៈសំណង់</a></li> 
				<li><a href="contact.html">ផ្ទះ និង ដី</a></li>
				<li><a href="contact.html">អាហារ និង ភេសជ្ជៈ</a></li>
			</ul>
		</div>
		<div class="col-md-3 footer-grid ">
			<h3>ទំនាក់ទំនង</h3>
			<ul>
				<li><a href="contact.html">លេខទូរស័ព្ត:&emsp;098765432,&emsp;012347865</a></li>
				<li><a href="offer.html">អុីមេល:&emsp;moeungtheara12@gmail.com</a></li>
				<li><a href="offer.html">ទីតាំង:&emsp;225 Street , HRD Center.</a></li>
				<li>Socail Media:</li>
				<ul class="social-fo">
					<li><a href="#" class=" face"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
					<li><a href="#" class=" twi"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
					<li><a href="#" class=" pin"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
					<li><a href="#" class=" dri"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
				</ul>				
				 
			</ul>
		</div>
		<div class="col-md-3 footer-grid">
			<h3>គណនីរបស់អ្នក</h3>
			<ul>
				<li><li>
				<li><a href="wishlist.html">Wishlist</a></li>
				<li><a href="register.html">History</a></li>
				
			</ul>
		</div>
		<div class="col-md-3 footer-grid">
			<h3>គេហទំព័រ  លក់ទំនិញ</h3>
			<img src="images/khbuy.png" class="img-responsive footerimg" alt="">
			<img src="images/khmer24.gif" class="img-responsive footerimg" alt="">
			<br>
			<img src="images/kaymu.png" class="img-responsive footerimg" alt="">
		</div>
		
	</div>
</div>
<!-- //footer-->

<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function() {
		/*
			var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
			};
		*/								
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<!-- for bootstrap working -->
		<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<script type='text/javascript' src="js/jquery.mycart.js"></script>
  <script type="text/javascript">
  $(function () {

    var goToCartIcon = function($addTocartBtn){
      var $cartIcon = $(".my-cart-icon");
      var $image = $('<img width="30px" height="30px" src="' + $addTocartBtn.data("image") + '"/>').css({"position": "fixed", "z-index": "999"});
      $addTocartBtn.prepend($image);
      var position = $cartIcon.position();
      $image.animate({
        top: position.top,
        left: position.left
      }, 500 , "linear", function() {
        $image.remove();
      });
    }

    $('.my-cart-btn').myCart({
      classCartIcon: 'my-cart-icon',
      classCartBadge: 'my-cart-badge',
      affixCartIcon: true,
      checkoutCart: function(products) {
        $.each(products, function(){
          console.log(this);
        });
      },
      clickOnAddToCart: function($addTocart){
        goToCartIcon($addTocart);
      },
      getDiscountPrice: function(products) {
        var total = 0;
        $.each(products, function(){
          total += this.quantity * this.price;
        });
        return total * 1;
      }
    });

  });
  </script>


			
</body>
</html>