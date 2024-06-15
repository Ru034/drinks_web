$(document).ready(function () {
    $.ajax({
        url: '../php/getDrinks.php',
        type: 'GET',
        dataType: 'json',
        success: function (response) {
            if (response.success) {
                response.drinks.forEach(function (drink) {
                    $('#drinksContainer .grid').append(
                        '<div class="gallery_d"  style=" height: 60%;"onclick="openModal(\'' + drink.image + '\', \'' + drink.name + '\', \'' + drink.price + '\', \'' + drink.description + '\')">' +
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
    var price = $('#modalPrice').text();
    var quantity = $('#drinkQuantity').val();

    $('#selectedDrinksList').append(
        '<li class="py-2 flex justify-between">' +
        '<span>' + name + ' x ' + quantity + '</span>' +
        '<span>' + price + '</span>' +
        '</li>'
    );

    closeModal();
}
