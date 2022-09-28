<?php
$teachers_id = $_POST['teachers_id'];

include '../../database/config.php';
$fname = ucwords(mysqli_real_escape_string($conn, $_POST['fname']));
$lname = ucwords(mysqli_real_escape_string($conn, $_POST['lname']));
$email = mysqli_real_escape_string($conn, $_POST['email']);
$phone = mysqli_real_escape_string($conn, $_POST['phone']);
$department = mysqli_real_escape_string($conn, $_POST['department']);
$category = mysqli_real_escape_string($conn, $_POST['category']);
$address = ucwords(mysqli_real_escape_string($conn, $_POST['address']));
$dob = mysqli_real_escape_string($conn, $_POST['dob']);
$gender = mysqli_real_escape_string($conn, $_POST['gender']);

$sql = "SELECT * FROM tbl_teacher WHERE email = '{$email}' AND user_id <> '{$teachers_id}' OR phone = '{$phone}' AND user_id <> '{$teachers_id}' ";
$result = $conn->query($sql);

if ($result->num_rows > 0) {

    while ($row = $result->fetch_assoc()) {
        $E_Mail = $row['email'];
        $Phone_Number = $row['phone'];
        if ((string) $E_Mail === (string) $email) {
            header("location:../edit-teacher.php?rp=1189&tid=$teachers_id");
        } else {

            if ($sph == $phone) {
                header("location:../edit-teacher.php?rp=2074&tid=$teachers_id");
            } else {
            }
        }
    }
} else {
    
    $sql = "UPDATE tbl_teacher SET first_name = '$fname', last_name = '$lname', gender = '$gender', dob = '$dob', address = '$address', email = '$email', phone = '$phone', department = '$department', category = '$category' WHERE user_id='$teachers_id'";

    $UpdateTblUserRecord = "UPDATE tbl_users SET first_name = '$fname', last_name = '$lname', gender = '$gender', dob = '$dob', address = '$address', email = '$email', phone = '$phone', department = '$department', category = '$category',`role`='teacher' WHERE user_id='$teachers_id'";
    $conn->query($UpdateTblUserRecord);
    if ((bool) $conn->query($sql) === TRUE) {
        header("location:../edit-teacher.php?rp=7823&tid=$teachers_id");
    } else {
        header("location:../edit-teacher.php?rp=1298&tid=$teachers_id");
    }
}

$conn->close();
