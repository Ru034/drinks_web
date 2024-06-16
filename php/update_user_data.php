<?php
session_start();
header('Content-Type: application/json');

if (!isset($_SESSION['user'])) {
    echo json_encode(['success' => false, 'message' => '未登入']);
    exit();
}

include './connect.php';

$data = json_decode(file_get_contents('php://input'), true);
$account = $_SESSION['user'];

$email = $data['email'];
$name = $data['name'];
$phone = $data['phone'];
$address = $data['address'];
$password = $data['password'];

// 先檢查密碼是否正確
$stmt = $conn->prepare("SELECT password FROM user WHERE account = ?");
$stmt->bind_param("s", $account);
$stmt->execute();
$stmt->store_result();
$stmt->bind_result($db_password);
$stmt->fetch();

if ($stmt->num_rows > 0 && password_verify($password, $db_password)) {
    // 更新用戶資料
    $update_stmt = $conn->prepare("UPDATE user SET email = ?, name = ?, phone = ?, address = ? WHERE account = ?");
    $update_stmt->bind_param("sssss", $email, $name, $phone, $address, $account);

    if ($update_stmt->execute()) {
        echo json_encode(['success' => true, 'message' => '資料更新成功']);
    } else {
        echo json_encode(['success' => false, 'message' => '資料更新失敗']);
    }

    $update_stmt->close();
} else {
    echo json_encode(['success' => false, 'message' => '密碼不正確']);
}

$stmt->close();
$conn->close();
exit;
?>
