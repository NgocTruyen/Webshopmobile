<?php
session_start();
include "config.php";

include ROOT."/include/function.php";

include "autoload.php";
$db= new Db();
$obj = new Dongdt();
$cart = new Cart();
?>

<!--A Design by thuhuong.fpt
Author: thuhuong.fpt

-->
<!DOCTYPE HTML>
<head>
<title> Smart Store </title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="themes/default/default.css" rel="stylesheet" type="text/css">
<link href="css/nivo-slider_style.css" rel="stylesheet" type="text/css">
<!--<link href="css/style_nivo.css" rel="stylesheet" type="text/css">-->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="css/menu_1.css" rel="stylesheet" type="text/css" />
<link href="css/font-awesome.css" rel="stylesheet"> 

<link href="css/style_login_second.css" rel='stylesheet' type='text/css' />

<link href="css/style_index.css" rel="stylesheet" type="text/css" />

<!--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>-->


<!--<link href='http://fonts.googleapis.com/css?family=Monda' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Doppio+One' rel='stylesheet' type='text/css'>-->
</head>
<body>
 <div class="container">
  <div class="wrap">
	<div class="header">
		<div class="header_top">
		
			<div class="logo">
				<a href="index.php"><img src="images/logo.png"  /></a>
			</div>
			  <div class="header_top_right">
			    <div class="search_box">
				    <form>
				    	<input type="text" value="Search for Products" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search for Products';}"><input type="submit" value="SEARCH">
				    </form>
			    </div>
			    <div class="shopping_cart">
					<div class="cart">
						<a href="giohang.php" title="View my shopping cart" rel="nofollow">
							<strong class="opencart"> </strong>
								<span class="cart_title">Giỏ hàng(<span id="cart_sumary"><?php echo  $cart->getNumItem();
								?></span>)</span>
							</a>
						</div>
			    </div>
				<?php
					if (!isset($_SESSION["loginfront"]))
					{
				?>
			   <div class="login">
				   <span><a href="login.php"><img src="images/login.png" alt="" title="login"/></a></span>
			   </div>
			  <a href="dangky.php"><button class="btn btn-default"><span class="glyphicon glyphicon-off"></span> Đăng ký</button></a><?php } 
			  else
			  {
			  ?>
			  <ul class="nav navbar-nav navbar-right">
			    <li class="dropdown">
	        		<a href="#" class="dropdown-toggle avatar" data-toggle="dropdown">
						<span>
							<?php  
                            echo ($_SESSION["loginfront"]["0"]["TenKH"]);
							?>
						</span><i class="fa fa-user"></i>
					</a>
	        		<ul class="dropdown-menu">
						
						<li class="dropdown-menu-header text-center">
							<strong>Cài đặt</strong>
						</li>
						<li class="m_2"><a href="#"><i class="fa fa-user"></i> Thông tin tài khoản</a></li>
						<li class="m_2"><a href="#"><i class="fa  fa-cog"></i> Đổi mật khẩu</a></li>
						<li class="m_2"><a href="logout.php"><i class="fa fa-lock"></i> Logout</a></li>	
	        		</ul>
	      		</li>
			</ul>
			<?php } ?>
	 		</div>
	 	</div>
	  </div>
  </div>
</div>
<div class="container">
	<ul class="ul_menu">
		<li><a href="dienthoai.php">ĐIỆN THOẠI</a>
			
		</li>
  		<li><a href="#">PHỤ KIỆN</a>
        	
        	
        </li>
  		<li><a href="#">THẺ,SIM</a></li>
   		<li><a href="#">MÁY ĐỔI TRẢ</a></li>
   		<li><a href="#">HÀNG CŨ</a></li>
 		<li><a href="#">KHUYẾN MÃI</a></li>
  		<li><a href="#">TRẢ GÓP</a></li>
	</ul>
</div>
 <div class="container">
	<div id="wrapper" style="margin-top: 10px">
		
	</div>
