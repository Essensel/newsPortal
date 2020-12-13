<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Student
  Date: 18.01.2020
  Time: 19:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Heroic Features - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/heroic-features.css" rel="stylesheet">

</head>

<body>

<jsp:include page="header.jsp"></jsp:include>

<!-- Page Content -->
<div class="container">

    <!-- Jumbotron Header -->
    <header class="jumbotron my-4">
        <h1 class="display-3">Новостной портал</h1>
        <p class="lead">Свежие новости!</p>
        <a href="/list/" class="btn btn-primary btn-lg">Читать новости</a>
    </header>

    <!-- Page Features -->
    <div class="row text-center">

        <c:forEach items="${newsList}" var="newItem">

            <div class="col-lg-3 col-md-6 mb-4">
                <div class="card h-100">
                    <img class="card-img-top" src="${newItem.getPicture()}" alt="">
                    <div class="card-body">
                        <h4 class="card-title">${newItem.getTitle()}</h4>
                        <p class="card-text">${newItem.getPreviewText()}</p>
                    </div>
                    <div class="card-footer">
                        <a href="/list/${newItem.getId()}" class="btn btn-primary">Читать далее</a>
                    </div>
                </div>
            </div>
        </c:forEach>

         </div>

</div>
<!-- /.row -->

</div>
<!-- /.container -->

<jsp:include page="footer.jsp"></jsp:include>
