<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Music-Box | Algorithms </title>
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
           <li><a href="genres.html">Genres</a></li>
           <li ><a href="dataset.html">Dataset Information </a></li>
           <li> <a href="results.html"> Results </a> </li>
           <li class="active"><a href="algo.html">Algorithms</a></li>
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
	
</div>
</div>
</div>

<br>
<div class="content-bg">
<div class="wrap">
<div class="main">
<div class="content">
<br>
<h2>Log Likelihood Similarity</h2>
<div class="section group">
<br>
	<font size="2" color="#00003D">

	Log likelihood is a statistical test that can be used to perfectness in fitting of two models.
	its very similar to tanimoto coefficient based similarity but difficult to understand.The Log Likelihood similarity 
	verifies how unlikely an  overlap among preferences occurs whether by mere chance or by genuine similarity.
	if two users have high ratio of common preferences to number of preferences ,then its considered as the similarity 
	occurring genuinely or else they are considered to have no similarities.<br>
	<img src="images/loglikelihood.JPG"alt=""/><br>
	Log likelihood similarity is given by 2 *sum(k) (H(k) - H(rowSums(k)) - H(colSums(k))) where H is Shannon's entropy, 
	computed as the sum of (kij / sum(k)) log (kij / sum(k)). Log like similarity is always used to calculate similarity between 
	different items and users ,since it always never considers preference values and only considers the recently discussed objects 
	and gets ratio calculated with the formula.
	
	</font>
<br><br>

</div>
	
	<h2>Pearson Correlation Similarity</h2>
	<div class="section group">
	<br>
	<font size="2" color="#00003D">
	Pearson correlation is used to calculate similarity between two users(u and v). 
	Pearson correlation computes the extent to which the two variables relate to one another. 
	The Pearson correlation based on users u and v for item I can be given by<br><br>
	<img src="images/pearson.JPG"alt=""/><br><br>

	where, i E I summation is done on the items that both the users i.e. u and v rate. 
	ru is the average rating of the user u for the co-rated items. For example, In the following table, we have W(1,5) as 0.756.
	<br><br>
	<img src="images/pearsonTable.JPG"alt=""/><br><br>
	
	The Pearson correlation based on items i and j for user U can be given by,<br><br>
	<img src="images/pearson2.JPG"alt=""/><br><br>
	Where ru,i is the rating given by user u for item i. ri is the average rating of item i by the users.
There are other correlation based similarities like constrained Pearson correlation and Spearman rank correlation 
which are similar to the Pearson correlation.
</font>	
	<br><br>
</div>
</div>

<div class="clear"></div>
</div>
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