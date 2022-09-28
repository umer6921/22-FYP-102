<?php
session_start();
$_SESSION['login'] = false;
session_destroy();
header("location:../?rp=9422");

?>