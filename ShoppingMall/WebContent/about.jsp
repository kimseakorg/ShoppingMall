<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Shopping Mall Online Shopping </title>
	<%@ include file="header.jsp" %>
</head>
<body>
	<!-- Category Menu  -->
   		<%@ include file="menu.jsp" %>
   	<!-- end menu -->
    <!--banner-->
	<div class="banner-top">
		<div class="container">
			<h3 >About</h3>
			<div class="clearfix"> </div>
		</div>
	</div>
	
	<!-- faqs -->
		<div class="about-w3 ">
	
				
				<!--about-->
				<div class="container">
			<div  class="about">
		<div class="spec ">
					<h3>About</h3>
						<div class="ser-t">
							<b></b>
							<span><i></i></span>
							<b class="line"></b>
						</div>
				</div>
				
				<div class="col-md-4 about-right">
				<img class="img-responsive" src="images/hrd.png" alt="">
				</div>
				<div class="col-md-4 about-left">
					<p><h4>The Best Software Expert Training Center in Cambodia</h4>
						&emsp;&emsp;We provide the best opportunities for IT major students to become global SW experts with the highest quality training 
						programs. All courses are free of charge. Furthermore, we provide a bridge for graduated students to the global SW job
						 market. Please join our center for a bright future!
					 </p>
				</div>
				<div class="col-md-4 about-right">
				<img class="img-responsive" src="images/map.png" alt="">
				</div>
				
				<div class="clearfix"> </div>
			</div>
		</div>
		<!--//about-->
		
		<!--work-experience-->
		<div  class="work">
			<div class="container">
				<div class="spec spec-w3ls">
					<h3>WHAT OUR TRAINING INCLUDE: </h3>
						<div class="ser-t">
							<b></b>
							<span><i></i></span>
							<b class="line"></b>
						</div>
				</div>
				<div class="work-info"> 
					<div class="col-md-6 work-left"> 
						<div class=" work-w3 "> 
							<h5> Java Programming</h5>
							<p>Learn OOP Concept, J2SE (JDBC), J2EE (Servlet, JSP) and MVC pattern.</p>
						</div>
						<label></label>
					</div>
					<div class="col-md-6 work-right"> 
						<div class=" work-w31"> 
							<h5> Database Management</h5>
							<p>Learn database concept and perform several projects with popular DBMSs such as Oracle, PostgreSQL, and MySQL.</p>
						</div>
						<label></label>
					</div>
					<div class="clearfix"> </div>
				
				</div>
				<div class="work-info"> 
					<div class="col-md-6 work-left"> 
						<div class=" work-w3 "> 
							<h5>Web Design</h5>
							<p>Learn the latest design trend and perform web and mobile design project by using Photoshop and Illustrator. </p>
						</div>
						<label></label>
					</div>
					<div class="col-md-6 work-right"> 
						<div class=" work-w31"> 
							<h5>Web Development</h5>
							<p>Learn front-end web technologies of HTML, CSS, Java Script, jQuery, AJAX, and JSON.</p>
						</div>
						<label></label>
					</div>
					<div class="clearfix"> </div>
					<span> 2013</span>
				</div>
				<div class="work-info"> 
						
					<div class="work-info"> 
						<div class="col-md-6 work-left"> 
							<div class=" work-w3 "> 
								<h5>Mobile Development</h5>
								<p>Learn most popular mobile application development platform and perform mobile application projects.</p>
							</div>
							<label></label>
						</div>
						<div class="col-md-6 work-right"> 
							<div class=" work-w31"> 
								<h5> New Technology</h5>
								<p>There are other up-to-date SW technologies to learn.</p>
							</div>
							<label></label>
						</div>
						<div class="clearfix"> </div>
						<span> 2016</span>
						<span class="last"></span>
					</div>
			</div>
		</div>
		<!--//work-experience-->
	<!--advantages--> 
	<div class="container">
		<div class="advantages">
				<div class="col-md-6 advantages-left " style="border:1px soild black">
					<h3 style="text-align:left">OUR VISION </h3>
					<h5 style="color:black;"><span class="fa fa-chevron-circle-right" aria-hidden="true">To be the top 1 IT Tower in Cambodia</span></h5>
				</div>
				<div class="col-md-6 advantages-left about-agi">
					<h3 style="text-align:left">OUR MISSION </h3>
					<p style="color:black;"><span class="fa fa-chevron-circle-right" aria-hidden="true"></span>To provide high quality IT training, and job opportunity</p>
					<br><p style="color:black;"><span class="fa fa-chevron-circle-right" aria-hidden="true"></span>To develop SW technologies in Cambodia</p> 
				</div>
				<div class="clearfix"></div>
			</div>
			</div>
		<!--advantages--> 
	
		</div>
		<!-- // Terms of use -->
	
	<!--footer-->
		<%@ include file="footer.jsp" %>
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