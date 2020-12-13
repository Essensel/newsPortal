<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Student
  Date: 15.02.2020
  Time: 18:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Результаты поиска</title>
</head>

<jsp:include page="header.jsp"></jsp:include>


<!-- Page Content -->
<div class="container">

    <div class="row">

        <!-- Blog Entries Column -->
        <div class="col-md-8">


            <c:if test="${searchResult.size() == 0}">
                <h1 class="my-4">Нет новостей</h1>
            </c:if>

            <c:if test="${searchResult.size()>0}">

                <h1 class="my-4">Все
                    <small>результаты поиска по запросу ${query}</small>
                </h1>

                <c:forEach items="${searchResult}" var="currentNew">

                    <!-- Blog Post -->
                    <div class="card mb-4">
                        <img class="card-img-top" src="${currentNew.getPicture()}" alt="${currentNew.getTitle()}">
                        <div class="card-body">
                            <h2 class="card-title">${currentNew.getTitle()}</h2>
                            <p class="card-text">${currentNew.getPreviewText()}</p>
                            <a href="/list/${currentNew.getId()}" class="btn btn-primary">Читать далее &rarr;</a>
                        </div>
                        <div class="card-footer text-muted">
                            <b>${currentNew.getWriter()}</b> опубликовано ${currentNew.getDate()}.
                        </div>
                    </div>

                </c:forEach>

            </c:if>

        </div>

        <!-- Sidebar Widgets Column -->
        <div class="col-md-4">
            <jsp:include page="searchWidget.jsp"></jsp:include>
            <jsp:include page="textWidget.jsp"></jsp:include>
        </div>

    </div>
    <!-- /.row -->

</div>


<jsp:include page="footer.jsp"></jsp:include>

</html>
