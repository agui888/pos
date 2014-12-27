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

		<form id="searchForm" name="searchForm" action="${path}/system/oracle_pga.action?menuid=${menuid}" method="post">
		</form>
		
		<div style="width: 100%; margin: 10px;" align="left">
			<table width="100%" border="0" cellspacing="0" cellpadding="0" class="GText">
			  <tr>
			    <td width="2%" valign="middle" align="center"><img src="${path}/global/images/base/pga1.gif" /></td>
			    <td valign="middle">Oracle PGA</td>
			    <td width="14%" align="right">
					<a href="#" class="easyui-linkbutton" onclick="$('#searchForm').submit()">刷新</a>
			    </td>
			  </tr>
			</table>
		</div>
		
		<table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#DDDDDD" class="BText" style="margin: 10px;">
		  <tr bgcolor="#F0F4F7">
			<td width="4%" height="30" align="center">序列</td>
		    <td align="center">参名</td>
		    <td width="40%" align="center">值</td>
		    <td width="20%" align="center">值(MB)</td>
	  	  </tr>
	  	  
	  	  <c:forEach items="${oraclePGA}" var="ls" varStatus="row">
			  <tr bgcolor='<c:if test="${row.index%2 eq 0}">#FFFFFF</c:if><c:if test="${row.index%2 ne 0}">#FBFDFF</c:if>' 
					      onMouseOver="this.style.background='#EFEFEF'" 
						  onMouseDown="this.style.background='#FFFF66'" 
			 		      onMouseOut="this.style.background='<c:if test="${row.index%2 eq 0}">#FFFFFF</c:if><c:if test="${row.index%2 ne 0}">#FBFDFF</c:if>'">
				<td align="center" height="18">${row.index + 1}</td>
			    <td>${ls.NAME}</td>
			    <td align="right">${ls.VALUE} ${ls.UNIT}</td>
			    <td align="right">${ls.MB} MB</td>
			  </tr>
		  </c:forEach>
		</table>
		<br/>
	</div>
  </body>
</html>
