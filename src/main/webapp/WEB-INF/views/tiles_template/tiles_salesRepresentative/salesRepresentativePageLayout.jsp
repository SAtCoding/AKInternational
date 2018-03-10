<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title><tiles:getAsString name="title" /></title>
<!-- Bootstrap Core CSS -->
<link
	href="<c:url  value='/resources/admin/vendor/bootstrap/css/bootstrap.min.css'/>"
	rel="stylesheet" />

<!-- MetisMenu CSS -->
<link
	href="<c:url  value='/resources/admin/vendor/metisMenu/metisMenu.min.css'/>"
	rel="stylesheet">

<!-- DataTables CSS -->
<link
	href="<c:url  value='/resources/admin/vendor/datatables-plugins/dataTables.bootstrap.css'/>"
	rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link
	href="<c:url  value='/resources/admin/vendor/datatables-responsive/dataTables.responsive.css'/>"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="<c:url  value='/resources/admin/dist/css/sb-admin-2.css'/>"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="<c:url  value='/resources/admin/vendor/font-awesome/css/font-awesome.min.css'/>"
	rel="stylesheet" type="text/css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />
<style>
.full-circle {
	background-color: #19B6E0;
	width: 150px;
	height: 150px;
	border-radius: 100%;
	text-align: center;
	line-height: 150px;
	vertical-align: middle;
	padding: 20px;
}
</style>

<!-- jQuery -->
<script
	src="<c:url  value='/resources/admin/vendor/jquery/jquery.min.js'/>"></script>

<!-- Bootstrap Core JavaScript -->
<script
	src="<c:url  value='/resources/admin/vendor/bootstrap/js/bootstrap.min.js'/>"></script>

<!-- Metis Menu Plugin JavaScript -->
<script
	src="<c:url  value='/resources/admin/vendor/metisMenu/metisMenu.min.js'/>"></script>

<!-- DataTables JavaScript -->
<script
	src="<c:url  value='/resources/admin/vendor/datatables/js/jquery.dataTables.min.js'/>"></script>
<script
	src="<c:url  value='/resources/admin/vendor/datatables-plugins/dataTables.bootstrap.min.js'/>"></script>
<script
	src="<c:url  value='/resources/admin/vendor/datatables-responsive/dataTables.responsive.js'/>"></script>

<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="<c:url  value='/resources/admin/dist/js/sb-admin-2.js'/>"></script>
</head>
<body>
	<div id="wrapper">
		<!-- Header Section -->
		<!-- Navigation -->
		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0"> <tiles:insertAttribute name="header" />
		<tiles:insertAttribute name="salesRepresentativeSideBar" /> </nav>
		<!-- /#wrapper -->

		<tiles:insertAttribute name="content" />

	</div>

	<div class="footer">
		<tiles:insertAttribute name="footer" />
	</div>
</body>
</html>