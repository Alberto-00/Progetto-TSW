//Aspettiamo che il file sia pronto
$(document).ready(function (){
    // Inizializziamo la validazione sul form con name = "admin-login"
    $("form[name='admin-login']").validate({
        // Specifichiamo le regole di valdazione
        rules: {
            email: {
                required: true,
                email: true
            },
            password: {
                required: true,
                minlength: 8,
                maxlength: 30,
            }
        },
        // Specifichiamo i messaggi di errore
        messages: {
            password: {
                required: "Inserire la password.",
                minlength: "La password deve essere almeno di 8 caratteri.",
                maxlength: "La password deve essere al più 30 caratteri",
            },
            email: {
                required: "Inserire l'e-mail.",
                email: "Inserire un'e-mail valida."
            }
        },
        //Quando valido, ci assicuriamo che il form venga inviato
        submitHandler: function(form) {
            form.submit();
        }
    });
})

