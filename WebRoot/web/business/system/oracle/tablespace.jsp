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

	 <style>
		/*绝对定位 + z-index */ 
		.progressbar_3{ 
		    background-color:#eee; 
		    color:#222; 
		    height:17px; 
		    width:200px; 
		    border:1px solid #bbb; 
		    text-align:center; 
		    position:relative; 
		} 
		.progressbar_3 .bar { 
		    background-color:#6CAF00; 
		    height:16px; 
		    width:0; 
		    position:absolute; 
		    left:0; 
		    top:0; 
		    z-index:10; 
		} 
		.progressbar_3 .text { 
		    height:16px; 
		    position:absolute; 
		    left:0; 
		    top:0; 
		    width:100%; 
		    line-height:16px; 
		    z-index:100; 
		} 
	 </style> 
  </head>
  
  <body>
	<div id="space" style="width:98%;">
		
		<form id="searchForm" name="searchForm" action="${path}/system/oracle_tablespace.action?menuid=${menuid}" method="post">
		</form>
		
		<div style="width: 100%; margin: 10px;" align="left">
			<table width="100%" border="0" cellspacing="0" cellpadding="0" class="GText">
			  <tr>
			    <td width="2%" align="center" valign="middle"><img src="${path}/global/images/base/db1.gif" /></td>
			    <td width="84%" valign="middle">Oracle 表空间使用情况详细信息</td>
			    <td width="14%" align="right">
					<a href="#" class="easyui-linkbutton" onclick="$('#searchForm').submit()">刷新</a>
			    </td>
			  </tr>
			</table>
		</div>
		
		<table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#DDDDDD" class="BText" style="margin: 10px;">
		  <tr bgcolor="#F0F4F7">
			<td width="4%" height="30" align="center">序列</td>
		    <td align="center">表空间名</td>
		    <td width="10%" align="center">表空间大小</td>
		    <td width="10%" align="center">已使用空间</td>
		    <td style="width: 210px;" align="center">使用比</td>
		    <td width="15%" align="center">空闲空间</td>
		    <td width="15%" align="center">最大块</td>
	  	  </tr>
	  	  
	  	  <c:forEach items="${oracleTableSpace}" var="ls" varStatus="row">
			  <tr bgcolor='<c:if test="${row.index%2 eq 0}">#FFFFFF</c:if><c:if test="${row.index%2 ne 0}">#FBFDFF</c:if>' 
					      onMouseOver="this.style.background='#EFEFEF'" 
						  onMouseDown="this.style.background='#FFFF66'" 
			 		      onMouseOut="this.style.background='<c:if test="${row.index%2 eq 0}">#FFFFFF</c:if><c:if test="${row.index%2 ne 0}">#FBFDFF</c:if>'">
			    <td align="center" height="18">${row.index + 1}</td>
			    <td>${ls.TABLESPACENAME}</td>
			    <td align="right">${ls.SIZE_MB} MB</td>
			    <td align="right">${ls.USESIZE_MB} MB</td>
			    <td align="center">
				    <div class="progressbar_3"> 
				        <div class="text">${ls.USE}%</div> 
				        <div class="bar" style="width: ${ls.USE}%;"></div> 
				    </div>
			    </td>
			    <td align="right">${ls.FREE_MB} MB</td>
			    <td align="right">${ls.BLOCK}</td>
			  </tr>
		  </c:forEach>
		</table>
		<br/>
	</div>
	
  </body>
</html>
