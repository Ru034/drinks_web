function openModal(image, name, price, description) {
    $("#modalImage").attr("src", "../" + image);
    $("#modalName").text(name);
    $("#modalPrice").text("價格: " + price);
    $("#modalDescription").text(description);
    $("#drink-drift").show();
}

function closeModal() {
    $("#drink-drift").hide();
}

$(document).ready(function () {
    $.ajax({
        url: '../php/getDrinks.php',
        type: 'GET',
        dataType: 'json',
        success: function (response) {
            if (response.success) {
                response.drinks.forEach(function (drink) {
                    $('#drinksContainer').append(
                        '<div class="responsive"><div class="gallery" onclick="openModal(\'' + drink.image + '\', \'' + drink.name + '\', \'' + drink.price + '\', \'' + drink.description + '\')">' +
                        '<img src="../' + drink.image + '" alt="this is drink picture">' +
                        '<div class="desc">' + drink.name + '</div></div></div>'
                    );
                });
            } else {
                $('#drinksContainer').append('<p>' + response.message + '</p>');
            }
        },
        error: function () {
            $('#drinksContainer').append('<p>無法獲取飲品資訊。</p>');
        }
    });

    window.onclick = function (event) {
        if (event.target == $("#drink-drift")[0]) {
            closeModal();
        }
    }
});