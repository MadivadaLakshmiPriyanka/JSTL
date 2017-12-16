<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<body>
	<c:set var="price" value="122500.14524323"/>
	
	<h3>Formatting Numbers</h3>
		Two Fraction digits :
		<fmt:formatNumber value="${price}" type="number" maxFractionDigits="4" />
	<br>Min fraction digits (5):
	 <fmt:formatNumber value="${price}" type="number" minFractionDigits="5"/>
	
    <br>Currency : <fmt:formatNumber value="${price}" type="currency" maxFractionDigits="2"/>
	<br>Percent : <fmt:formatNumber value=".0025" type="percent" maxFractionDigits="1"/>
	
	<h3>Formatting Dates</h3>
	
	<c:set var="today" value="<%= new Date() %>"/>
	
	Date Style 1 : <fmt:formatDate value="${today}" type="date"/>
	<br>Date Style 2 : <fmt:formatDate value="${today}" type="time"/>
	<br>Date Style 2 : <fmt:formatDate value="${today}" type="both"/>

	<br>Date Pattern 1 : <fmt:formatDate value="${today}" pattern="dd-MM-yyyy"/>

</body>
</html>