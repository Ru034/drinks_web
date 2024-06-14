<?php
session_start();

// 模擬購物車，存儲在 session 中
if (!isset($_SESSION['cart'])) {
    $_SESSION['cart'] = array();
}

if (isset($_POST['drink_id'], $_POST['drink_name'], $_POST['drink_price'], $_POST['sweetness'], $_POST['ice'])) {
    $drink = array(
        'id' => $_POST['drink_id'],
        'name' => $_POST['drink_name'],
        'price' => $_POST['drink_price'],
        'sweetness' => $_POST['sweetness'],
        'ice' => $_POST['ice']
    );

    // 將飲品信息添加到購物車
    $_SESSION['cart'][] = $drink;

    echo json_encode(array('status' => 'success', 'message' => '飲品已成功添加到購物車。'));
} else {
    echo json_encode(array('status' => 'error', 'message' => '參數不完整，無法添加到購物車。'));
}
?>
