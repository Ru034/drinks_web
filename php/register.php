<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    include './connect.php';

    // 獲取傳遞過來的參數
    $name = $_POST['name'];
    $address = $_POST['address'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $account = $_POST['account'];
    $password = $_POST['password'];
    $repassword = $_POST['repassword'];

    // 簡單的驗證
    if ($password !== $repassword) {
        echo json_encode(['error' => true, 'message' => '兩次密碼不相符']);
        $conn->close();
        exit;
    }

    $check = $conn->prepare("SELECT `account` FROM `user` WHERE `account` = ?");
    $check->bind_param("s", $account);
    $check->execute();
    $check->store_result();
    if ($check->num_rows > 0) {
        echo json_encode(['error' => true, 'message' => '此帳號已被註冊']);
        $check->close();
        exit;
    
    }

    // // 哈希密碼
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    // 插入數據庫
    $stmt = $conn->prepare("INSERT INTO user (account, password, name, address, phone,email) VALUES (?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("ssssss", $account, $hashed_password, $name, $address, $phone, $email);

    if ($stmt->execute()) {
        echo json_encode(['error' => false,'message' => '註冊成功']);
    } else {
        error_log("SQL Error: " . $stmt->error);
        echo json_encode(['error' => true, 'message' => '註冊失敗，請重試']);
    }
    
    $stmt->close();
    $conn->close();

    exit;
}
?>