</div>	 
<div class="container">

</div>
<div class="container" style="margin-top: 20px">
	<div class="row">
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 line_left">
			<a href="index.php"><h2>ĐIỆN THOẠI ĐƯỢC QUAN TÂM</h2></a>
		</div>
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 line_right">
			<a href="#"><p>Xem tất cả</p></a>
		</div>
	</div>
</div>
<div class="container bg_content" style="margin-top: 35px">
	<div class="row content_1">
		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 content_img">
			<a href="SS_N8.php">
				<img src="images/content_1.jpg" >
				<h3>Samsung Galaxy Note 8</h3>
				<strong class="tien">22.490.000₫</strong>
				<div class="coupon">
					<span>Trả góp 100%</span>
				</div>
				<figure class="content_figure">
					<span class="slogan">Samsung Galaxy Note 8</span>
					<strong>5.490.000₫</strong>
					<div class="promotion">
						<span>  Cơ hội trúng xe SH150i (áp dụng Hà Nội và 1 số tỉnh miền Bắc)</span>
						<span> Nón Bảo hiểm khi mua Online</span>
					</div>
					<span>Màn hình: 6.3", Quad HD (2K)</span>
					<span>HĐH: Android 7.1</span>
					<span>CPU: Exynos 8895 8 nhân</span>
					<span>RAM: 3 GB, ROM: 32 GB</span>
					<span>Camera: 2 camera 12 MP, Selfie: 8 MP</span>
					<span>PIN: 3600mAh</span>
				</figure>
			</a>
		</div>
		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 content_img">
			<a href="oppo_a57.php">
				<img src="images/content_2.jpg" class="img-responsive">
				<h3 style="margin-top: 20px">OPPO F3 Lite (A57)</h3>
				<strong class="tien">5.490.000₫</strong>
				<figure class="content_figure">
					<span class="slogan">OPPO F3 Lite (A57)</span>
					<strong>5.490.000₫</strong>
					<span>Màn hình: 5.2", HD</span>
					<span>HĐH: Android 6.0 (Marshmallow)</span>
					<span>CPU: Snapdragon 435 8 nhân</span>
					<span>RAM: 3 GB, ROM: 32 GB</span>
					<span>Camera: 13 MP, Selfie: 16 MP</span>
					<span>PIN: 2900 mAh, SIM: 2 SIM</span>
				</figure>
			</a>
		</div>
		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 content_img">
			<a href="oppo_f1_plus.php">
				<img src="images/content_3.png" class="img-responsive">
				<h3 style="margin-top: 20px">Oppo F1 Plus</h3>
				<strong class="tien">6.490.000 ₫</strong>
				
				<figure class="content_figure">
					<span class="slogan">Oppo F1 Plus</span>
					<strong6.490.000 ₫</strong>
					<div class="promotion">
						<span>   Cơ hội trúng tiền mặt 50 triệu hoặc Tivi Panasonic 55.</span>
					</div>	
					<span>Màn hình:  5.5 inch (1920 x 1080 pixels)</span>
					<span>HĐH: Android 5.1 (Marshmallow)</span>
					<span>CPU: MediaTek MT6755, 8 Nhân, Octa-core 2.0 GHz</span>
					<span>RAM: 4 GB</span>
					<span>Camera: Chính: 13.0 MP, Phụ: 16.0 MP</span>
					<span>PIN: Li-ion 2850 mAh</span>
				</figure>
			</a>
		</div>
	</div>
