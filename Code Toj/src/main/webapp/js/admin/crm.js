//SCORRIMENTO SIDENAV
$(document).ready(function (){
        $("i.fa-bars").click(function (){
        const col1 = document.getElementsByClassName("col-1")[0];
        const col2 = document.getElementsByClassName("col-2")[0];
        col1.classList.toggle("collapse");
        col2.classList.toggle("full-width");
    });
})


//LOGOUT
$(document).ready(function (){
        // Modal
        var modal = document.getElementById("myModal");
        // Apertura Modal
        var logout = document.getElementById("logout");
        // Span che chiude modal
        var span = document.getElementsByClassName("close")[0];

        // funzione per aprire modal
        logout.onclick = function() {
                modal.style.display = "block";
        }

        // Funzione per chiudere modal (Dalla "X")
        span.onclick = function() {
                modal.style.display = "none";
        }

        //Funzione per chiudere modal (Dal bottone "No")
        document.getElementById("close").onclick = function (){
                modal.style.display = "none";
        }

        // Funzione per chiudere modal quando l'utente clicca al di fuori
        window.onclick = function(event) {
                if (event.target == modal) {
                        modal.style.display = "none";
                }
        }
})

$(document).ready(function(){
        var btn = document.getElementById("interact")
        var form = document.getElementById("interact-form")
        btn.onclick(function(){
                form.style.display="none";
        });
});

