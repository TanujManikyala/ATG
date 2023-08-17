<?php
include 'connection.php';
if (isset($_POST['SN']) && isset($_POST['SC']) && isset($_POST['SS']) && isset($_POST['SD'])) {
    $name = $_POST['SN'];
    $code = $_POST['SC'];
    $sem = $_POST['SS'];
    $course = $_POST['ST'];
    $dept = $_POST['SD'];
    //  $message = "nTry again.";
    // echo "<script type='text/javascript'>alert('$message');</script>";
} else {
    $message = "dead.";
    echo "<script type='text/javascript'>alert('$message');</script>";
    die();
}
$q = mysqli_query(mysqli_connect("localhost","id20469554_root","a@/jC1T-JrdVL5M!","id20469554_ttms"), "INSERT INTO subjects VALUES ('$code','$name','$course','$sem','$dept',0,'','','')");
if ($q) {
    $message = "Subject added.";
    //echo "<script type='text/javascript'>alert('$message');</script>";
    header("Location:addsubjects.php");
} else {
    $message = "Username and/or Password incorrect.\\nTry again.";
    echo "<script type='text/javascript'>alert('$message');</script>";
    // header("Location:index.php");

}
?>