
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath}"/>

<c:set var="img" value="/resources/images" />
<c:set var="css" value="/resources/css" />
<c:set var="js" value="/resources/js" />

<script src="<c:url value="${js}/angular.js"/>"></script>
<script src="<c:url value="${js}/jquery-3.1.1.min.js"/>"></script>
<script src="<c:url value="${js}/bootstrap.js"/>"></script>
<link rel="stylesheet" href="<c:url value="${css}/bootstrap.css"/>">
