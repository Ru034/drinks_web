<?php
$servername = "127.0.0.1";
$username = "ru";
$password = "0000";
$dbname = "beverage";

// 創建連接
$conn = new mysqli($servername, $username, $password, $dbname);

// 檢查連接
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
// echo "Connected successfully<br>";
?>
