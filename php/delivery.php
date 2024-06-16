<?php
header('Content-Type: application/json');
$data = json_decode(file_get_contents('php://input'), true);

if (isset($data['name'], $data['phone'], $data['address'], $data['drinks'], $data['total_amount'])) {
    $name = $data['name'];
    $phone = $data['phone'];
    $address = $data['address'];
    $total_amount = $data['total_amount'];
    $drinks = $data['drinks'];

    include './connect.php';

    // 插入訂單資料
    $stmt = $conn->prepare("INSERT INTO Orders (user_id, order_date, total_amount, address, phone) VALUES (?, NOW(), ?,?,?)");
    $user_id = $name; 
    $stmt->bind_param("sdsd", $user_id, $total_amount, $address, $phone);

    if ($stmt->execute()) {
        $order_id = $stmt->insert_id;
        $stmt->close();

        // 插入訂單詳細資訊
        $stmt = $conn->prepare("INSERT INTO OrderDetails (order_id, drink_name, quantity, sugar, ice, price) VALUES (?, ?, ?, ?, ?, ?)");

        foreach ($drinks as $drink) {
            $stmt->bind_param("isissd", $order_id, $drink['drink_name'], $drink['quantity'], $drink['sugar'], $drink['ice'], $drink['total_price']);
            $stmt->execute();
        }

        $stmt->close();
        echo json_encode(['success' => true]);
        exit;
    } else {
        echo json_encode(['success' => false, 'message' => '訂單插入失敗。']);
        exit;
    }

    $conn->close();
} else {
    echo json_encode(['success' => false, 'message' => '無效的訂單數據。']);
    exit;
}

?>
