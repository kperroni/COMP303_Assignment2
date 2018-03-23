<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
table {
    border-collapse: collapse;
    border-spacing: 0;
    width: 100%;
    border: 1px solid #ddd;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

</style>
</head>
<body>
<form method="get" action="index.jsp">
<h1>E-Shop</h1>
<h3>This is your shopping cart</h3>
<table>
    <tr>
        <th>SKU</th>
        <th>Description</th>
        <th>Unit Price</th>
        <th>Quantity</th>
        <th>Total Price</th>
    </tr>
    

<c:forEach items="${sessionScope.products}" var="item" >
<c:set var="numInCart" value="${item.getSku()}_numInCart" />
<c:if test="${sessionScope[numInCart] > 0}">
    <tr>
        <td>
            <c:out value="${item.getSku()}"> </c:out>
        </td>
        <td>
            <c:out value="${item.getDescription()}"> </c:out>
        </td>
        <td>
            <c:out value="${item.getUnitPrice()}" > </c:out>
        </td>
        <td>
            <c:out value="${sessionScope[numInCart]}" > </c:out>
        </td>
        <td>
        <fmt:setLocale value = "en_US"/>
        <fmt:formatNumber value ="${sessionScope[numInCart]*item.getUnitPrice()}" type = "currency"/>
            
        </td>
    </tr>

    </c:if>
    </c:forEach> 
    <tr>
     <td></td>
     <td></td>
     <td></td>
     <td><h4>Total to pay: </h4></td>
    <td>
    <c:set var="total" value="${0}"/>
	<c:forEach var="totalItem" items="${sessionScope.products}">
	<c:set var="numInCart" value="${totalItem.getSku()}_numInCart" />
	<c:set var="total" value="${total+sessionScope[numInCart]*totalItem.getUnitPrice()}" />
	</c:forEach>  
	<fmt:setLocale value = "en_US"/>
        <fmt:formatNumber value="${total}" type = "currency"/>

	</td>   
    </tr>
   
</table>
 	<input type="submit" name="buttonSubmit_${item.getSku()}" value="continue shopping" />
</form>
</body>
</html>