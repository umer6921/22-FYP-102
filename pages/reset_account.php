<?php
include '../includes/uniques.php';
include '../database/config.php';
require('../vendor/autoload.php');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

$myid = mysqli_real_escape_string($conn, $_POST['user']);

$sql = "SELECT * FROM tbl_users WHERE user_id = '$myid' OR email = '$myid'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {

    while ($row = $result->fetch_assoc()) {
        $myuserid = $row['user_id'];
        $myemail = $row['email'];
        $myfname = $row['first_name'];
        $mylname = $row['last_name'];
        $myfullname = "$myfname $mylname";
        $new_password = get_rand_alphanumeric(10);
        $encpass = md5($new_password);
        $sql = "UPDATE tbl_users SET login='$encpass' WHERE user_id='$myuserid'";

        if ($conn->query($sql) === TRUE) {

            $message = "Hellow $myfullname, we received a request for your new password for the <b>Online Examination System</b> account, therefore your password have been changed to <br><b style='font-size:20px;color:red;background-color:lightgrey;'>$new_password</b>";
            $mail = new PHPMailer(true);
            try {
                //Server settings
                // $mail->SMTPDebug = SMTP::DEBUG_SERVER;                  //Enable verbose debug output
                $mail->SMTPDebug = 3;                                                      
                $mail->isSMTP();                                            //Send using SMTP
                $mail->Host       = 'smtp.gmail.com';                  //Set the SMTP server to send through
                $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
                $mail->Username   = 'unknown.kiki2@gmail.com';                 //SMTP username
                $mail->Password   = 'unknownkiki4321';                             //SMTP password
                // $mail->SMTPSecure = $mail::ENCRYPTION_STARTTLS;                    //Enable implicit TLS encryption
                $mail->SMTPSecure = "tls";           
                $mail->Port       = 587;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

                //Recipients
                // $mail->setFrom('unknown.kiki2@gmail.com', 'Admin');
                $mail->From = "unknown.kiki2@gmail.com";
                $mail->FromName = "Admin";
                $mail->addAddress($myemail, $myfullname);
               
                $mail->addReplyTo('unknown.kiki2@gmail.com', 'admin');

                $mail->isHTML(true);

                $mail->Subject = 'OES Password Reset';
                $mail->Body    = $message;
                $mail->AltBody = $message;
                
                $mail->send();
                echo 'Message has been sent';
            } catch (Exception $e) {
                echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
                header("location:../forgot_pw.php?rp=1804");
            }
        } else {
            header("location:../forgot_pw.php?rp=1100");
        }
    }
} else {
    header("location:../forgot_pw.php?rp=8924");
}
$conn->close();
