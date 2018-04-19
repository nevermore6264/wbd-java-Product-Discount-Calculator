<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 4/19/2018
  Time: 1:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product Discount Calculator</title>
    <style>
        #content {
            width: 450px;
            margin: 0 auto;
            padding: 0px 20px 20px;
            background: white;
            border: 2px solid navy;
        }

        label {
            width: 10em;
            padding-right: 1em;
            float: left;
        }

        div {
            display: block;
        }
    </style>
</head>
<body>
<div id="content">
    <h1>Product Discount Calculator</h1>
    <form method="post" action="GetProductServlet">
        <div id="data">
            <label>Product Description:</label>
            <input type="text" name="description"><br>
            <label>List Price:</label>
            <input type="text" name="price"><br>
            <label>Discount Percent:</label>
            <input type="text" name="discount_percent"><br>
        </div>
        <div id="buttons">
            <label>&nbsp;</label>
            <input type="submit" value="Calculate Discount">
        </div>
    </form>
</div>
</body>
</html>
