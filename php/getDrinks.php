<?php
include '../php/Connect.php';

header('Content-Type: application/json'); 

$sql = "SELECT name, image, id, price, description FROM drinks";
$result = $conn->query($sql);

$drinks = [];

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $row['image'] = htmlspecialchars($row['image']);
        $row['name'] = htmlspecialchars($row['name']);
        $row['price'] = htmlspecialchars($row['price']);
        $row['description'] = htmlspecialchars($row['description']);
        $drinks[] = $row;
    }
    echo json_encode(['success' => true, 'drinks' => $drinks]);
} else {
    echo json_encode(['success' => false, 'message' => '沒有飲品資訊']);
}

$conn->close();
?>
