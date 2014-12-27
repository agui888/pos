<%@page language="java" contentType="text/html;charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

	<DIV style="width:98%;">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="BText" style="margin: 10px;">
		  <tr>
		    <td width="50%" height="30" style="border-right:#F3F3F3 1px solid;">&nbsp;<b>已授予的角色</b></td>
		    <td width="50%">&nbsp;<b>已授予的系统权限</b></td>
		  </tr>
		  <tr>
		    <td valign="top" style="border-right:#F3F3F3 1px solid;" align="center">
				<c:forEach items="${oracleUserRolePrivs}" var="ls">
				   <div style="width:95%; line-height:19px; margin: 5px;border-top:#F3F3F3 1px solid;" align="left">&nbsp;&nbsp;${ls.GRANTED_ROLE}</div>
				</c:forEach>
				<div style="width:95%; line-height:19px; margin: 5px;border-top:#F3F3F3 1px solid;" align="left">&nbsp;</div>
		    </td>
		    <td valign="top" align="center">
				<c:forEach items="${oracleUserSysPrivs}" var="ls">
				   <div style="width:95%; line-height:19px; margin: 5px;border-top:#F3F3F3 1px solid;" align="left">&nbsp;&nbsp;${ls.PRIVILEGE}</div>				   
				</c:forEach>
				<div style="width:95%; line-height:19px; margin: 5px;border-top:#F3F3F3 1px solid;" align="left">&nbsp;</div>
		    </td>
		  </tr>  
		</table>
		<br/>
	</DIV>

