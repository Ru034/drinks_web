<?php
session_start();
header('Content-Type: application/json');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    require './connect.php';

    $account = $_POST['account'];
    $password = $_POST['password'];

    $stmt = $conn->prepare("SELECT `account`, `password` FROM `user` WHERE `account` = ?");
    $stmt->bind_param("s", $account);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows > 0) {
        $stmt->bind_result($db_account, $db_password);
        $stmt->fetch();
        if (password_verify($password, $db_password)) {
            $_SESSION['user'] = $account;  // 將使用者資訊存入會話
            setcookie("user_session", session_id(), time() + (86400 * 30), "/");  // 將會話ID存入Cookie，有效期30天
            echo json_encode(['success' => true, 'account' => $db_account]);
        } else {
            echo json_encode(['success' => false, 'message' => '密碼錯誤']);
        }
    } else {
        echo json_encode(['success' => false, 'message' => '找不到用戶']);
    }

    $stmt->close();
    $conn->close();
    exit;
}
?>
