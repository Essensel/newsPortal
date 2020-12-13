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
        <div class="col-lg-12">
            <!--CONTENT-->
            <form action="/adduser/" method="post">
                <div class="card my-4">
                    <h5 class="card-header">Регистрация</h5>
                    <div class="card-body">

                        <div class="input-group mb-3">
                            <input
                                    type="text"
                                    class="form-control"
                                    placeholder="Логин"
                                    name="username"
                            >
                        </div>
                        <div class="input-group mb-3">
                            <input
                                    type="text"
                                    class="form-control"
                                    placeholder="Имя"
                                    name="name"
                            >
                        </div>
                        <div class="input-group mb-3">
                            <input
                                    type="text"
                                    class="form-control"
                                    placeholder="Пароль"
                                    name="password"
                            >
                        </div>
                        <div class="input-group mb-3">
                            <input
                                    type="text"
                                    class="form-control"
                                    placeholder="Подтвердить пароль"
                                    name="passwordConfirm"
                            >
                        </div>


                        <div class="input-group">
                            <span class="input-group-btn">
                                <button class="btn btn-secondary" type="submit">Зарегистрироваться</button>
                            </span>
                        </div>

                    </div>
                </div>
            </form>
            <!--CONTENT-->
        </div>
    </div>
</div>

<jsp:include page="footer.jsp"></jsp:include>