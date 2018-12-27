<!DOCTYPE html>

<html lang="en-US">
    <?php
session_start();
$logged_in = isset($_SESSION['login_user']);
include 'head.php';
    ?>
    <body style=" margin: 0 !important;
    padding: 0 !important;">
    
    <?php
include 'header.php';
    ?>
		
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
		
		<?php
include 'footer.php';
		?>

	</body>
</html>
