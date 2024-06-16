$(document).ready(function () {
    $('#logout-btn').click(function () {
        $.ajax({
            url: '../php/logout.php',  // 目標服務器的 URL
            type: 'POST',
            success: function (response) {
                if (response.success) {
                    window.location.href = 'login.html';
                } else {
                    alert('登出失敗，請重試。');
                }
            },
            error: function (xhr, status, error) {
                console.error('Error:', error);
                alert('登出失敗，請重試。');
            }
        });
    });
});