</div>
<div class="container bg_content margin_top_50">
	<div class="row content_1">
		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 content_img">
			<a href="IP8.php">
				<img src="images/content_4.png" >
				<h3>iPhone 8 Plus 64GB </h3>
				<strong class="tien">23.990.000₫</strong>
				<div class="coupon">
					<span>Trả góp 0%</span>
				</div>
				<figure class="content_figure">
					<span class="slogan">iPhone 8 Plus 64GB </span>
					<strong>23.990.000₫</strong>
					<div class="promotion">
						<span>   Giảm ngay 1.000.000đ khi thanh toán trực tuyến</span>
					</div>
					<span>Màn hình: 5.5", Retina HD</span>
					<span>HĐH: iOS 11</span>
					<span>CPU: Apple A11 Bionic 6 nhân</span>
					<span>RAM: 3 GB, ROM: 64 GB</span>
					<span>Camera: 2 camera 12 MP, Selfie: 7 MP</span>
					<span>PIN: 2691 mAh</span>
				</figure>
			</a>
		</div>
		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 content_img">
			<a href="IP6s_32.php">
				<img src="images/content_5.jpg" class="img-responsive">
				<h3 style="margin-top: 20px">iPhone 6s Plus 32GB</h3>
				<strong class="tien">14.499.000 ₫</strong>
				<div class="coupon">
					<span>Trả góp 0%</span>
				</div>
				<figure class="content_figure">
					<span class="slogan">iPhone 6s Plus 32GB</span>
					<strong>14.499.000 ₫</strong>
					<div class="promotion">
						<span> Cơ hội trúng xe Honda SH150i</span>
					</div>
					<span>Màn Hình: 5.5 inch, 1080 x 1920 pixels</span>
					<span>HĐH: iOS 10</span>
					<span>CPU: Apple A9, 2 Nhân, Dual-core 1.8 GHz</span>
					<span>RAM: 2 GB</span>
					<span>Camera: 12.0 MP/ 5.0MP </span>
					<span>PIN: lithium-ion battery 2750mAh</span>
				</figure>
			</a>
		</div>
		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 content_img">
			<a href="SS_A5.php">
				<img src="images/content_6.jpg" class="img-responsive">
				<h3 style="margin-top: 20px">Samsung Galaxy A5 (2017)</h3>
				<strong class="tien">7.990.000 ₫</strong>
				<figure class="content_figure">
					<span class="slogan">Samsung Galaxy A5 (2017)</span>
					<strong>7.990.000 ₫</strong>
					<div class="promotion">
						<span> Ốp lưng trong suốt </span>
					</div>
					<span>Màn hình: 5.2 inch (1080 x 1920 pixels) </span>
					<span>HĐH: Android 6.0 (Marshmallow)</span>
					<span>CPU: Exynos 7880, 8 Nhân, 1.9 GHz</span>
					<span>RAM: 4 GB, ROM: 32 GB</span>
					<span>Camera: Chính: 16.0 MP; Phụ: 16.0 MP</span>
					<span>PIN: Pin chuẩn Li-Ion 3000 mAh</span>
				</figure>
			</a>
		</div>
	</div>
</div>

  <div style="clear: both"></div>
  <div class="container">
   <div class="footer">
   	  <div class="wrapper">	
	    
			<div class="copy_right">
				<p> ©  2019 - 2021 Công Ty Cổ Phần CNTT / Địa chỉ: 65 Tô Hiến Thành, TP. Đà Nẵng.</p>
		   </div>
     </div>
    </div>
	  </div>

    <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
    <link href="css/flexslider.css" rel='stylesheet' type='text/css' />
							  <script defer src="js/jquery.flexslider.js"></script>
							  <script type="text/javascript">
								$(function(){
								  SyntaxHighlighter.all();
								});
								$(window).load(function(){
								  $('.flexslider').flexslider({
									animation: "slide",
									start: function(slider){
									  $('body').removeClass('loading');
									}
								  });
								});
							  </script>
<script type="text/javascript">
  $(document).ready(function($){
    $('#dc_mega-menu-orange').dcMegaMenu({rowItems:'4',speed:'fast',effect:'fade'});
  });
</script>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.js"></script>
<script src="js/script.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script> 
<script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
</script> 
</body>
</html>

