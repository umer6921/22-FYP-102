<?php

if(isset($_POST['submit'])){
    $query = file_get_contents($_FILES["file"]["name"]);
    $dbname = $_POST['db'];
    $con = new PDO("mysql:host=localhost;dbname=$dbname","root","");
    $stmt = $con->prepare($query);
    if($stmt->execute()){
        echo "Successfully imported to the $dbname.";
    }
}
?>