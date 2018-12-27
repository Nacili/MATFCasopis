<!DOCTYPE html>
<html lang="en-US">
    <?php
include 'head.php';
    ?>
    <body style=" margin: 0 !important;
    padding: 0 !important;">
    
    <?php
include 'header.php';
    ?>
		
		<!--------------- CONTENT ---------------------->
		<div class="w3-main w3-content" style="margin-top: 1%">
			<div class="w3-card w3-content">
				<div class="w3-container w3-theme-dark">
  					<h2 style="padding: 0;">Log in</h2>
				</div>
					<form action = "auth.php" method = "post" class="w3-container w3-padding-32">
						<label>User Name</label>
						<input class="w3-input" name="username" type="text">
						<label>Password</label>
						<input class="w3-input" name="password" type="password">
						<input class="w3-button w3-block w3-section w3-theme-dark w3-ripple w3-padding" type="submit" value="Log in"/>
					</form>
			</div>	
		</div>
		<!--------------- END OF CONTENT ---------------------->  
		
		<?php
include 'footer.php';
		?>
    </body>
</html>
