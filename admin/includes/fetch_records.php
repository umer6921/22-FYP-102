<?php
include '../database/config.php';

$departments = 0;
$students = 0;
$teachers = 0;

$subjects = 0;
$categories = 0;
$notice = 0;

$banned_students = 0;
$std_fails = 0;
$std_pass = 0;

$sql = "SELECT * FROM tbl_departments";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
   
    while($row = $result->fetch_assoc()) {
     $departments++;
    }
} else {

}

$sql = "SELECT * FROM tbl_teacher WHERE role = 'teacher'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
   
    while($row = $result->fetch_assoc()) {
     $teachers++;
    }
} else {

}


$sql = "SELECT * FROM tbl_users WHERE role = 'student'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
   
    while($row = $result->fetch_assoc()) {
     $students++;
    }
} else {

}

$sql = "SELECT * FROM tbl_users WHERE role = 'teacher'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
   
    while($row = $result->fetch_assoc()) {
    //  $teachers++;
    }
} else {

}




$sql = "SELECT * FROM tbl_subjects";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
   
    while($row = $result->fetch_assoc()) {
     $subjects++;
    }
} else {

}

$sql = "SELECT * FROM tbl_categories";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
   
    while($row = $result->fetch_assoc()) {
     $categories++;
    }
} else {

}


$sql = "SELECT * FROM tbl_notice";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
   
    while($row = $result->fetch_assoc()) {
     $notice++;
    }
} else {

}



$sql = "SELECT * FROM tbl_users WHERE role = 'student' AND acc_stat = '0'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
   
    while($row = $result->fetch_assoc()) {
     $banned_students++;
    }
} else {

}





$conn->close();
?>