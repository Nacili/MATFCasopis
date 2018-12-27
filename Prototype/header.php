<?php
echo '<!--------------- HEADER ---------------------->'.PHP_EOL.
'    '.PHP_EOL.
'	<div class="w3-top">'.PHP_EOL.
'		<div class="w3-bar w3-black w3-left-align">'.PHP_EOL.
'  			<a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-hover-white w3-black" href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>'.PHP_EOL.
'  			<a href="index.php" class=" w3-bar-item w3-button"><i class="fa fa-home w3-margin-right"></i></a>'.PHP_EOL.
'  			<a href="editorial.php" class="w3-bar-item w3-button w3-hide-small w3-hover-grey">Editorial board</a>'.PHP_EOL.
'  			<a href="forauthors.php" class="w3-bar-item w3-button w3-hide-small w3-hover-grey">For authors</a>'.PHP_EOL.
'  			<a href="inpress.php" class="w3-bar-item w3-button w3-hide-small w3-hover-grey">In press</a>'.PHP_EOL.
'  			<a href="userpage.php" class="w3-bar-item w3-button w3-hide-small w3-hover-grey">User page</a>'.PHP_EOL.
'   		<div class="w3-dropdown-hover w3-hide-small w3-right">'.PHP_EOL.
'   		<button class="w3-button" title="Notifications"> <i class="fa fa-user"></i></button>'.PHP_EOL;
if (!$logged_in)
  echo '   		<div style="right:0" class="w3-dropdown-content w3-black w3-card-4 w3-bar-block">'.PHP_EOL.
'   			<a href="#register" class="w3-bar-item w3-button">Register</a>'.PHP_EOL.
'      		<a href="#login" class="w3-bar-item w3-button">Log in</a>'.PHP_EOL.
'   		</div>'.PHP_EOL;
else echo '<div style="right:0" class="w3-dropdown-content w3-black w3-card-4 w3-bar-block">'.PHP_EOL.
'   			<a href="#" class="w3-bar-item w3-button">Log out</a>'.PHP_EOL.
'      		<a href="#" class="w3-bar-item w3-button">Article registration</a>'.PHP_EOL.
'      		<a href="#" class="w3-bar-item w3-button">Article retreat</a>'.PHP_EOL.
'      		<a href="#" class="w3-bar-item w3-button">List all articles</a>'.PHP_EOL.
'   		</div>'.PHP_EOL; 
echo ' 			</div>'.PHP_EOL.
'		</div>'.PHP_EOL.
''.PHP_EOL.
'  		<!-- Navbar on small screens -->'.PHP_EOL.
'		<div id="navDemo" class="w3-bar-block w3-black w3-hide w3-hide-large w3-hide-medium">'.PHP_EOL.
'    		<a href="editorial.html" class="w3-bar-item w3-button">Editorial board</a>'.PHP_EOL.
'    		<a href="forautors.html" class="w3-bar-item w3-button">For authors</a>'.PHP_EOL.
'    		<a href="inpress.html" class="w3-bar-item w3-button">In press</a>'.PHP_EOL.
'     		<a href="userpage.html" class="w3-bar-item w3-button">User page</a>'.PHP_EOL.
'      	<a href="#register" class="w3-bar-item w3-button">Register</a>'.PHP_EOL.
'       	<a href="#login" class="w3-bar-item w3-button">Log in</a>'.PHP_EOL.
'  		</div>'.PHP_EOL.
'	</div>'.PHP_EOL.
''.PHP_EOL.
'	<header class="w3-container w3-theme-dark w3-center w3-mobile" style="padding: 2% 16px">'.PHP_EOL.
'  		<h1 class="w3-margin w3-jumbo">MATF electronic newspaper</h1>'.PHP_EOL.
' 		<img class="w3-center w3-image" style="width:100%; max-width:150px" src="images/logo_matf.gif" alt="">'.PHP_EOL.
'	</header>'.PHP_EOL.
''.PHP_EOL.		
'	<!--------------- END OF HEADER ---------------------->'.PHP_EOL;
?>
