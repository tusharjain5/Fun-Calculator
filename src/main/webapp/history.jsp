
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>देसी कैलकुलेटर</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="Css/cal.css">
    <link rel="icon" type="image/x-icon" href="Gallery/favicon.png">
</head>
<body>
    <div class="text-center">
    <img src="Gallery/third.gif" alt="" srcset="">
</div>
<div class="text-center text-light">
<a href="index.html" style="font-size: 30px;">Home</a>
</div>
<div class="text-center text-light">
    <h2>History</h2>
    <%
        List<String> history = (List<String>) request.getAttribute("history");
        if (history != null) {
            for (String calculation : history) {
    %>
            <p><%= calculation %></p>
    <%      }
        }
    %>
</div>






    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

</body>
</html>