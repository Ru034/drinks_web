<?php
session_start();
header('Content-Type: application/json');

if (!isset($_SESSION['user'])) {
    echo json_encode(['success' => false, 'message' => '未登入']);
    exit();
}

include './connect.php';

$account = $_SESSION['user'];

$stmt = $conn->prepare("SELECT email, name, phone, address FROM user WHERE account = ?");
$stmt->bind_param("s", $account);
$stmt->execute();
$stmt->store_result();
$stmt->bind_result($email, $name, $phone, $address);
$stmt->fetch();

if ($stmt->num_rows > 0) {
    echo json_encode([
        'success' => true,
        'user' => [
            'email' => $email,
            'name' => $name,
            'phone' => $phone,
            'address' => $address
        ]
    ]);
} else {
    echo json_encode(['success' => false, 'message' => '找不到用戶資料','account' => $account]);
}

$stmt->close();
$conn->close();
exit;
?>
