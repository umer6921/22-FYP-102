<?php

include 'connections.php';
include '../includes/check_user.php';
if (isset($_POST['pass1'])){
   $new_password = md5($_POST['pass1']);
}
$sql = "UPDATE tbl_teacher SET login='$new_password' WHERE user_id='$myid'";
$sql1 = "UPDATE tbl_users SET login='$new_password' WHERE user_id='$myid' AND tbl_users.role='teacher'";
$DB->conn->query($sql1);
if ($DB->conn->query($sql) === TRUE) {
	header("location:../profile.php?rp=7823");
} else {
   header("location:../profile.php?rp=1298");
}

$DB->conn->close();
?>
