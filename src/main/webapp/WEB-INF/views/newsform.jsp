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
            <form action="/saveNew/" method="post">
                <div class="card my-4">
                    <h5 class="card-header">${newToUpdate == null ? "Добавить новость" : "Редактировать новость"}</h5>
                    <div class="card-body">

                        <div class="input-group mb-3">
                            <input
                                    type="text"
                                    class="form-control"
                                    placeholder="Заголовок"
                                    name="title"
                                    value="${newToUpdate != null ? newToUpdate.title : ""}"
                            >
                        </div>


                        <div class="input-group mb-3">
                            <textarea
                                    type="text"
                                    class="form-control"
                                    placeholder="Текст"
                                    name="text"
                            >${newToUpdate != null ? newToUpdate.text : ""}</textarea>
                        </div>

                        <div class="input-group mb-3">
                            <input
                                    type="text"
                                    class="form-control"
                                    placeholder="Путь к картинке"
                                    name="imgUrl"
                                    value="${newToUpdate != null ? newToUpdate.picture : ""}"
                            >
                        </div>

                        <div class="input-group mb-3">
                            <input
                                    type="text"
                                    class="form-control"
                                    placeholder="Автор"
                                    name="writer"
                                    value="${newToUpdate != null ? newToUpdate.writer : ""}"
                            >
                        </div>

                        <div class="input-group mb-3">
                            <input
                                    type="text"
                                    class="form-control"
                                    placeholder="Дата публикации"
                                    name="date"
                                    value="${newToUpdate != null ? newToUpdate.date : ""}"
                            >
                        </div>

                        <div class="form-check mb-3">

                            <input
                                    type="checkbox"
                                    class="form-check-input"
                                    name="showOnMain"
                                    value="1"
                                    id="showOnMainCheckbox"
                                    ${(newToUpdate != null && newToUpdate.showOnMain) ? "checked" : ""}
                            >

                            <label class="form-check-label" for="showOnMainCheckbox">
                                Показывать на главной
                            </label>

                        </div>

                        <input type="hidden" name="id" value="${newToUpdate != null ? newToUpdate.id : ""}">

                        <div class="input-group">
                            <span class="input-group-btn">
                                <button class="btn btn-secondary" type="submit">Сохранить</button>
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