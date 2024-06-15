<?php
include '../php/connect.php';

// 獲取POST數據
$data = json_decode(file_get_contents('php://input'), true);

if (isset($data['cart']) && isset($data['user'])) {
    $cart = $data['cart'];
    $user = $data['user'];

    // 插入每個購物車項目到資料庫中
    foreach ($cart as $item) {
        $drink_id = $item['drinkId'];
        $ice = $item['ice'];
        $sweetness = $item['sweetness'];

        $sql = "INSERT INTO `order`(`drink_id`, `ice`, `sugair`, `account`) VALUES ('$drink_id', '$ice', '$sweetness', '$user')";

        if (!$conn->query($sql)) {
            echo json_encode(['success' => false, 'message' => 'Error: ' . $sql . '<br>' . $conn->error]);
            $conn->close();
            exit();
        }
    }

    echo json_encode(['success' => true]);
} else {
    echo json_encode(['success' => false, 'message' => 'Invalid input']);
}

$conn->close();
?>
