<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:set var="user" value="${param.username}" scope="session"></c:set>
<c:if test="${user==null||empty user}">
<c:redirect url="UserForm.jsp?msg=User Name Mandatory"/>
</c:if>
<header>
<h1>Shipkart</h1>
<h4>Hello<c:out  value="${user}" default="Shopper"></c:out></h4>
</header>
<c:if test="${user=='admin'}">
<a href="#">Add Products</a>
<a href="#">Delete Products</a>
</c:if>
<c:if test="${user !='admin'&& user !='guest'}">
<a href="#">Browse Products</a>
<a href="#">Add to cart</a>
</c:if>
<c:if test="${user=='guest'}">
<a href="#">Browse Products</a>

</c:if>
</body>
</html>