<?php
require ('../../vendor/autoload.php');
include '../pages/connections.php';
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

$student_id = $_POST['student_id'];
$role_name = $_POST['role_name'];
$student_id = ucwords(mysqli_real_escape_string($DB->conn, $_POST['student_id']));
$role_name = ucwords(mysqli_real_escape_string($DB->conn, $_POST['role_name']));
$sql = "SELECT * FROM tbl_users WHERE user_id ='{$student_id}' AND tbl_users.role='{$role_name}'";
$result = $DB->conn->query($sql);
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {

        $message = "Hellow " . $row['first_name'];

        $mail = new PHPMailer(true);

        try {
            //Server settings
            $mail->SMTPDebug = SMTP::DEBUG_SERVER;                      //Enable verbose debug output
            $mail->isSMTP();                                            //Send using SMTP
            $mail->Host       = 'smtp.gmail.com';                  //Set the SMTP server to send through
            $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
            $mail->Username   = 'unknown.kiki2@gmail.com';                 //SMTP username
            $mail->Password   = 'unknownkiki4321';                             //SMTP password
            $mail->SMTPSecure = $mail::ENCRYPTION_SMTPS;            //Enable implicit TLS encryption
            $mail->Port       = 587;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

            //Recipients
            // $mail->setFrom('umerm6921@gmail.com');
            $mail->From = "unknown.kiki2@gmail.com";
            $mail->FromName = "Admin";
            $mail->addAddress('umerm6921@gmail.com', 'User');          //Add a recipient
                                                       //Name is optional
           
            $mail->addReplyTo('ahsan@gmail.com', 'Information');

            //Content
            $mail->isHTML(true);                                        //Set email format to HTML
            $mail->Subject = 'Here is the subject';
            $mail->Body    = 'This is the HTML message body <b>in bold!</b>';
            $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

            $mail->send();
            echo 'Message has been sent';
        } catch (Exception $e) {
            echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
        }
    }
}
