<?php
include '../php/connect.php';

$sql = "SELECT name, image, id, price, description FROM drinks";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "<div class='drink-box'>"; // 外部框框開始
        echo "<div class='drink-item'>";
        // echo "<img src='../".$row['image']."' alt='".$row['name']."'>";
        echo "<h2>".$row['name']."</h2>";
        // echo "<p>".$row['description']."</p>";
        echo "<p>價格: ".$row['price']."元</p>";
        echo "<form action='order_drink.php' method='POST'>";
        echo "<input type='hidden' name='drink_id' value='".$row['id']."'>";
        echo "<input type='hidden' name='drink_name' value='".$row['name']."'>";
        echo "<input type='hidden' name='drink_price' value='".$row['price']."'>";
        echo "<input type='hidden' name='drink_image' value='".$row['image']."'>";
        echo "<input type='hidden' name='drink_description' value='".$row['description']."'>";
        echo "<input type='hidden' name='sweetness' id='sweetness_".$row['id']."' value='無糖'>";
        echo "<input type='hidden' name='ice' id='ice_".$row['id']."' value='去冰'>";
        echo "甜度: <select name='sweetness_select' id='sweetness_select_".$row['id']."' onchange='updateSweetness(".$row['id'].")'>
                    <option value='無糖'>無糖</option>
                    <option value='少糖'>少糖</option>
                    <option value='半糖'>半糖</option>
                    <option value='全糖'>全糖</option>
                </select>";
        echo "冰塊: <select name='ice_select' id='ice_select_".$row['id']."' onchange='updateIce(".$row['id'].")'>
                    <option value='去冰'>去冰</option>
                    <option value='微冰'>微冰</option>
                    <option value='正常冰'>正常冰</option>
                </select>";
        echo "<button type='button' class='add-to-cart-button' onclick='addToCart(".$row['id'].")'>加入購物車</button>";
        echo "</form>";
        echo "</div>";
        echo "</div>"; // 外部框框結束
    }
} else {
    echo "暫無飲品供應";
}
$conn->close();
?>
