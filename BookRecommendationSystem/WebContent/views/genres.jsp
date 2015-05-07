
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Music-Box | Genres </title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
 <!-- <link href='http://fonts.googleapis.com/css?family=Julius+Sans+One' rel='stylesheet' type='text/css'>-->
<!--slider-->
<script type="text/javascript" src="js/modernizr.custom.53451.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/jquery.gallery.js"></script>
		<script type="text/javascript">
			$(function() {
				$('#dg-container').gallery({
					autoplay	:	true
				});
			});
		</script>
</head>
<body>
<div class="menu-bg">
<div class="wrap">
	<div class="menu">
    	<ul class="nav">
           <li><a href="index.html">Home</a></li>
           <li class="active"><a href="genres.html">Genres</a></li>
           <li><a href="dataset.html">Dataset Information</a></li>
           <li> <a href="results.html"> Results </a></li>
           <li><a href="algo.html">Algorithms</a></li>
        </ul>
	</div>
	<div class="soc-icons">
		<ul>
			<li><a href="">Get In Touch&nbsp;</a></li>
			<li><a href=""><img src="images/facebook.png" alt="" /></a></li>
			<li><a href=""><img src="images/twitter.png" alt="" /></a></li>
			<li><a href=""><img src="images/gplus.png" alt="" /></a></li>
		</ul>
	</div>
	<div class="clear"></div>
</div>
</div>
<div class="header-bg">
<div class="wrap">
<div class="header">
	<div class="logo">
		<a href="index.html"><img src="images/logo.png" alt="" title="logo"></a>
	</div>
	<br>
</div>
</div>
</div>

<div class="content-bg">
<div class="wrap">
<div class="main">

	<div class="section group">
		<c:forTokens items="${message }" delims="," var="name">
		<div class="grid_1_of_3 images_1_of_3">
   		<a href="details.html"><h3><c:out value="${name}"/></h3></a><br>					  
		</div>
		</c:forTokens>	
	</div>

	<h2>Featured Albums</h2>
			<div class="section group">
				<div class="grid_1_of_3 images_1_of_3">
					  <a href="details.html"><img src="images/pic1.jpg"alt=""/></a>
					  <a href="details.html"><h3>JLO</h3></a>
				      <div class="btn">
				     	<a href="">Like</a>
				     </div>
				</div>
				<div class="grid_1_of_3 images_1_of_3">
					  <a href="details.html"><img src="images/pic2.jpg"alt=""/></a>
					  <a href="details.html"><h3>Lonely</h3></a>
				      <div class="btn">
				     	<a href="">Like</a>
				     </div>
				</div>	
				<div class="grid_1_of_3 images_1_of_3">
					 <a href="details.html"><img src="images/pic3.jpg" alt=""/></a>
					  <a href="details.html"><h3>Lorem Ipsum</h3></a>
					  
				       <div class="btn">
				     	<a href="details.html">Like</a>
				     </div>
				</div>
					<div class="grid_1_of_3 images_1_of_3">
					  <a href="details.html"><img src="images/pic4.jpg"alt=""/></a>
					  <a href="details.html"><h3>Lorem Unplugged</h3></a>
	
				      <div class="btn">
				     	<a href="">Like</a>
				     </div>
				</div>	
				<div class="grid_1_of_3 images_1_of_3">
					  <a href="details.html"><img src="images/pic5.jpg"alt=""/></a>
					  <a href="details.html"><h3>One Direction</h3></a>
				      <div class="btn">
				     	<a href="">Like</a>
				     </div>
				</div>	
			
			</div>
			
</div>

<div class="clear"></div>
</div>
</div>

<div class="footer-bg">
<div class="wrap">
<div class="footer">
	<div class="section group">
			<div class="grid_1_of_4 images_1_of_4">
				<h3>About Us</h3>
				<p>MusicBox designs, manufactures and markets hand-finished and modern jewelry made from genuine metals at affordable prices. MusicBox jewelry is sold in more than 90 countries on six continents through approximately 9,900 points of sale, including more than 1,400 concept stores.</p>
			</div>
			<div class="grid_1_of_4 images_1_of_4">
				<h3>News Letter</h3>
				<p>Subscribe to official newsletter, and keep informed about new versions, updates, plugins and other interesting news about MusicBox. We dont send spam or sell your email to third parties. You will be able to unsuscribe yourself automatically if you want.</p>
			</div>
			
			<div class="grid_1_of_4 images_1_of_4">
				<h3>Latest Music</h3>
				 <p><a href=""><img src="images/art-pic1.jpg" alt=""/>Who's ready for a comeback? In the case of Conor Maynard, we DEFINITELY are!</a></p>
			 	 <p class="top"><a href=""><img src="images/art-pic2.jpg" alt=""/>The month ends with a fierce chart battle between pop sweetheart Carly Rae Jepsen, with her 'Call Me Maybe' follow-up 'I Really Like You' being released on 26th April.</a></p>
			</div>
	</div>
</div>
</div>
</div>
<div class="footer1-bg">
	<div class="wrap">
			<div class="copy">
			<p>© 2013 All rights Reserved | Design by MusicBox</p>
			</div>	
	</div>
</div>
</body>
</html>

