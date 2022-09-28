<?php
error_reporting(1);
include '../../teacher/pages/connections.php';
include '../../pages/commonfunctions.php';
$total_questions = $_POST['tq'];
$student_id = $_POST['student_id'];
$starting_mark = 1;
$mytotal_marks = 0;
$exam_id = $_POST['eid'];
$record = $_POST['ri'];
while ($starting_mark <= $total_questions) {
   $sql_ = "SELECT * FROM tbl_questions
   WHERE tbl_questions.answer <> '' 
   AND tbl_questions.option1 = '" . strtoupper(base64_decode($_POST['ran' . $starting_mark . ''])) . "' 
   OR tbl_questions.option2 = '" . strtoupper(base64_decode($_POST['ran' . $starting_mark . ''])) . "'
   OR tbl_questions.option3 = '" . strtoupper(base64_decode($_POST['ran' . $starting_mark . ''])) . "' 
   OR tbl_questions.option4 = '" . strtoupper(base64_decode($_POST['ran' . $starting_mark . ''])) . "' 
   AND tbl_questions.exam_id = '" . $exam_id . "'";
   $result = $DB->conn->query($sql_);
   if ($result->num_rows > 0) {
      while ($row = $result->fetch_object()) {
         $question_id = $row->question_id;
         $_answer = $row->answer;
         $sql = "INSERT INTO tbl_question_answer (`question_id`,`exam_id`,`student_id`,`answer`, `correct_answer`)
            VALUES ('$question_id', '$exam_id','$student_id','" . strtoupper($_POST['an' . $starting_mark . '']) . "', '" . strtoupper(base64_decode($_POST['ran' . $starting_mark . ''])) . "')";
         $db = $DB->conn->query($sql);
      }
   }
   if ((!empty(strtoupper(base64_decode($_POST['ran' . $starting_mark . ''])))) && (!empty(strtoupper($_POST['an' . $starting_mark . ''])))) {
      if (strtoupper(base64_decode($_POST['ran' . $starting_mark . ''])) == strtoupper($_POST['an' . $starting_mark . ''])) {
         $mytotal_marks = $mytotal_marks + 1;
      }
   }
   $starting_mark++;
}

$percent_score = ($mytotal_marks / $total_questions) * 100;
$percent_score = floor($percent_score);
$passmark = $_POST['pm'];

if ($percent_score >= $passmark) {
   $status = "PASS";
} else {
   $status = "FAIL";
}

session_start();
$_SESSION['record_id'] = $record;
include '../../database/config.php';
$sql = "UPDATE tbl_assessment_records SET score='$percent_score', status='$status' WHERE record_id='$record'";

if ($conn->query($sql) === TRUE) {


   header("location:../assessment-info.php");
} else {
   header("location:../assessment-info.php");
}

$conn->close();
