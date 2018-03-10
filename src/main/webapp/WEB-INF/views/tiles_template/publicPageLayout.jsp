<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 	<title><tiles:getAsString name="title"/></title>
 	<tiles:insertAttribute name="header"/>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<tiles:insertAttribute name="slider"/>
	<tiles:insertAttribute name="content"/>
	
	<div class="footer">
		<tiles:insertAttribute name="footer"/>
	</div>
</body>
</html>