<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="/WEB-INF/views/partials/head.jsp">
        <jsp:param name="adminStyles" value="adminLogin"/>
        <jsp:param name="title" value="T&#x000F8;j | Admin Login"/>
    </jsp:include>
    <title>Toj - Admin Login </title>
    <link rel="stylesheet" href="css/admin/styleAdminLogin.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="./js/script.js"></script>
</head>
<body>
<form class="login-form" action="#" method="post">
    <div class="login-form-logo-container">
        <img class="login-form-logo" src="./icons/logo.png" alt="Logo">
    </div>
    <div class="login-form-content">
        <div class="login-form-header">Accedi al tuo account amministratore</div>
        <input class="login-form-input" type='email' name="email" id="idEmail" placeholder="Email">
        <input class="login-form-input" type="password" name="password" placeholder="Password">
        <button class="login-form-button"  type="submit">Accedi</button>
    </div>
</form>
</body>
</html>