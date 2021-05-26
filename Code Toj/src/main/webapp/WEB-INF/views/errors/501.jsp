<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="customerStyles" value="otherPage"/>
        <jsp:param name="errorStyles" value="errors"/>
        <jsp:param name="title" value="T&#x000F8;j - ERROR 501"/>
    </jsp:include>
</head>
<body>
<!--headerTop-->
<%@include file="../partials/customer/headerTop.jsp"%>
<hr class="border2-hr">

<div class="container-top">
    <div class="row">
        <div class="column-contact">
            <h1>501</h1>
            <h2>Not Implemented</h2>
            <p>The server either does not recognize the request method, or it lacks
                the ability to fulfill the request.
            </p>
        </div>
        <div class="column-contact">
            <img src="${pageContext.request.contextPath}/images/forbidden.png" alt="oopsImg">
        </div>
    </div>
</div>

<!-- footer-->
<%@include file="../partials/customer/footer.jsp"%>
</body>
</html>
