<?php
include 'connection.php';
$id = $_GET['name'];
$q = mysqli_query(mysqli_connect("localhost","id20469554_root","a@/jC1T-JrdVL5M!","id20469554_ttms"),
    "DELETE FROM subjects WHERE subject_code = '$id' ");
if ($q) {

    header("Location:addsubjects.php");

} else {
    echo 'Error';
}
?>

