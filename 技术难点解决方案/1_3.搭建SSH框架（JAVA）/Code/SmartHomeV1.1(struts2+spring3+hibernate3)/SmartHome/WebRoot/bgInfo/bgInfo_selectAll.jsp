﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String root = request.getContextPath();
	pageContext.setAttribute("root", root);
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + root + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title></title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
	</head>
	<body>
	<table border="1">
		<tr>
			<td>序号</td>
			<td>infoId</td>
			<td>adminId</td>
			<td>infoTypeId</td>
			<td>infoCon</td>
			<td>infoTitle</td>
			<td>infoDate</td>
			<td>infoHits</td>
		</tr>
		<c:forEach var="bgInfo" items="${list}" varStatus="i">
		<tr>
			<td>${i.index + 1}</td>
			<td>${bgInfo.infoId}</td>
			<td>${bgInfo.adminId}</td>
			<td>${bgInfo.infoTypeId}</td>
			<td>${bgInfo.infoCon}</td>
			<td>${bgInfo.infoTitle}</td>
			<td><fmt:formatDate value="${bgInfo.infoDate}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
			<td>${bgInfo.infoHits}</td>
		</tr>
		</c:forEach>
	</table>
	</body>
</html>