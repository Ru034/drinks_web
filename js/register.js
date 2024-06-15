$(document).ready(function () {
    $('#register-form').on('submit', function (e) {
        e.preventDefault(); // 防止表單的正常提交
        $.ajax({
            url: '../php/register.php', // PHP 處理腳本的路徑
            type: 'POST', // 請求類型
            data: $(this).serialize(), // 序列化表單數據
            dataType: 'json', // 設置數據類型
            success: function (response) {
                $('.error').remove(); // 移除之前的錯誤訊息
                if (response.error) {
                    $('.login-form').append('<div class="error">' + response.message + '</div>');
                } else {
                    // 註冊成功的處理
                    $('.login-window').addClass('success');
                    $('.login-form').html('<h1>註冊成功，等待跳轉頁面!</h1>');
                    // 可以選擇重定向到登錄頁或其他操作
                    console.log('註冊成功');
                    setTimeout(() => {
                        console.log('註冊成功');
                        window.location.href = './login.html';
                    }, 2000);
                }
            },
            error: function (xhr, status, error) {
                $('.error').remove(); // 移除之前的錯誤訊息
                $('.login-form').append('<div class="error">發生錯誤，請稍後再試。</div>');
                console.log("AJAX error: " + status + ' : ' + error);
                console.log(xhr.responseText); // 如果有的話，這將顯示服務器的回應文本
            }
        });
    });
});