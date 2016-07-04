                    (function(window){	
					var pr ={};
					    var pro = [];
						var index=0;
						var products = function(id,name,price,image){
							this.id = id;
							this.name = name;
							this.price = price;
							this.image = image;
						}
							pr.initProduct=function (n,index,image){
							for(var i=index; i<n+index; i++){
								pro.push(new products(i,"Products For Sell"+i, "100", image+i+".jpg"));
							}
							displayProduct(pro);
						}	
						function displayProduct(pro){
							var html = document.getElementById("product");
							var img = "";
							for(var i=0; i<pro.length; i++){
								 img +='<div class="col-md-3 m-wthree">'+
										 "<div class='col-m'>"+								
										"<a href='#' data-toggle='modal' data-target='#myModal1' class='offer-img'>"+
										"<img src='images/of.png' class='img-responsive'>"+
										"<div class='offer'><p><span>Offer</span></p></div></a>"+
										"<div class='mid-1'>"+
										"<div class='women'>"+
										"<h6><a href='single.html'>Moong</a>(1 kg)</h6></div>"+							
										"<div class='mid-2'>"+
										"<p ><label>$2.00</label><em class='item_price'>$1.50</em></p>"+
										"<div class='block'>"+
										"<div class='starbox small ghosting'> </div></div>"+
										"<div class='clearfix'></div>";
										"<div class='add'>"+
										"<button class='btn btn-danger my-cart-btn my-cart-b' data-id='1' data-name='Moong' data-summary='summary 1' data-price='1.50' data-quantity='1' data-image='images/of.png'>Add to Favorite</button>"+
										"</div></div></div></div>";			
							}
							html.innerHTML = img;
						}
						 pr.addProToday = function(n,index,image,t){
							for(var j=index; j<n+index; j++){
								pro.push(new products(j,"Products For Sell"+j, "100", image+j+".jpg"));
							}
							var proToday=document.getElementById("proToday"+t);
							var st= "";
							for(var i=0; i<pro.length; i++){
								 st += "<div class='owl-item' id='rate'>"+
										"<div class='product product-sm owl-item-slide'>"+
										"<div class='product-img-wrap'>"+
										"<img class='product-img' src=''images/of.png' alt='Image Alternative text' title='Image Title' /></div>"+
										"<a class='product-caption-title product-link' href='#'></a>"+
										"<div class='product-caption' >"+
										"<ul class='product-caption-rating'>"+
										"<li class='rated'><i class='fa fa-star'></i> </li>"+
										"<li class='rated'><i class='fa fa-star'></i></li>"+
										"<li class='rated'><i class='fa fa-star'></i> </li>"+
										"<li class='rated'><i class='fa fa-star'></i></li>"+
										"<li><i class='fa fa-star'></i></li> </ul>"+
										"<h5 class='product-caption-title'>"+pro[i].name+"</h5>"+
										"<div class='product-caption-price'><span class='product-caption-price-old'></span><span class='product-caption-price-new'>"+pro[i].price+"</span></div></div></div></div>";
												
							}
							proToday.innerHTML = st;
							
						}		
					   window.pr =pr;
					})(window);