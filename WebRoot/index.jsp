<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>��¼ҳ��</title>
</head>
<body>
	��¼�û���:<c:out value="${sessionScope['user'].username}"></c:out>
	<br/>
	��¼�û���ʵ����:<c:out value="${sessionScope['user'].realname}"></c:out>
</body>
</html>



