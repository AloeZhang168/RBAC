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
	<html:form action="login.do">
		<center><h1>XXXXϵͳ</h1></center>
		<center><span>�û�����</span><html:text property="username"/></center>
		<center><span>���룺</span><html:text property="password"/></center>
		<center><html:submit property="submit" value="�ύ"/></center>
		<center><font color="red">${errormsg}</font></center>
	</html:form>
</body>
</html>



