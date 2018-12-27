<!DOCTYPE html>
<html lang="en-US">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="author" content="Naca" >
        <meta name="description" content="Matematicki fakultet, Beograd">
        <meta name="keywords" content="casopis, elektronski, Matematicki fakultet, MATF, naucni radovi">
        <link rel="icon" href="images/logo_matf.gif">
        <link href='https://fonts.googleapis.com/css?family=Alegreya Sans' rel='stylesheet'>
        <link rel="stylesheet" type="text/css" href="https://www.w3schools.com/w3css/4/w3.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-red.css">

        <title>
            MATFCasopis
        </title>
    </head>
    <body style=" margin: 0 !important;
    padding: 0 !important;">
    
    <!--------------- HEADER ---------------------->
    
	<div class="w3-top">
		<div class="w3-bar w3-black w3-left-align">
  			<a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-hover-white w3-black" href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
  			<a href="index.html" class=" w3-bar-item w3-button"><i class="fa fa-home w3-margin-right"></i></a>
  			<a href="editorial.html" class="w3-bar-item w3-button w3-hide-small w3-hover-grey">Editorial board</a>
  			<a href="forautors.html" class="w3-bar-item w3-button w3-hide-small w3-hover-grey">For authors</a>
  			<a href="inpress.html" class="w3-bar-item w3-button w3-hide-small w3-hover-grey">In press</a>
  			<a href="userpage.html" class="w3-bar-item w3-button w3-hide-small w3-hover-grey">User page</a>
   		<div class="w3-dropdown-hover w3-hide-small w3-right">
   		<button class="w3-button" title="Notifications"> <i class="fa fa-user"></i></button>     
   		<div style="right:0" class="w3-dropdown-content w3-black w3-card-4 w3-bar-block">
   			<a href="#register" class="w3-bar-item w3-button">Register</a>
      		<a href="#login" class="w3-bar-item w3-button">Log in</a>
   		</div>
 			</div>
		</div>

  		<!-- Navbar on small screens -->
		<div id="navDemo" class="w3-bar-block w3-black w3-hide w3-hide-large w3-hide-medium">
    		<a href="editorial.html" class="w3-bar-item w3-button">Editorial board</a>
    		<a href="forautors.html" class="w3-bar-item w3-button">For authors</a>
    		<a href="inpress.html" class="w3-bar-item w3-button">In press</a>
     		<a href="userpage.html" class="w3-bar-item w3-button">User page</a>
      	<a href="#register" class="w3-bar-item w3-button">Register</a>
       	<a href="#login" class="w3-bar-item w3-button">Log in</a>
  		</div>
	</div>

	<header class="w3-container w3-theme-dark w3-center w3-mobile" style="padding: 2% 16px">
  		<h1 class="w3-margin w3-jumbo">MATF electronic newspaper</h1>
 		<img class="w3-center w3-image" style="width:100%; max-width:150px" src="images/logo_matf.gif" alt="">
	</header>
		
	<!--------------- END OF HEADER ---------------------->
		
		<!--------------- CONTENT ---------------------->
		<div class="w3-main" style="margin-top: 3%">
			<div class="w3-card w3-content w3-container">
				<h2 class="" >Contact:</h2>
					<p>
						MATF electronic newspaper <br>
						Web: <a href="index.html">www.matfelectronics.math.rs</a> <br>	
						Email: mjau&commat;mjau <br>
						Phone: 066/8323-346 <br>
						Address: Studentski trg 16, 11000 Beograd	<br>
						ISSN 2406-0682	
					</p>
			</div>
			<div class="w3-card w3-content w3-container" style="margin-top: 1%;">
				<h2 class="w3-text-theme-dark" >About:</h2>
					<p>
						<b>MATF electronic newspaper</b> is a research journal published since 1949 by the Mathematical Society of Serbia.<br>
						The journal publishes original papers in mathematical sciences and is, in general, published quarterly.<br>
						This journal approves and supports the  Code of Practice (2012) by Mew.<br>
						MATF electronic newspaper is a fully Open Access journal with no fee charges and is also being published electronically
					</p>
			</div>				
		</div>
		<!--------------- END OF CONTENT ---------------------->  
		
		<!--------------- FOOTER ---------------------->    
       
		<footer style="margin-top: 3%;" class="w3-hide-small w3-container w3-theme-dark">
      	 <p class="w3-center">
			 	Published by: Matematički fakultet <br>
			</p>
      </footer>
       
       <!--- END OF FOOTER - -->
       
      <script>
       
       function w3_open(){	
    		var x = document.getElementById("mySidebar");
    		x.style.width = "300px";
    		x.style.paddingTop = "10%";
    		x.style.display = "block";
		}

		// Close side navigation
		function w3_close(){
    		document.getElementById("mySidebar").style.display = "none";
		}

		// Used to toggle the menu on smaller screens when clicking on the menu button
		function openNav() {
    		var x = document.getElementById("navDemo");
    		if (x.className.indexOf("w3-show") == -1){
        		x.className += " w3-show";
   		}
   		else { 
	        x.className = x.className.replace(" w3-show", "");
	      }
		}
	
	</script>
	</body>
</html>