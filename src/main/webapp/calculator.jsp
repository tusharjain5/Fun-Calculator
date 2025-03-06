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
<br>
    <div class="text-center">
    <img src="Gallery/second.gif" alt="" srcset="">
</div>
<div class="text-center text-light">
    <h1>😎😎 कुछ शायरी सुनो  😎😎 </h1>
<h3>🤣<%= request.getAttribute("shayri") %> </h3>
</div>
<br>
<form action="myserv">
<div class="text-center">
<input type="text" name="num1" id="" placeholder="पहला नंबर डालू " class="widthi" required="required"/>
<input type="text" name="num2" id="" placeholder="दुसरा नंबर डालू" class="widthi" required="required"/>
<button name="bt1" value="1" class="widthi2">+</button>
<button name="bt1" value="2" class="widthi2">-</button>
<button name="bt1" value="3" class="widthi2">X</button>
<button name="bt1" value="4" class="widthi2">/</button>
<button name="bt1" value="5" class="widthi2">%</button>
</form>
</div>
<br>
<div class="text-center text-light">
<h1>Ans=<%=request.getAttribute("ans")%>🚩</h1>
</div>
<br>
<div class="text-center text-light">
<a href="index.html" style="font-size: 30px;">Home</a>
</div>
<!-- <div class="text-center text-light">
<a href="history.jsp" style="font-size: 30px;">History</a>
</div> -->
<!-- <div class="text-center text-light"> -->
<%--     <% --%>
     <!--     List<String> history = (List<String>) request.getAttribute("history");
         if (history != null) {            for (String calculation : history) { -->
<%--     %> --%>
<%--             <p><%= calculation %></p> --%>
<%--     <%      } --%>
       <!-- } -->
<%--     %> --%>
<!-- </div> -->






    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>


</body>
</html>