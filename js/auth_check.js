$(document).ready(function () {
    checkLoginStatus();
});

// 檢查登入狀態並更新登入圖示的連結
function checkLoginStatus() {
    $.ajax({
        url: '../php/auth_check.php',  // 檢查登入狀態的 PHP 文件
        type: 'GET',
        dataType: 'json',
        success: function (data) {
            if (data.loggedin) {
                console.log('Logged in');
                $('#login-link').attr('href', '/www/pages/welcome.html');
                $('#login-img').attr('src', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3YqWvaYySSmVpmQWVU_giWvPlbr2mkH95cw&s');
            } else {
                $('#login-link').attr('href', '/www/pages/login.html');
                $('#login-img').attr('src', '../images/login.png');
            }
        },
        error: function (xhr, status, error) {
            console.error('Error:', error);
            $('#login-link').attr('href', 'login.html');  // 如果 AJAX 請求失敗，連結到登入頁面
            $('#login-img').attr('src', '../images/login.png');
        }
    });
}
