<?php
   $username= filter_input(INPUT_POST,'username');
   $password= filter_input(INPUT_POST,'password');
   if (!empty($username)) {
       if (!empty($password)) {
           $host = "localhost";
          $dbusername ="id20469554_root";
           $dbpassword = "a@/jC1T-JrdVL5M!";
           $dbname ="id20469554_ttms";

           //create connection
   $conn = new mysqli($host, $dbusername, $dbpassword, $dbname);

   //check connection
   if(!$conn)
   {
    die("connection failed: ". mysqli_connect_errno());
    }
    else{
    echo "Connected successfully";
     }

       }
       else{
           echo "password should not be empty";
           die();
       }

       }
   ?>