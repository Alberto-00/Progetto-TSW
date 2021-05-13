<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="it">
<head>
    <jsp:include page="WEB-INF/views/partials/head.jsp">
        <jsp:param name="style" value="style.css"/>
        <jsp:param name="title" value="T&#x000F8;j | Clothing Store"/>
    </jsp:include>
</head>
<body>
<!--Header START-->
<!--1° barra: annunci e dropdown list-->
<div class="header-top">
    <div class="container-top">
        <span>Consegna gratuita:</span>
        <p>approfittane per fare i tuoi acquisti</p>
        <span class="border">Resi gratuiti * </span>
        <p>Soddisfatti o rimborsati</p>
        <div class="top-right">
            <ul>
                <li class="dropdown">
                    <a href="javascript:void(0)" class="dropbtn">My Account<i class="fas fa-angle-down icon-left"></i></a>
                    <div class="dropdown-content">
                        <a class="border-content" href="#">My Account</a>
                        <a class="border-content" href="#">Sign in</a>
                        <a href="#">Qualcosa</a>
                    </div>
                </li>
                <li class="dropdown border">
                    <a href="javascript:void(0)" class="dropbtn">Language<i class="fas fa-angle-down icon-left"></i></a>
                    <div class="dropdown-content">
                        <a class="border-content" href="#">
                            <img src="images/it.png" class="image-lang" alt="itaFlag">Ita
                        </a>
                        <a href="#"><img src="images/en.png" class="image-lang" alt="enFlag">Eng</a>
                    </div>
                </li>
                <li class="dropdown border">
                    <a href="#">Termini e condizioni</a>
                </li>
            </ul>
        </div>
    </div>
</div>
<!--2° barra: logo, searchBar, Login e Registrati, Carrello-->
<div class="header-middle">
    <div class="container-top">
        <div class="logo">
            <a href="index.html">
                <img src="images/logo.png" alt="" width="100" height="100">
            </a>
            <div class="top-left">
                <a href="Login">Accedi</a>
                <span style="color: #747474">/</span>
                <a href="Registrati">Registrati</a>
                <div class="cart-link">
                    <a href="Carrello"><i class="fas fa-shopping-basket icon-right"></i>Carrello</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!--3° barra: navigation bar con dropdown list-->
<div class="header-bottom">
    <div class="container-top">
        <div class="nav-bottom" id="nav-bottom">
            <ul>
                <li class="dropdown">
                    <a href="index.html">Home</a>
                </li>
                <li class="dropdown">
                    <a href="Uomo" class="dropbtn">Uomo<i class="fas fa-angle-down icon-left"></i></a>
                    <div class="dropdown-content dropdown-content-bottom">
                        <a href="#">Cappotti</a>
                        <a href="#">Giacche</a>
                        <a href="#">Maglie</a>
                        <a href="#">Costumi</a>
                        <a href="#">Pantaloni</a>
                    </div>
                </li>
                <li class="dropdown">
                    <a href="Donna" class="dropbtn">Donna<i class="fas fa-angle-down icon-left"></i></a>
                    <div class="dropdown-content dropdown-content-bottom">
                        <a href="#">Cappotti</a>
                        <a href="#">Giacche</a>
                        <a href="#">Magliette</a>
                        <a href="#">Costumi</a>
                        <a href="#">Pantaloni</a>
                        <a href="#">Gonne</a>
                    </div>
                </li>
                <li class="dropdown">
                    <a href="javascript:void(0)" class="dropbtn">Nuovi Arrivi<i class="fas fa-angle-down icon-left"></i></a>
                    <div class="dropdown-content dropdown-content-bottom">
                        <a href="#">Uomo</a>
                        <a href="#">Donna</a>
                    </div>
                </li>
                <li class="dropdown">
                    <a href="AboutUs.html">About Us</a>
                </li>
                <li class="dropdown">
                    <a href="contactUs.html">Contattaci</a>
                </li>
            </ul>
        </div>
    </div>
</div>
<!--Header END-->

<!--Content START-->
<!--Sezione centrale con divisione "Uomo -Donna" e lista dei nuovi arrivi-->
<div class="container-top">
    <div class="image image-left" id="overlay-image-woman">
        <a href="Donna"><img src="images/woman.jpg" alt=""></a>
        <div class="banner-text centered">
            <h1>Women's</h1>
            <p>Big Sale Off Final Items. Caught in the moment!</p>
            <a href="Donna">Acquista Ora</a>
        </div>
    </div>
    <div class="image image-right" id="overlay-image-man">
        <a href="Uomo"><img src="images/boy.jpg" alt=""></a>
        <div class="banner-text centered">
            <h1>Men's</h1>
            <p>Big Sale Off Final Items. Caught in the moment!</p>
            <a href="Uomo">Acquista Ora</a>
        </div>
    </div>
</div>
<!--Content END-->

<!--Footer START-->
<div class="container-top">
    <div class="row">
        <div class="column">
            <h3>Informazioni</h3>
            <a href="AboutUs.html">About Us</a>
            <a href="#">Spedizioni</a>
            <a href="#">Privacy Policy</a>
            <a href="#">Termini e condizioni</a>
            <a href="#">Contattaci</a>
            <a href="index.html">Ritorna all'HomePage</a>
        </div>
        <div class="column2">
            <h3>Contattaci</h3>
            <p>Indirizzo: Via Santa Maria Maggiore, 54, Salerno, Campania</p>
            <p>84086, IT</p>
            <p>Numero: (+39) 338 4546 448</p>
            <p>Email: Tøj@gmail.com</p>
            <div class="icon">
                <a href="#" title="twitter"><i class="fab fa-twitter"></i></a>
                <a href="#" title="googlePlus"><i class="fab fa-google-plus"></i></a>
                <a href="#" title="facebook"><i class="fab fa-facebook"></i></a>
                <a href="#" title="youtube"><i class="fab fa-youtube"></i></a>
            </div>
        </div>
        <div class="column3">
            <h3>Registrati alla Newsletter</h3>
            <p>Qualità eccezionale. Fabbriche etiche. Iscriviti gratis
                per usufruire  della spedizione e dei resi gratuiti
                in Europa sul tuo primo ordine.
            </p>
            <div class="subscribe-form">
                <form action="javascript:void(0)" method="post"> <!--Inserire action-->
                    <label for="newsletter"></label>
                    <input type="email" id="newsletter" name="newsletter"
                           placeholder="Inserisci la tua email qui...">
                    <div class="popup">
                        <button type="button" onclick="popupFunction()" name="newsletterSubmit" class="button">
                            <span>SUBSCRIBE</span>
                        </button>
                        <span class="popuptext" id="myPopup">Email inviata. Grazie!</span>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="footer-bottom">
    <div class="container-footer-bottom">
        <div class="row">
            <div class="column4">
                <p>© 2021 Made with ❤️ by <span style="font-weight: bold">Tøj | Clothing Store.</span></p>
            </div>
            <div class="column5">
                <p>Felici acquisti a tutti i nostri clienti. La qualità
                    e precisione è da <span style="font-weight: bold">Tøj | Clothing Store.</span></p>
            </div>
        </div>
    </div>
</div>
<!--Footer END-->

<!--Freccia che porta al top della pagina-->
<a id="scrollUp" href="#" style="position: fixed; z-index: 2147483647; display: inline;">
    <i class="fas fa-angle-double-up"></i>
</a>
</body>
</html>