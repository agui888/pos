<%@page language="java" contentType="text/html;charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml"> 

  <head>
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 
	 <link rel="stylesheet" href="${path}/global/css/base.css" />
	 <script src="${path}/global/js/base.js"></script>
	
	 <link rel="stylesheet" href="${path}/components/jquery-easyui-1.3.6/themes/default/easyui.css" />
	 <link rel="stylesheet" href="${path}/components/jquery-easyui-1.3.6/themes/icon.css" />

     <script src="${path}/components/jquery-easyui-1.3.6/jquery.min.js"></script>
     <script src="${path}/components/jquery-easyui-1.3.6/jquery.easyui.min.js"></script>
     <script src="${path}/components/jquery-easyui-1.3.6/locale/easyui-lang-zh_CN.js"></script>
  </head>
  
  <body>
	<div style="width:98%;">
		<c:set var="active" value="0"/>
		<c:set var="inactive" value="0"/>
		
		<form id="searchForm" name="searchForm" action="${path}/system/oracle_session.action?menuid=${menuid}" method="post">
		</form>
		
		<div style="width: 100%; margin: 10px;" align="left">
			<table width="100%" border="0" cellspacing="0" cellpadding="0" class="GText">
			  <tr>
			    <td width="2%" valign="middle" align="center"><img src="${path}/global/images/base/session.gif" /></td>
			    <td width="20%" valign="middle">Oracle Session 会话明细</td>
			    <td valign="middle"><div id="div7" style="width:100%; margin: 8px;" align="left" class="RText"></div></td>
			    <td width="14%" align="right">
					<a href="#" class="easyui-linkbutton" onclick="$('#searchForm').submit()">刷新</a>
			    </td>
			  </tr>
			</table>
		</div>
		
		<table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#DDDDDD" class="BText" style="margin: 10px;">
		  <tr bgcolor="#F0F4F7">
   		    <td width="4%" height="30" align="center">序列</td>
		    <td width="10%" height="30" align="center">SID 会话ID号</td>
		    <td width="15%" align="center">SERIAL# 会话的序列号</td>
		    <td width="20%" align="center">建立会话用户</td>
		    <td align="center">会话连接工具</td>
		    <td width="20%" align="center">Machine</td>
		    <td width="10%" align="center">会话状态</td>
	  	  </tr>
	  	  
	  	  <c:forEach items="${oracleSession}" var="ls" varStatus="row">
			  <c:if test="${ls.STATUS eq 'ACTIVE'}">
				   <c:set var="active" value="${active + 1}"/>
			  </c:if>
			  <c:set var="inactive" value="${inactive + 1}"/>	  	  
			  
			  <tr bgcolor='<c:if test="${row.index%2 eq 0}">#FFFFFF</c:if><c:if test="${row.index%2 ne 0}">#FBFDFF</c:if>' 
					      onMouseOver="this.style.background='#EFEFEF'" 
						  onMouseDown="this.style.background='#FFFF66'" 
			 		      onMouseOut="this.style.background='<c:if test="${row.index%2 eq 0}">#FFFFFF</c:if><c:if test="${row.index%2 ne 0}">#FBFDFF</c:if>'">			  
  			    <td align="center" height="18">${row.index + 1}</td>
			    <td>${ls.SID}</td>
			    <td align="left">${ls.SERIAL}</td>
			    <td align="left">${ls.USERNAME}</td>
			    <td align="left">${ls.PROGRAM}</td>
			    <td align="left">${ls.MACHINE}</td>
			    <td align="left">${ls.STATUS}</td>
			  </tr>
		  </c:forEach>
		</table>
		
		<script>
		   document.getElementById("div7").innerHTML = "最大连接数：${oracleProcesses}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前连接数:${inactive}&nbsp;&nbsp;&nbsp;&nbsp;并发连接数:${active}";
		</script>
	</div>
	<br/>
	
  </body>
</html>
