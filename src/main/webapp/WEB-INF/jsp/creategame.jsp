<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create Game</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.4/sockjs.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
    <script src="${contextPath}/resources/js/main.js"></script>
    <link rel="stylesheet"
          href="${contextPath}/resources/css/styles.css"/>

</head>

<body>
<div>


    <form:form method="POST" modelAttribute="gameForm"  class="modal">
        <h2>Create Game</h2>
        <fieldset>
        <div>
            <form:input type="text" path="name" placeholder="Gamename" id="name"
                        autofocus="true"></form:input>${gamenameError}
        </div>
            <p></p>
        <div>
            <button type="submit" class="button">Create</button>
        </div>
            </fieldset>
        <h3><a href="/" class="form-toggle">Main</a></h3>

    </form:form>
</div>
</body>
</html>