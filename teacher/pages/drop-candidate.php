<?php
include '../pages/connections.php';
include '../includes/check_user.php';
include '../includes/check_reply.php';

$sdid = mysqli_real_escape_string($DB->conn, $_GET['sid']);

$sql = "DELETE FROM tbl_users WHERE user_id='$sdid'";

if ($DB->conn->query($sql) === TRUE) {
    header("location:../candidate.php?rp=123456789");
} else {
    header("location:../candidate.php?rp=987654321");
}

$DB->conn->close();
?>
