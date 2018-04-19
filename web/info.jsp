<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 4/19/2018
  Time: 2:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        #content {
            width: 450px;
            margin: 0 auto;
            padding: 0px 20px 20px;
            background: white;
            border: 2px solid navy;
        }

        user agent stylesheet
        div {
            display: block;
        }
    </style>
</head>
<body>
<div id="content">
    <h1>Product Discount Calculator</h1>

    <label>Product Description: </label>
    <span><%=request.getAttribute("description")%></span><br>

    <label>Price: </label>
    <span>$<%=request.getAttribute("price")%></span><br>

    <label>Discount Percent: </label>
    <span><%=request.getAttribute("discount_percent")%></span><br>

    <label>Discount Amount: </label>
    <span>$<%=request.getAttribute("discountAmount")%></span><br>

    <label>Discount Price: </label>
    <span>$<%=request.getAttribute("discountPrice")%></span><br>
</div>
</body>
</html>
