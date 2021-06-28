/**
 * Questo script permette di cliccare sull'href delle immagini ("Uomo" e "Donna")
 * e di reindirizzarci ad un URL.
 */
$(document).ready(function(){
    $('#prev').on('click', function() {
        $('#menu .product-container').animate({
            scrollLeft: '-=360' /*300*/
        }, 500, 'swing');
    });

    $('#next').on('click', function() {
        $('#menu .product-container').animate({
            scrollLeft: '+=369' /*290*/
        }, 500, 'swing');
    });
});


/**
 * Overlay foto middle
 */
var elem = document.getElementById("overlay-image-woman")
if(elem){
    elem.addEventListener("click", function (){
        window.location.href = "./customers/shop?page=1&Sesso=F";
    })
}

var elem = document.getElementById("overlay-image-man")
if(elem){
    elem.addEventListener("click", function (){
        window.location.href = "./customers/shop?page=1&Sesso=M";
    })
}