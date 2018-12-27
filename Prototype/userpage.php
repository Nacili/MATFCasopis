<!DOCTYPE html>
<?php
$logged_in = true;
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
  					<h2 style="padding: 0;">Article registering</h2>
				</div>
					<form action="register.php" method="post" class="w3-container w3-padding-32">
						<label>Other author first name</label>
						<input class="w3-input" type="text" name="otherFirstName">
						<label>Other author last name</label>
						<input class="w3-input" type="text" name="otherLastName">
						<label>Other author email</label>
						<input class="w3-input" type="text" name="otherEmail">
						<label>Article title</label>
						<input class="w3-input" type="text" name="title">
						<label>Article PDF link</label>
						<input class="w3-input" type="text" name="url">
						<!--select class="w3-select" name="option">
  							<option value="" disabled selected>Scientific domain</option>
  							<option value="1">Bioinformatics</option>
  							<option value="2">Software verification</option>
  							<option value="3">Machine learning</option>
  							<option value="4">Algorithmics</option>
  							<option value="5">Networking</option>
						</select--> 
						<button class="w3-button w3-block w3-section	 w3-theme-dark w3-ripple w3-padding">Register</button>
					</form>
			</div>	
		</div>
		<!--------------- END OF CONTENT ---------------------->  
		
		<?php
include 'footer.php';
		?>

    </body>
</html>
