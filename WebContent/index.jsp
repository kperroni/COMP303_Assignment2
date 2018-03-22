<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="AddToCart">
<h1>Welcome to the E-Shop</h1>
<h3>Select the items that you want for your shopping cart</h3>
<table>
    <tr>
        <th>SKU</th>
        <th>Description</th>
        <th>Number in Stock</th>
        <th>Unit Price</th>
        <th>Brand</th>
        <th>Enter quantity</th>
    </tr>
<c:forEach items="${sessionScope.products}" var="item">
    <tr>
        <td>
            <input type="text" name="sku_${item.getSku()}" value="${item.getSku()}" readonly/>
        </td>
        <td>
            <input type="text" name="description_${item.getSku()}" value="${item.getDescription()}" readonly/>
        </td>
        <td>
            <input type="text" name="numberInStock_${item.getSku()}" value="${item.getNumberInStock()}" readonly/>
        </td>
        <td>
            <input type="text" name="unitPrice_${item.getSku()}" value="${item.getUnitPrice()}" readonly/>
        </td>
        <td>
            <input type="text" name="brand_${item.getSku()}" value="${item.getBrand()}" readonly/>
        </td>
        <td>
            <input type="number" name="quantity_${item.getSku()}"/>
        </td>
        <td>
           <input type="submit" name="buttonSubmit_${item.getSku()}" value="Add to cart" />
        </td>
    </tr>
    </c:forEach>
</table>
</form>
</body>
</html>