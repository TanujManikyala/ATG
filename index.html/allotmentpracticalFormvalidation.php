<?php

include 'connection.php';
if (isset($_POST['tobealloted']) && isset($_POST['toalloted2']) && isset($_POST['toalloted3'])) {
    $subject = $_POST['tobealloted'];
    $teacher = $_POST['toalloted'];
    $teacher2 = $_POST['toalloted2'];
    $teacher3 = $_POST['toalloted3'];
    //  $message = "nTry again.";
    // echo "<script type='text/javascript'>alert('$message');</script>";
} else {
    $message = "dead.";
    echo "<script type='text/javascript'>alert('$message');</script>";
    die();
}
$q = mysqli_query(mysqli_connect("localhost","id20469554_root","a@/jC1T-JrdVL5M!","id20469554_ttms"), "UPDATE subjects SET isAlloted=1, allotedto='$teacher' , allotedto2='$teacher2' ,
 allotedto3 ='$teacher3' WHERE subject_code='$subject'");

if ($q) {
    $message = "Done.\\nTry again.";
   // echo "<script type='text/javascript'>alert('$message');</script>";
    header("Location:allotpracticals.php");
} else {
    $message = "Username and/or Password incorrect.\\nTry again.";
    $message = $subject;
    echo "<script type='text/javascript'>alert('$message');</script>";
    // header("Location:index.html");

}

?>