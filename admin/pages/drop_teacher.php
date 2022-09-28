<?php
include '../../database/config.php';
$sdid = mysqli_real_escape_string($conn, $_GET['id']);

$sql = "DELETE FROM tbl_teacher WHERE user_id='$sdid'";

if ($conn->query($sql) === TRUE) {
    header("location:../teachers.php?rp=7823");
} else {
    header("location:../teachers.php?rp=1298");
}

$conn->close();
?>
