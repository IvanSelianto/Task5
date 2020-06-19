<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>


<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <title>Spring Boot WebSocket Chat Application | CalliCoder</title>
    <link rel="stylesheet"
          href="${contextPath}/resources/css/main.css"/>
    <link rel="stylesheet"
          href="${contextPath}/resources/css/styles.css"/>
</head>
<body>
<noscript>
    <h2>Sorry! Your browser doesn't support Javascript</h2>
</noscript>


<div id="username-page">
    <div>

        <form id="usernameForm" name="usernameForm">
            <fieldset class="modal">
            <h2 class="title">Type your username</h2>

                <p>
                    <input type="text" id="name" placeholder="Username"  autofocus="true"/></p>
                <p>
                    <button type="submit" class="button">Start</button>
                </p>


            </fieldset>
        </form>

    </div>
</div>
<h1 id="playerName"></h1>
<div id="chat-page" class="hidden">

    <form id="messageForm" name="messageForm" nameForm="messageForm" >
        <table align="center" cellspacing="150" class="table-fill modal">
            <tbody>

            <tr>
                <td><input class="cell" id="0 0" Y="0" X="0" name="0 0" value="" type="submit"
                           onclick="give(this.id)"></td>
                <td><input class="cell" id="0 1" Y="0" X="1" name="0 1" value="" type="submit"
                           onclick="give(this.id)"></td>
                <td><input class="cell" id="0 2" Y="0" X="2" name="0 2" value="" type="submit"
                           onclick="give(this.id)"></td>
            </tr>
            <tr>
                <td><input class="cell" id="1 0" Y="1" X="0" name="1 0" value="" type="submit"
                           onclick="give(this.id)"></td>
                <td><input class="cell" id="1 1" Y="1" X="1" name="1 1" value="" type="submit"
                           onclick="give(this.id)"></td>
                <td><input class="cell" id="1 2" Y="1" X="2" name="1 2" value="" type="submit"
                           onclick="give(this.id)"></td>
            </tr>
            <tr>
                <td><input class="cell" id="2 0" Y="2" X="0" name="2 0" value="" type="submit"
                           onclick="give(this.id)"></td>
                <td><input class="cell" id="2 1" Y="2" X="1" name="2 1" value="" type="submit"
                           onclick="give(this.id)"></td>
                <td><input class="cell" id="2 2" Y="2" X="2" name="2 2" value="" type="submit"
                           onclick="give(this.id)"></td>
            </tr>
            </tbody>
        </table>
    </form>

</div>


<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.4/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<script src=
                "${contextPath}/resources/js/main.js">
</script>

</body>
</html>