<?php
session_start();
session_unset();
session_destroy();
setcookie("user_session", "", time() - 3600, "/"); // 刪除 Cookie

header('Content-Type: application/json');
echo json_encode(['success' => true]);
exit();
?>
