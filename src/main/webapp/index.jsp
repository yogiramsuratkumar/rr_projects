<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="index.css">
	<title>Landing Page</title>
</head>

<body>
	<nav>
		<div class="heading">You didn&apos;t not get</div>
		<span class="sideMenuButton" onclick="openNavbar()">☰
		</span>
		<div class="navbar">
			<ul>
				<li><a href="#Home">Home</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Sign Up</a></li>
			</ul>
		</div>
	</nav>

	<!-- Side navigation bar for responsive website -->
	<div class="sideNavigationBar" id="sideNavigationBar">
		<a href="#" class="closeButton" onclick="closeNavbar()"></a>
		<a href="#">Home</a>
		<a href="#">About</a>
		<a href="#">Sign Up</a>
	</div>

	<!-- Content -->
	<div class="line" id="Home">
		<div class="side1">
			<h1>YogiRam SuratKumar</h1>
			<button>
			   <a href=""> Jaya Guru Deva </a>
			</button>
		</div>
		<div class="side2">
			<img src="https://sampletesting87.s3.ap-south-1.amazonaws.com/photo.jpg">
		</div>
		<div > </div>
	</div>


	<!-- Footer section -->
	<footer>
		<div class="footer">
			<span>
				Created By
				<a style="font-weight: bold;" href="">Rocking Ravi creative works</a>
			</span>
		</div>
	</footer>
	<script src="index.js"></script>
</body>

</html>

<style>
img{
  border-radius: 18%;

  }


* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

body {
	background-color: white;
	color: black;
	font-family: "Fira Sans", sans-serif;
	background-color: white;
}

nav {
	width: 100%;
	height: 80px;
	display: flex;
	justify-content: space-between;
	padding: 20px 5%;
	background-color: #8cc099;
}

nav .heading {
	font-size: 30px;
	font-weight: 700;
	color: white;
}

nav ul {
	display: flex;
	list-style: none;
}

nav ul li {
	padding: 8px 15px;
	border-radius: 10px;
	transition: 0.2s ease-in;
}

nav ul li a {
	color: black;
	font-size: 20px;
	font-weight: 500;
	text-decoration: none;
	color: white;
}

nav ul li:hover {
	background-color: green;
}

nav ul li a:hover {
	color: white;
}

nav .sideMenuButton {
	font-size: 30px;
	font-weight: bolder;
	cursor: pointer;
	display: none;
}

/* responsive navbar css */
@media screen and (max-width: 600px) {
	nav .sideMenuButton {
		display: flex;
	}

	nav .navbar {
		display: none;
	}

	.sideNavigationBar {
		display: block !important;
	}
}

.sideNavigationBar {
	height: 100%;
	position: fixed;
	top: 0;
	right: 0%;
	background-color: green;
	overflow-x: hidden;
	transition: 0.3s ease-in;
	padding-top: 60px;
	display: none;
}

.sideNavigationBar a {
	padding: 8px 8px 8px 40px;
	display: block;
	font-size: 25px;
	font-weight: 500;
	color: #d1d1d1;
	transition: 0.3s;
	text-decoration: none;
}

.sideNavigationBar a button {
	padding: 10px 20px;
	border-radius: 10px;
	color: green;
	font-size: 16px;
	border-style: none;
	font-weight: 700;
}

.sideNavigationBar a:hover {
	color: white;
}

.sideNavigationBar .closeButton {
	position: absolute;
	top: 10px;
	right: 25px;
	font-size: 20px;
	margin-left: 50px;
}

.line {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin: 2% 5%;
}

.line .side1 {
	padding-right: 50px;
}

.side1 h1 {
	font-size: 60px;
	margin-bottom: 10px;
	color: green;
}

.side1 button {
	width: 200px;
	padding: 12px 20px;
	border-radius: 20px;
	border-style: none;
	color: black;
	font-size: 17px;
	font-weight: 600;
}

a {
	text-decoration: none;
	color: black;
}

/* Header content responsive */
@media screen and (max-width: 980px) {
	.side2 img {
		width: 350px;
	}

	.side1 h1 {
		font-size: 40px;
	}

	.side1 p {
		font-size: 17px;
	}

	.line {
		margin-top: 80px;
	}
}

@media screen and (max-width: 600px) {
	.side1 h1 {
		font-size: 35px;
	}

	.line {
		flex-direction: column;
	}

	.line .side1 {
		padding: 30px;
	}
}

/* section */

section .topic a {
	font-size: 25px;
	font-weight: 500;
	margin-bottom: 10px;
}



/* Contact Page */

.contact {
	padding: 20px;
}

.contact .content {
	margin: 0 auto;
	padding: 30px 0;
}

.content .title {
	width: 80%;
	text-align: center;
	font-weight: bolder;
	font-size: 40px;
}

.title {
	margin-bottom: 30px;
	margin-left: 80px;
}

.contactMenu {
	display: flex;
	justify-content: space-evenly;
}

.input2 {
	margin-top: 10;
}

.label1 {
	font-size: 18px;
	margin-top: 8px;
	margin-bottom: 8px;
	font-weight: bolder;
}

.contactMenu .input1 input {
	border-radius: 13px;
	padding: 6px;
}

.input2 input {
	border-color: rgb(252, 244, 244);
	width: 400px;
}

.button {
	margin-top: 12px;
	margin-left: 5px;
}

.button button {
	width: 162px;
	height: 35px;
	border-radius: 12px;
	border-color: transparent;
}

.button button:hover {
	background-color: #8cc099;
}

button {
	width: 162px;
	height: 35px;
	border-radius: 12px;
	border-color: transparent;
}

button:hover {
	background-color: #8cc099;
}

.rightside1 {
	display: flex;
	flex-direction: column;
	margin-left: 300px;
}

.title1 {
	font-size: 18px;
	margin-top: 8px;
	margin-bottom: 5px;
	font-weight: bolder;
}

.content1 {
	width: 450px;
	margin-top: 2px;
	color: grey;
}

/* Footer */
footer {
	background: var(--primary-color);
	padding: 15px 0;
	text-align: center;
	font-family: "Poppins", sans-serif;}

footer .footer span {
	font-size: 17px;
	font-weight: 400;

}

footer .footer span a {
	font-weight: 500;
	color: #006400;
}

footer .footer span a:hover {
	text-decoration: underline;
}

@media screen and (max-width: 1060px) {
	.contactMenu {
		flex-direction: column;
		align-items: center;
	}

	.rightside1 {
		display: flex;
		flex-direction: column;
		margin-left: 0px;
	}

	.content1 {
		width: 100%;
		margin-top: 2px;
		color: grey;
	}

	.side2 img {
		width: 95%;
		height: 90%;
        overflow:hidden;
	}
}

@media screen and (max-width: 600px) {
	.side2 img {
		width: 100%;
	}

	section .topic a {
		font-size: 20px;
	}
	section .topic p {
		font-size: 5px;
	}

}
</style>

<script>
function openNavbar() {
	document.getElementById("sideNavigationBar")
		.style.width = "50%";
}
function closeNavbar() {
	document.getElementById("sideNavigationBar")
		.style.width = "0%";
}

</script>