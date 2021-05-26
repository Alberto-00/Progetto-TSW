<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<!DOCTYPE html>
<html lang="it">
<head>
<jsp:include page="../partials/head.jsp">
    <jsp:param name="customerStyles" value="otherPage,contactUs"/>
    <jsp:param name="errorStyles" value="errors"/>
    <jsp:param name="title" value="T&#x000F8;j - ERROR 404"/>
</jsp:include>
</head>
<body>
<!--headerTop-->
<%@include file="../partials/customer/headerTop.jsp"%>
<hr class="border2-hr">

<div class="container-top">
    <div class="row">
        <div class="column-contact">
            <h1>404</h1>
            <h2>Oops! - Page Not Found</h2>
            <p>We can't seem to find the page you're looking for.
                How you got here is a mystery.
            </p>
        </div>
        <div class="column-contact">
            <img src="${pageContext.request.contextPath}/images/opsImg.png" alt="oopsImg">
        </div>
    </div>
</div>

<!-- footer-->
<%@include file="../partials/customer/footer.jsp"%>
</body>
</html>
