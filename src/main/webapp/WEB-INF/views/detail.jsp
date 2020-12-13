<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Student
  Date: 18.01.2020
  Time: 19:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="header.jsp"></jsp:include>

<!-- Page Content -->
<div class="container">

    <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-8">

            <!-- Title -->
            <h1 class="mt-4">${detailNew.getTitle()}</h1>

            <!-- Author -->
            <p class="lead">

                ${detailNew.getWriter()}
            </p>

            <hr>

            <!-- Date/Time -->
            <p>Опубликовано: ${detailNew.getDate()}</p>

            <hr>

            <!-- Preview Image -->
            <img class="img-fluid rounded" src="${detailNew.getPicture()}" alt="${detailNew.getTitle()}" title="${detailNew.getTitle()}">

            <hr>

            <!-- Post Content -->
            <p class="lead">${detailNew.getText()}</p>

            <a href="/list/">&larr; Назад к новостям</a>

            <hr>

        </div>

        <!-- Sidebar Widgets Column -->
        <div class="col-md-4">
            <jsp:include page="searchWidget.jsp"></jsp:include>
            <jsp:include page="textWidget.jsp"></jsp:include>
        </div>

    </div>
    <!-- /.row -->

</div>
<!-- /.container -->

<jsp:include page="footer.jsp"></jsp:include>