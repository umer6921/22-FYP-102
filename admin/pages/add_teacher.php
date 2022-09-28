<?php
date_default_timezone_set('Africa/Dar_es_salaam');
include '../../database/config.php';
include '../../includes/uniques.php';
$teacher_id = 'T'.get_rand_numbers(3).'-'.get_rand_numbers(3).'-'.get_rand_numbers(3).'';
$fname = ucwords(mysqli_real_escape_string($conn, $_POST['fname']));
$lname = ucwords(mysqli_real_escape_string($conn, $_POST['lname']));
$email = mysqli_real_escape_string($conn, $_POST['email']);
$phone = mysqli_real_escape_string($conn, $_POST['phone']);
$department = mysqli_real_escape_string($conn, $_POST['department']);
$category = mysqli_real_escape_string($conn, $_POST['category']);
$address = ucwords(mysqli_real_escape_string($conn, $_POST['address']));
$dob = mysqli_real_escape_string($conn, $_POST['dob']);
$gender = mysqli_real_escape_string($conn, $_POST['gender']);

$sql = "SELECT * FROM tbl_teacher WHERE email = '$email' OR phone = '$phone'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {

    while($row = $result->fetch_assoc()) {
    $sem = $row['email'];
	$sph = $row['phone'];
	if ($sem == $email) {
	 header("location:../teachers.php?rp=1189");	
	}else{
	
	if ($sph == $phone) {
	 header("location:../teachers.php?rp=2074");	
	}else{
		
	}
	
	}
	
    }
} else {

$sql = "INSERT INTO tbl_teacher (user_id, first_name, last_name, gender, dob, address, email, phone, department, category)
VALUES ('$teacher_id', '$fname', '$lname', '$gender', '$dob', '$address', '$email', '$phone', '$department', '$category')";

/**
 * INSERT INTO tbl_users because it's working for login teacher and other role;
 */
$insertTblUserRecord = "INSERT INTO tbl_users (user_id, first_name, last_name, gender, dob, address, email, phone, department, category,`role`)
VALUES ('$teacher_id', '$fname', '$lname', '$gender', '$dob', '$address', '$email', '$phone', '$department', '$category','teacher')";
$conn->query($insertTblUserRecord);

if ($conn->query($sql) === TRUE) {
  header("location:../teachers.php?rp=6410");
} else {
  header("location:../teachers.php?rp=9157");
}


}

$conn->close();
