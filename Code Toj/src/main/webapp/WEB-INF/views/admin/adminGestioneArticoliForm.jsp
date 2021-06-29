<%@ page import="Model.Taglia.Taglia" %>
<%@ page import="Model.Articolo.Articolo" %>
<%@ page import="Model.Colore.Colore" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<!DOCTYPE html>
<head>
    <jsp:include page="/WEB-INF/views/partials/head.jsp">
        <jsp:param name="adminStyles" value="libraryAdmin,crmAdmin,adminGestioneArticoli,adminGestioneArticoliForm"/>
        <jsp:param name="title" value="T&#x000F8;j | Admin Form"/>
        <jsp:param name="adminScripts" value="crm,jquery-validate-plugin,adminFormValidateArticoli"/>
    </jsp:include>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
<%@include file="../partials/admin/dashboardNav.jsp"%>
<div class="col-2">
    <%@include file="../partials/admin/dashboardHeader.jsp"%>
    <main class="content">
        <h1>Gestione Articoli</h1>

        <br>
        <form enctype="multipart/form-data" name="modify-form" class="modify-form" method="post" action="${pageContext.request.contextPath}/adminServlet/adminGestioneArticoliFormModify">
            <h2>Modifica Articolo</h2>
            ID      <br><input type="text" value="${articolo.IDarticolo}" name="idArticolo"><br>
            Prezzo  <br><input type="text" value="${articolo.prezzo}" name="prezzo"><br>
            Sesso   <br><input type="radio"name="sesso" checked value="m">M <input type="radio"name="sesso" value="f">F<br>
            Descrizione <br><textarea value="${articolo.descrizione}" name="descrizione"></textarea><br>
            Sconto <br><input type="text" value="${articolo.sconto}" name="sconto"><br>


            Categoria <br><input id="idCategoria" value="" name="idCategoria" />
            <datalist id="idCategorie2" name="idCategorie">
                <option value="1">Cappotti</option>
                <option value="2">Giacche</option>
                <option value="3">Costumi</option>
                <option value="4">Bikini</option>
                <option value="5">Intero</option>
                <option value="6">Felpe</option>
                <option value="7">Camice</option>
                <option value="8">Polo</option>
                <option value="9">T-Shirt</option>
                <option value="10">Top</option>
                <option value="11">Pantaloni Lunghi</option>
                <option value="12">Pantaloni Corti</option>
                <option value="13">Gonna Lunga</option>
                <option value="14">Gonna Corta</option>
            </datalist><br>
            Nome <br><input type="text" value="${articolo.nome}" name="nome"><br>
            <fieldset>
                <legend>Taglie (Nessuna selezione equivale a tutte)</legend>
                <%Articolo articolo = (Articolo) request.getAttribute("articolo");
                    for (Taglia t: articolo.getTaglie()) {%>
                <input type="checkbox" name="taglia" value="<%=t.getId_nome()%>"><label><%=t.getId_nome()%></label>
                <%}%>
            </fieldset>
            Colore<br>
            <select name="colori" multiple>
                <%List<Colore> colori = (List<Colore>) request.getAttribute("colori");
                    for (Colore c: colori) {%>
                <option value="<%=c.getCod_esadecimale()%>"><%=c.getNome()%></option>
                <%}%>
            </select>
          <br>
            Quantità<br>
            <input type="text" value="0" name="quantita"><br>
            Immagine<br>
            <input type="file" name="path" id="fileToUpload2" value=""><br><br>
            <input type="submit">
        </form>
        <br>
        <form name="delete-form" class="delete-form" action="${pageContext.request.contextPath}/adminServlet/adminGestioneArticoliFormDelete" method="post">
            <h2>Eliminazione Articolo</h2>
            Inserire ID<br><input type="text" value="${articolo.IDarticolo}" name="id"><br><br>
            <input type="submit">
        </form>
    </main>
    <%@include file="../partials/admin/dashboardFooter.jsp"%>
</div>
<%@include file="../partials/admin/dashboardLogout.jsp"%>

</body>
</html>
