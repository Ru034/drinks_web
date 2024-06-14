<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Database Connect</title>
</head>

<body>
    <?php
      include('connect.php');
      $ql = "SELECT * FROM drink";

      echo ("Query:" .$ql. "<br><br><hr>");

      $enc = mysqli_query($cons, "SET NAMES 'utf8'");
      $res = mysqli_query($cons, $ql);
      $n = mysqli_num_rows($res);
      echo ("Number of rows:" .$n. "<br><br><hr>");

      echo "<table border='1'>";
      echo "<tr>";
      echo "<th>name</th>";
      echo "<th>price</th>";
      echo "<th>id</th>";
      echo "<th>photo</th>";
      echo "</tr>";

      while ($row = mysqli_fetch_array($res)) {
          echo "<tr>";
          echo "<td>" .$row['name']. "</td>";
          echo "<td>" .$row['price']. "</td>";
          echo "<td>" .$row['id']. "</td>";
          echo "<td>" .$row['photo']. "</td>";
          echo "</tr>";
      }
      mysqli_close($cons);


      ?>

</body>

</html>