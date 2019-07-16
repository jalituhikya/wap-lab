$(function(){

    $(".add-to-cart").click(function(event){
        var productName =  event.target.id;
        var theElement = event.target;
        var productPrice = 1000;
        var product = {name: productName,price:productPrice};
        theElement.innerHTML = "adding..."
        $.post('welcome',{product:  JSON.stringify(product)},
            function(data){
                data = JSON.parse(data);
                var td1=$('<td>').text(data.id);
                var td2 = $('<td>').text(data.name);
                var td3 = $('<td>').text(data.price);
                var tr = $('<tr>').append(td1).append(td2).append(td3);
                $('#tbl_products>tbody').append(tr);
                lab12_open();

            }).always(function () {
            theElement.innerHTML = "add to cart";

        });

    });

});