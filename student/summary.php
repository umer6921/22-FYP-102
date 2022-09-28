<?php
include '../teacher/pages/connections.php';
include 'includes/check_user.php'; 
include 'includes/check_reply.php';
require_once '../vendor/autoload.php';

use mikehaertl\wkhtmlto\Pdf;

$pdf = new Pdf(array(
    'binary' => 'C:\wkhtmltopdf\bin\wkhtmltopdf.exe',
    'ignoreWarnings' => true,
    'commandOptions' => array(
        'useExec' => true,      // Can help on Windows systems
        'procEnv' => array(
            // Check the output of 'locale -a' on your system to find supported languages
            'LANG' => 'en_US.utf-8',
        ),
    ),
));

$params = [
    "title"=>"Student Result", 
    "myfname" => $myfname,
    "mylname" => $mylname,
    "mydepartment" => $mydepartment,
    "myrole" => $myrole,
    "myphone" => $myphone,
    "myemail" => $myemail,
    "myaddress" => $myaddress,
    "mydob" => $mydob,
];
$filename = 'http://localhost/OnlineExamination/student/summaryPrint.php';
$html = file_get_contents($filename);    
foreach($params as $key=>$value) {
    $html = str_replace("{".$key."}", $value, $html);
}
// You can pass a filename, a HTML string, an URL or an options array to the constructor

$pdf->addPage($html);
$pdf->send();
if (!$pdf->send()) {
    throw new Exception('Could not create PDF: ' . $pdf->getError());
}
