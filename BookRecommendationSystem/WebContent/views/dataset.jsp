<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Music-Box | Dataset </title>
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
           <li class="active"><a href="dataset.html">Dataset Information</a></li>
        
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
	
</div>
</div>
</div>

<br>
<div class="content-bg">
<div class="wrap">
<div class="main">
<div class="content">

<h2>Dataset: ydata-ymusic-user-song-ratings-meta-v1_0</h2>
<div class="section group">

<br>
<p>
<font size="2" color="#00003D">
Yahoo! Music user ratings of songs with song attributes, version 1.0
<br>
=====================================================================
<br>
This dataset is provided as part of the Yahoo! Research Alliance
Webscope program, to be used for approved non-commercial research
purposes by recipients who have signed a Data Sharing Agreement
with Yahoo!. This dataset is not to be redistributed. No
personally identifying information is available in this dataset.
More information about the Yahoo! Research Alliance Webscope
program is available at http://research.yahoo.com
<br>
</font>
=====================================================================
<br>
<br>
<font size="3" color="#00003D" >
<strong>Full description:</strong> 
</font>
<font size="2" color="#00003D">
<br>
This dataset represents a snapshot of the Yahoo! Music community's
preferences for various songs. The dataset contains over 717
million ratings of 136 thousand songs given by 1.8 million users
of Yahoo! Music services. The data was collected between 2002 and
2006. Each song in the data set is accompanied by artist, album,
and genre attributes. The users, songs, artists, and albums are
represented by randomly assigned numeric id's so that no
identifying information is revealed. The mapping from geners id's
to geners, as well as the genere hierarchy, is given.
<br>
Standard pre-processing for collaborative filtering and rating
prediction was applied to create this data set. The data has been
trimmed so that each user has rated at least 20 songs, and each
song has been rated by at least 20 users. The data has been
randomly partitioned into 10 equally sized sets of users to
enable cross-validation techniques. The available ratings for
each user have been randomly partitioned into training and test
sets to enable all-but-K testing protocols. The test set consist
of 10 ratings, and the training set consists of the remaining
ratings.
<br>
Tab is used as a delimiter for all data files.
<br>

This dataset consists of twenty two files:<br>
1. ydata-ymusic-user-song-ratings-meta-v1_0/train-1.txt<br>
2. ydata-ymusic-user-song-ratings-meta-v1_0/train-2.txt<br>
3. ydata-ymusic-user-song-ratings-meta-v1_0/train-3.txt<br>
4. ydata-ymusic-user-song-ratings-meta-v1_0/train-4.txt<br>
5. ydata-ymusic-user-song-ratings-meta-v1_0/train-5.txt<br>
6. ydata-ymusic-user-song-ratings-meta-v1_0/train-6.txt<br>
7. ydata-ymusic-user-song-ratings-meta-v1_0/train-7.txt<br>
8. ydata-ymusic-user-song-ratings-meta-v1_0/train-8.txt<br>
9. ydata-ymusic-user-song-ratings-meta-v1_0/train-9.txt<br>
10. ydata-ymusic-user-song-ratings-meta-v1_0/train-10.txt<br>
11. ydata-ymusic-user-song-ratings-meta-v1_0/test-1.txt<br>
12. ydata-ymusic-user-song-ratings-meta-v1_0/test-2.txt<br>
13. ydata-ymusic-user-song-ratings-meta-v1_0/test-3.txt<br>
14. ydata-ymusic-user-song-ratings-meta-v1_0/test-4.txt<br>
15. ydata-ymusic-user-song-ratings-meta-v1_0/test-5.txt<br>
16. ydata-ymusic-user-song-ratings-meta-v1_0/test-6.txt<br>
17. ydata-ymusic-user-song-ratings-meta-v1_0/test-7.txt<br>
18. ydata-ymusic-user-song-ratings-meta-v1_0/test-8.txt<br>
19. ydata-ymusic-user-song-ratings-meta-v1_0/test-9.txt<br>
20. ydata-ymusic-user-song-ratings-meta-v1_0/test-10.txt<br>
21. ydata-ymusic-user-song-ratings-meta-v1_0/song-attributes.txt<br>
22. ydata-ymusic-user-song-ratings-meta-v1_0/genre-hierarchy.txt<br>
<br>
The content of the files are as follows:
<br>
=====================================================================
<br>
(1-10) "ydata-ymusic-user-song-ratings-meta-v1_0/train-n.txt":
Each training data file contains training data for 200,000 users.
Each user in each training data file has at least 10 observed
ratings. Each user has at most one observation for each song. The
users are ordered by randomly assigned user id. The observations
for each user are listed sequentially, and are ordered by
randomly assigned song id. The ratings values are on a scale from
1 to 5. The format of each row of each file is "user id<TAB>song
id<TAB>rating".
</font>
<br>
<font size="2" color="green">
<strong> Snippet:</strong><br>
49      2169    5<br>
49      2180    2<br>
50      311     5<br>
50      325     1<br>
</font>

<font size="2" color="#00003D">

====================================================================
<br>
(11-20) "ydata-ymusic-user-song-ratings-meta-v1_0/test-n.txt":
For each user in each training file, 10 test songs are available
in the corresponding test file. The users are ordered by randomly
assigned user id. The test observations for each user are listed
sequentially, and are ordered by randomly assigned song id. The
format of each row of each file is "user id<TAB>song
id<TAB>rating".
</font>
<br>
<font size="2" color="green">
<strong> Snippet:</strong><br>
49      1640    3<br>
49      2095    3<br>
49      2139    5<br>
50      439     1<br>
50      661     5<br>
</font>
<font size="2" color="#00003D">
====================================================================
<br>
(21)"ydata-ymusic-user-song-ratings-meta-v1_0/song-attributes.txt":
Each line of this file lists the attributes for a particular
song. The available attributes are artist id, album id, and genre
id. The format of each row of each file is "song id<TAB>album
id<TAB>artist id<TAB>genre id".<br>
</font>

<font size="2" color="green">
<strong> Snippet:</strong><br>
143     124143  22021   0<br>
144     107638  47567   106<br>
145     70419   105252  106<br>
146     20089   124124  134<br>
</font>

<font size="2" color="#00003D">
====================================================================

(22) "ydata-ymusic-user-song-ratings-meta-v1_0/genre-hierarchy.txt":
his file describes the genre hierarchy used by Yahoo! Music. Each
line of this file lists the id number for a genre, the id number
of the parent of that genre, the level of the genre in the
hierarchy, and the name of the genre. Note that songs with no
genre assigned by Yahoo! Music have been assigned to the special
genre "Unknown". The format of each row of each file is "genre
id<TAB>parent genre id<TAB>level<TAB>genre name".
</font>
<br>
<font size="2" color="green">
<strong> Snippet:</strong><br>
0       0       1       Unknown<br>
1       1       1       Electronic/Dance<br>
2       1       2       Ambient<br>
3       2       3       Ambient Dub<br>
</font>
</p>
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