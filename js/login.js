$(document).ready(function () {
    $('#login-btn').click(function (event) {
        event.preventDefault();  // 防止表單的標準提交

        // 收集表單資料
        var account = $('#account').val();
        var password = $('#password').val();

        // 進行 AJAX 請求
        $.ajax({
            url: '../php/login.php',  // 目標服務器的 URL
            type: 'POST',
            data: {
                'account': account.toString(),
                'password': password.toString()
            },
            dataType: 'json',  // 期望從服務器返回的數據類型
            success: function (data) {
                console.log(data);
                if (data.success) {
                    $('#message').text('登入成功，正在跳轉...').removeClass('error').addClass('success');
                    setTimeout(function () {
                        window.location.href = '../home.html';
                    }, 2000);
                } else {
                    $('#message').text(data.message).removeClass('success').addClass('error');
                }
            },
            error: function (xhr, status, error) {
                $('#message').text('網路或服務器錯誤').removeClass('success').addClass('error');
                console.error('Error:', error);
            }
        });
    });

    $('#register-btn').click(function () {
        window.location.href = 'register.html';
    });

    // 檢查是否已經登入
    if (getCookie('user_session')) {
        window.location.href = '../home.html';
    }
});

// 獲取 cookie 的函數
function getCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for(var i=0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1,c.length);
        if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
    }
    return null;
}
