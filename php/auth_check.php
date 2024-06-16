<?php
session_start();
header('Content-Type: application/json');

if (isset($_SESSION['user']) && isset($_COOKIE['user_session']) && $_COOKIE['user_session'] === session_id()) {
    echo json_encode(['loggedin' => true]);
} else {
    echo json_encode(['loggedin' => false]);
}
?>
