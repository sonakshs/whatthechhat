<%@page import ="Chhat.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Explore Rentals Near You</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body>
<div id="header" class="container" >
	<div id="logo">
		<h1><a href="#">What The Chhat</a></h1>
	</div>
	<div id="menu">
		<ul>
			<li class="active"><a href="#" accesskey="1" title="">Explore Homes</a></li>
                        <li><a href="../index.jsp?" accesskey="3" title="">Homepage</a></li>
			<li><a href="../aboutUs.jsp" accesskey="3" title="">About</a></li>
                        <li><a href="../Logout.jsp">Log Out</a></li>
		</ul>
	</div>
</div>
<div id="page">
	<div class="container">
		<div class="title">
			<h2>Find A Chhat Near You</h2>
			<p>Explore various rental homes near you.</p>
		</div>
		<div class="boxA">
			<div class="box margin-btm">
				<img src="images/pic01.jpg" width="320" height="180" alt="" />
				<div class="details">
					<p></p>
				</div>
				<a href="#" class="button">More Details</a>
			</div>
			<div class="box">
				<img src="images/pic02.jpg" width="320" height="220" alt="" />
				<div class="details">
					<p></p>
				</div>
				<a href="#" class="button">More Details</a>
			</div>
		</div>
		<div class="boxB">
			<div class="box">
				<img src="images/pic03.jpg" width="320" height="280" alt="" />
				<div class="details">
					<p></p>
				</div>
				<a href="#" class="button">More Details</a>
			</div>
			<div class="box">
				<img src="images/pic05.jpg" width="320" height="140" alt="" />
				<div class="details">
					<p></p>
				</div>
				<a href="#" class="button">More Details</a>
			</div>
			
		</div>
		<div class="boxC">
			<div class="box">
				<img src="images/pic04.jpg" width="320" height="200" alt="" />
				<div class="details">
					<p></p>
				</div>
				<a href="#" class="button">More Details</a>
			</div>
			<div class="box">
				<img src="images/pic06.jpg" width="320" height="200" alt="" />
				<div class="details">
					<p></p>
				</div>
				<a href="#" class="button">More Details</a>
			</div>
			
		</div>
	</div>
</div>
<div id="map" style="width:100%;height:500px"></div>

<script>
function myMap() {
  var mapOptions = {
  center: new google.maps.LatLng(30.2247, 78.7986),
  zoom: 10,
  mapTypeId: google.maps.MapTypeId.HYBRID};
  var map = new google.maps.Map(document.getElementById("map"), mapOptions);
  var marker = new google.maps.Marker({position:myCenter});
  marker.setMap(map);

  var infowindow = new google.maps.InfoWindow({
    content: "Your Chhat!"
  });
  infowindow.open(map,marker);
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDpCCvRk44CAOgv85pn317j2edVDyowJOI&callback=myMap"></script>
    


content_copy

</body>
</html>
