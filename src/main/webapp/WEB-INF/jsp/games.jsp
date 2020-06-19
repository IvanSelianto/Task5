<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Games</title>
    <link rel="stylesheet"
          href="${contextPath}/resources/css/styles.css"/>

</head>

<body>

<div>
    <form action="${pageContext.request.contextPath}/games" method="post">
        <div>
            <fieldset>
            <input type="text" path="name" placeholder="Search..." id="name" autofocus="true" name="search">
            <button type="submit" name="action" value="search" id="search" class="button">Search</button>
            <button type="submit" id="searchResult" class="button">Search Result: ${gameId.name}</button>
            </fieldset>
        </div>
        <br>
        <c:forEach items="${games}" var="game">
            <button type="submit" class="button">Name: ${game.name}</button>
        </c:forEach>
    </form>
</div>
</body>
</html>