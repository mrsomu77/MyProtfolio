
<!DOCTYPE html>
<html lang="eng">
<head>
	<title>Portfolio website</title>
	<link rel="stylesheet" type="text/css" href="style3.css">

	<link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;1,100;1,200;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<%
String uid=(String)session.getAttribute("user");
%>
<body>
	<!----hero Section start---->

	<div class="hero">
		<nav>
			<h2 class="logo">Portfo<span>lio</span></h2>
			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="about.html" target="_blank">About Us</a></li>
				<li><a href="service.html" target="_blank">Services</a></li>
				<li class="menu_item"><a href="#">Skills</a>
				     <ul class="submenu">
						<li class="submenu_item">Responsive Design</li>
						<li class="submenu_item">Version Control/Git </li>
						<li class="submenu_item">CSS Preprocessing</li>
						<li class="submenu_item">Frameworks 
						</li>
						
					 </ul>
				
				</li>
				<li><a href="contactme.html" target="_blank">Contact Us</a></li>
				<li><a href="#" ><% out.println(uid); %></a></li>
			</ul>
		
			<a href="subscribe.html" class="btn">Subscribe</a>
			<a href="logout.jsp" class="buttonlogout" ">Logout</a>
		</nav>

		<div class="content">
			<h4>Hello, my name is</h4>
			<h1> Soma Sundara<span> Reddy</span></h1>
			<div class="wrapper">
				<div class="static-txt">I'm a</div>
				<ul class="dynamic-txts">
				  <li><span>Fullstack Developer</span></li>
				  <li><span>Graphic Designer</span></li>
				  <li><span>Web Developer</span></li>
				  <li><span>Esport Gamer</span></li>
				</ul>
			  </div>
			<div class="newslatter">
				<form action="validhireme.jsp">
					<input type="email" name="email" id="mail" placeholder="Enter Your Email">
					<input type="submit" name="submit" value="Lets Start">
				</form>
				<br>
					<h4>You are Heired...!!</h4>
			</div>
		</div>
	</div>

	
</body>
</html>