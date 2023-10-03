<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="navbar.jsp" %>
</head>
<body>
<c:forEach var="squadra" items="${squadre}">
    <p>${squadra.nomeSquadra} - ${squadra.pathLogo}</p>
</c:forEach>
</body>
</html>
