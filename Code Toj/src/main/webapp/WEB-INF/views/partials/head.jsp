<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
<title>${param.title}</title>
<meta name="description" content="T&#x000F8;j | Clothing Store">
<link rel="icon" type="image/png" href="icons/logo2.png">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone-no">
<meta name="apple-mobile-web-app-title" content="T&#x000F8;j | Clothing Store">
<meta name="apple-mobile-web-app-status-bar-style" content="default">
<link rel="apple-touch-icon" href="icons/logo2.png">
<link rel="apple-touch-startup-image" href="icons/logo2.png">
<meta name="theme-color" content="#FFFFFF">
<link href="./css/reset.css" rel="stylesheet">
<link href="./css/library.css" rel="stylesheet">

<c:if test="${not empty param.styles}">
    <c:forTokens items="${param.styles}" delims="," var="style">
        <link rel="stylesheet" href="./css/${style}.css">
    </c:forTokens>
</c:if>

<script src="./js/jquery.js" defer></script>
<script src="./js/library.js" defer></script>

<c:if test="${not empty param.scripts}">
    <c:forTokens items="${param.scripts}" delims="," var="script">
        <script src="./js/${script}.js" defer></script>
    </c:forTokens>
</c:if>

<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>