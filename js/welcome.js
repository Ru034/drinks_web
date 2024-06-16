$(document).ready(function () {
    // 檢查登入狀態並獲取用戶資料
    $.ajax({
        url: '../php/auth_check.php',
        type: 'GET',
        dataType: 'json',
        success: function (data) {
            if (!data.loggedin) {
                window.location.href = 'login.html';
            } else {
                // 顯示用戶資料
                fetchUserData();
            }
        },
        error: function (xhr, status, error) {
            console.error('Error:', error);
            window.location.href = 'login.html';
        }
    });

    function fetchUserData() {
        $.ajax({
            url: '../php/get_user_data.php',
            type: 'POST',
            data: { action: 'fetch' },
            dataType: 'json',
            success: function (data) {
                if (data.success) {
                    $('#user-name').text(data.user.name);
                    $('#email').val(data.user.email);
                    $('#name').val(data.user.name);
                    $('#phone').val(data.user.phone);
                    $('#address').val(data.user.address);
                } else {
                    window.location.href = 'login.html';
                }
            },
            error: function (xhr, status, error) {
                console.error('Error:', error);
                window.location.href = 'login.html';
            }
        });
    }

    // 更新用戶資料
    $('#update-btn').click(function (event) {
        event.preventDefault();

        var password = $('#password').val();
        var repeatPassword = $('#repeat_password').val();

        if (password !== repeatPassword) {
            $('#message').text('兩次密碼不相符').removeClass('success').addClass('error');
            return;
        }

        var userData = {
            action: 'update',
            email: $('#email').val(),
            name: $('#name').val(),
            phone: $('#phone').val(),
            address: $('#address').val(),
            password: password
        };

        $.ajax({
            url: '../php/update_user_data.php',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(userData),
            dataType: 'json',
            success: function (response) {
                if (response.success) {
                    console.log('Update success:', response);
                    $('#message').text('更新成功').removeClass('error').addClass('success');
                    $('#password').val('');
                    $('#repeat_password').val('');
                } else {
                    $('#message').text(response.message).removeClass('success').addClass('error');
                }
            },
            error: function (xhr, status, error) {
                console.error('Error:', error);
                $('#message').text('更新失敗').removeClass('success').addClass('error');
            }
        });
    });

    // 登出功能
    $('#logout-btn').click(function () {
        $.ajax({
            url: '../php/logout.php',
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
