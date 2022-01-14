<?php
session_start();
if(isset($_POST['btn_log'])){
$_SESSION['id']=$_POST['id'];
$_SESSION['lt_id']=$_POST['lt_id'];
header("Location: chat.php");
}
?>