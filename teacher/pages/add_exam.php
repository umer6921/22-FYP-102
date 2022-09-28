<?php
$cat = $_POST['category'];
$inClause = '"' . implode('","', $cat) . '"';

//print_r($inClause);exit;
date_default_timezone_set('Africa/Dar_es_salaam');
include '../../database/config.php';
include '../../includes/uniques.php';
$exam_id = 'EX-' . get_rand_numbers(6) . '';
$exam = ucwords(mysqli_real_escape_string($conn, $_POST['exam']));
$duration = mysqli_real_escape_string($conn, $_POST['duration']);
$passmark = mysqli_real_escape_string($conn, $_POST['passmark']);
$attempts = mysqli_real_escape_string($conn, $_POST['attempts']);
$date = mysqli_real_escape_string($conn, $_POST['date']);
$subject = mysqli_real_escape_string($conn, $_POST['subject']);
$category = mysqli_real_escape_string($conn, $inClause);

$terms = ucfirst(mysqli_real_escape_string($conn, $_POST['instructions']));

$sql = "SELECT * FROM tbl_examinations WHERE exam_name = '$exam' AND subject = '$subject' AND category IN ('$inClause')";

$result = $conn->query($sql);
if ($result->num_rows > 0) {

    while ($row = $result->fetch_assoc()) {

        header("location:../examinations.php?rp=1185");
    }
} else {
    foreach ($_POST['category'] as $key => $value) {
        $exam_id .= $key;
        $data = "INSERT INTO tbl_examinations (exam_id, category, subject, exam_name, date, duration, passmark, re_exam, terms)
        VALUES ('$exam_id', '$value' , '$subject', '$exam', '$date', '$duration', '$passmark', '$attempts', '$terms')";
        $res = $conn->query($data);
    }
    if ($res === TRUE) {
        header("location:../examinations.php?rp=2932");
    } else {
        header("location:../examinations.php?rp=7788");
    }
}
$conn->close();
