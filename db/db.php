<?php
$db=new mysqli("localhost","root", "") or die("No Connection");
$db->select_db("chat") or die("No Database connected!");
?>