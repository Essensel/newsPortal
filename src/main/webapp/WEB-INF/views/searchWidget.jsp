<%--
  Created by IntelliJ IDEA.
  User: Student
  Date: 12.02.2020
  Time: 21:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Search Widget -->
<form action="/search" method="get">
<div class="card my-4">
    <h5 class="card-header">Поиск</h5>
    <div class="card-body">
        <div class="input-group">
            <input type="text" class="form-control" placeholder="Введите запрос" name="q" value="${query}">
            <span class="input-group-btn">
                <button class="btn btn-secondary" type="submit">Искать!</button>
              </span>
        </div>
    </div>
</div>
</form>