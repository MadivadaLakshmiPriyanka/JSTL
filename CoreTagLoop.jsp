<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:import url="Header.jsp">
	<c:param name="page" value="Departments"></c:param>
</c:import>
<%
ArrayList<String> stateList=new ArrayList();
stateList.add("Karnataka");
stateList.add("Maharashtra");
stateList.add("Punjab");
request.setAttribute("states",stateList);
%>
<h4>List of States</h4>
<ul>
	<c:forEach items="${states}" var="state" begin="0" end="2" step="2" varStatus="status">
	<li>${state}&nbsp;&nbsp;&nbsp;${status.count}&nbsp;&nbsp;&nbsp;${status.index}</li>
	</c:forEach>
</ul>

</body>
</html>