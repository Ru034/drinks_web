<!doctype html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>帳號申請</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>


  <body>


      <div class="container h-100 ">

        <div class="row  pt-5 justify-content-center">
          <div class="col-8">
            <p class="text-center fs-1">註冊</p>
          </div>
        </div>


        <div class="row justify-content-center align-items-center">

          <div class="col-8 ">
            
              <form action="apply_account.php" method="POST">

                <div class="mb-3">
                  <label class="form-label">使用者名稱</label>
                  <input type="text" name="username" class="form-control form-control-lg">
                </div>

                <div class="mb-3">
                  <label class="form-label">信箱</label>
                  <input type="text" name="mail" class="form-control form-control-lg">
                </div>

                <div class="mb-3">
                  <label class="form-label">密碼</label>
                  <input type="text" name="password" class="form-control form-control-lg">
                </div>

                <div class="mb-3">
                  <label class="form-label">地址</label>
                  <input type="text" name="address" class="form-control form-control-lg">
                </div>

                <div class="mb-5">
                  <label class="form-label">電話</label>
                  <input type="text" name="phone" class="form-control form-control-lg">
                </div>


                <button type="submit" name="sendout" class="btn btn-primary btn-lg mb-5 w-100">提交</button>
              </form>

          </div>
        </div>
      </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>

<?php

    if(isset($_POST["sendout"])){
      
      $username = $_POST["username"];
      $mail = $_POST["mail"];
      $password = $_POST["password"];
      $address = $_POST["address"];
      $phone = $_POST["phone"];

      echo "帳號名稱是 {$username} <br>";
      echo "信箱是 {$mail} <br>";
      echo "密碼是 {$password} <br>";
      echo "地址是 {$address} <br>";
      echo "手機號碼是 {$phone} <br>";
    }

?>