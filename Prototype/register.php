<?php
   include("config.php");
   session_start();
   $logged_in = isset($_SESSION['login_user']);
   if (!$logged_in)
   {
       header("location : index.php");
       exit;
   }

   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // username and password sent from form 
      
      $otherFirstName = mysqli_real_escape_string($db,$_POST['otherFirstName']);
      $otherLastName = mysqli_real_escape_string($db,$_POST['otherLastName']);
      $otherEmail = mysqli_real_escape_string($db,$_POST['otherEmail']);
      $title = mysqli_real_escape_string($db,$_POST['title']);
      $url = mysqli_real_escape_string($db,$_POST['url']);

      $user_id = $_SESSION['login_user'];
   
      $sql = "INSERT INTO Rad(naslov, pdfStorageLinkId, status, objavljen) VALUES('".$title."', '".$url."', 'prijavljen', FALSE)";

      $result = mysqli_query($db,$sql);

      if ($result)
      {
          echo "Uspesno uneto u bazu".PHP_EOL;
      }
      else echo "Problem :(".PHP_EOL;

      $idRada = mysqli_insert_id($db);
      
      $sql = "INSERT INTO Pise VALUES(".$idRada.", ".$user_id.")";

      $result = mysqli_query($db,$sql);

      if ($result)
      {
          echo "Uspesno uneto u bazu".PHP_EOL;
      }
      else echo "Problem :(".PHP_EOL;

      $sql = "INSERT INTO Prijavljuje(IDRadKorisnik,IDKorisnikRad) VALUES(".$idRada.", ".$user_id.")";
      $result = mysqli_query($db,$sql);

      if ($result)
      {
          echo "Uspesno uneto u bazu".PHP_EOL;
      }
      else echo "Problem :(".PHP_EOL;

      if ($otherEmail != '')
      {
          $sql = "SELECT * FROM KorisnickiNalog WHERE email='".$otherEmail."'";

          $result = mysqli_query($db,$sql);
          $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
          $other_id = -1;
          if ($row == NULL)
          {
              $sql = "INSERT INTO KorisnickiNalog(ime, prezime, email, sifra) VALUES('".$otherFirstName."', '".$otherLastName."', '".$otherEmail."', '1234567')";
              $result = mysqli_query($db,$sql);

              if ($result)
              {
                  echo "Uspesno uneto u bazu".PHP_EOL;
              }
              else echo "Problem :(".PHP_EOL;

              $other_id = mysqli_insert_id($db);
          }
          else $other_id = $row['idKorisnickiNalog'];
          
          $sql = "INSERT INTO Pise VALUES(".$idRada.", ".$other_id.")";

          $result = mysqli_query($db,$sql);

          if ($result)
          {
              echo "Uspesno uneto u bazu".PHP_EOL;
          }
          else echo "Problem :(".PHP_EOL;
      
      }
   }
?>
