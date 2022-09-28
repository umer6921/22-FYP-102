<?php
include 'connections.php';
include '../includes/check_user.php';
$image = addslashes(file_get_contents($_FILES['image']['tmp_name']));
$sql = "UPDATE tbl_teacher SET avatar='$image' WHERE user_id='$myid'";
if ($DB->conn->query($sql) === TRUE) {
    $sql = "SELECT * FROM tbl_teacher WHERE user_id = '$myid'";
    $result = $DB->conn->query($sql);

    if ($result->num_rows > 0) {

        while ($row = $result->fetch_assoc()) {
            $_SESSION['avatar'] = $row['avatar'];
            header("location:../profile.php?rp=7823");
        }
    } else {
        header("location:../logout.php");
    }
} else {
    header("location:../profile.php?rp=1298");
}

$DB->conn->close();
