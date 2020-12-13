<%--
  Created by IntelliJ IDEA.
  User: stude
  Date: 18.03.2020
  Time: 19:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="header.jsp"></jsp:include>

${success ? "Запись успешно удалена" : "Ошибка удаления записи"}
<p style="color: red">${errorMessage} </p>

<jsp:include page="footer.jsp"></jsp:include>
