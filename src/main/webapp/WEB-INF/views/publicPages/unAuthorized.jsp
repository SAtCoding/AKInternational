<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="restricted">
	<h1>404</h1>
	<p>
		Oops! Something is wrong.<br> You are not authorized to access
		the particular page.
	</p>
	<a class="button" onclick="history.go(-1);"><i
		class="fa fa-long-arrow-left"></i> Go back to previous page, It's
		better.</a>
</div>