<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body>
	<sql:setDataSource var="conn" scope="request"
		driver="oracle.jdbc.OracleDriver"
		url="jdbc:oracle:thin:@localhost:1521:xe" user="hr" password="hr" />


	<sql:query var="resultSet" dataSource="${conn}"
		sql="select * from Departments where DEPARTMENT_ID=?" scope="request">
		<sql:param value="40"/>
		</sql:query>
		

		
		<h4>Department List</h4>
		
	<ul>
		<c:forEach items="${requestScope.resultSet.rows}" var="row" >
		
		<li> ${row.DEPARTMENT_ID} | ${row.location_id} | ${row.DEPARTMENT_NAME} 
		
		</c:forEach>
	</ul>



</body>
</html>