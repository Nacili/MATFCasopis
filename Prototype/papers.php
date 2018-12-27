<?php
   include("config.php");
   session_start();
   $logged_in = isset($_SESSION['login_user']);
   $sql = "";
   if (!$logged_in)
   {
       $sql = "SELECT * FROM Rad WHERE objavljen = TRUE";
   }
   else
   {
       $user_id = $_SESSION['login_user'];
   
       $sql = "SELECT * FROM Rad JOIN Pise ON IDRadKorisnickiNalog = idRada and IDKorisnickiNalogRad = ".$_SESSION['login_user'];
   }

   $result = mysqli_query($db,$sql);

   $array = array();

   while (($row = mysqli_fetch_array($result,MYSQLI_ASSOC)) != NULL)
   {
      $active = $row['active'];
      array_push($array, $row);
   }
   
   echo json_encode($array);   
?>

