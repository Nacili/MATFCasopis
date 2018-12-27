<?php
echo '<head>'.PHP_EOL.
'        <meta charset="utf-8">;'.PHP_EOL.
'        <meta name="viewport" content="width=device-width, initial-scale=1">'.PHP_EOL.
'        <meta name="author" content="Naca" >'.PHP_EOL.
'        <meta name="description" content="Matematicki fakultet, Beograd">'.PHP_EOL.
'        <meta name="keywords" content="casopis, elektronski, Matematicki fakultet, MATF, naucni radovi">'.PHP_EOL.
'        <link rel="icon" href="images/logo_matf.gif">'.PHP_EOL.
"        <link href='https://fonts.googleapis.com/css?family=Alegreya Sans' rel='stylesheet'>".PHP_EOL.
'        <link rel="stylesheet" type="text/css" href="https://www.w3schools.com/w3css/4/w3.css">'.PHP_EOL.
'        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>'.PHP_EOL.
'        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">'.PHP_EOL.
'        <style type="text/css">'.PHP_EOL.
'        	a:link{'.PHP_EOL.
'				text-decoration:none;'.PHP_EOL.
'        	}'.PHP_EOL.
'        </style>'.PHP_EOL;
if (!$logged_in)
  echo '        <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-red.css">'.PHP_EOL;
else echo '<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-light-green.css">'.PHP_EOL;
echo ''.PHP_EOL.
'        <title>'.PHP_EOL.
'            MATFCasopis'.PHP_EOL.
'        </title>'.PHP_EOL.
'    </head>'.PHP_EOL;
?>
