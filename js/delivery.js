$(document).ready(function () {
    $.ajax({
        url: '../php/getDrinks.php',
        type: 'GET',
        dataType: 'json',
        success: function (response) {
            if (response.success) {
                response.drinks.forEach(function (drink) {
                    $('#drinksContainer .grid').append(
                        '<div class="gallery_d" style="height: 60%;" onclick="openModal(\'' + drink.image + '\', \'' + drink.name + '\', \'' + drink.price + '\', \'' + drink.description + '\')">' +
                        '<img src="../' + drink.image + '" alt="飲料圖片" class="w-full h-auto object-cover rounded-lg">' +
                        '<div class="desc p-2 text-center text-white">' + drink.name + '</div>' +
                        '</div>'
                    );
                });
            } else {
                $('#drinksContainer .grid').append('<p>' + response.message + '</p>');
            }
        },
        error: function () {
            $('#drinksContainer .grid').append('<p>無法獲取飲品資訊。</p>');
        }
    });

    window.onclick = function (event) {
        if (event.target == $("#drink-drift")[0]) {
            closeModal();
        }
    }
});

function openModal(image, name, price, description) {
    $('#modalImage').attr('src', '../' + image);
    $('#modalName').text(name);
    $('#modalPrice').text('$' + price);
    $('#modalDescription').text(description);
    $('#drinkQuantity').val(1); // 重置數量為1
    $('#drink-drift').css('display', 'flex');
}

function closeModal() {
    $('#drink-drift').css('display', 'none');
}

function addToSelectedDrinks() {
    var name = $('#modalName').text();
    var price = parseFloat($('#modalPrice').text().substring(1));
    var quantity = parseInt($('#drinkQuantity').val());
    var sugar = $('#drinkSugar').val();
    var ice = $('#drinkIce').val();
    var totalPrice = price * quantity;

    var listItem = $('<li class="py-2 flex justify-between">' +
        '<span>' + name + ' x ' + quantity + ' (' + sugar + '，' + ice + ')</span>' +
        '<span>$' + totalPrice.toFixed(2) + '</span>' +
        '<button class="bg-red-500 text-white px-2 py-1 rounded hover:bg-red-600 ml-4" onclick="removeDrink(this, ' + totalPrice.toFixed(2) + ')">刪除</button>' +
        '</li>');

    $('#selectedDrinksList').append(listItem);
    updateTotalAmount(totalPrice);
    closeModal();
}

function removeDrink(button, price) {
    $(button).closest('li').remove();
    updateTotalAmount(-parseFloat(price));
}

function updateTotalAmount(amount) {
    var currentTotal = parseFloat($('#totalAmount').text().replace('總金額: $', '')) || 0;
    var newTotal = currentTotal + amount;
    $('#totalAmount').text('總金額: $' + newTotal.toFixed(2));
}

function submitOrder() {
    var name = $('#name').val();
    var phone = $('#phone').val();
    var address = $('#address').val();
    var selectedDrinks = [];

    $('#selectedDrinksList li').each(function () {
        var drinkText = $(this).find('span:first').text();
        var drinkDetails = drinkText.split(' x ');
        var drinkName = drinkDetails[0];
        var quantityDetails = drinkDetails[1].split(' (');
        var quantity = quantityDetails[0];
        var options = quantityDetails[1].replace(')', '').split('，');
        var sugar = options[0];
        var ice = options[1];

        selectedDrinks.push({
            name: drinkName,
            quantity: quantity,
            sugar: sugar,
            ice: ice
        });
    });

    var orderData = {
        name: name,
        phone: phone,
        address: address,
        drinks: selectedDrinks,
        totalAmount: parseFloat($('#totalAmount').text().replace('總金額: $', ''))
    };

    $.ajax({
        url: '../php/submitOrder.php',
        type: 'POST',
        contentType: 'application/json',
        data: JSON.stringify(orderData),
        success: function (response) {
            if (response.success) {
                alert('訂單提交成功！');
                // 清空表單和已選擇的飲料
                $('#orderForm')[0].reset();
                $('#selectedDrinksList').empty();
                $('#totalAmount').text('總金額: $0');
            } else {
                alert('訂單提交失敗：' + response.message);
            }
        },
        error: function () {
            alert('訂單提交失敗，請重試。');
        }
    });
}
