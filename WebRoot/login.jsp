<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>RBACϵͳ��¼ҳ��</title>
</head>
<body>
	<html:form action="login.do">
		<div style="margin:0px auto;width:300px;">
			<h1>RBACϵͳ</h1>
			<div>�û�����<html:text property="username"/></div>
			<div>��&nbsp;&nbsp;�룺<html:password property="password"/></div>
			<center><html:submit property="submit" value="��¼"/></center>
			<div><font color="red">${errormsg}</font></div>
		</div>
	</html:form>
</body>
</html>



