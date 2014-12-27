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

	 <script src="${path}/global/js/pivotgrid.js"></script>
	 
	 <script>
	    var tableid = "";
	    var tables = new Array();
	    
	 	function deleteTable(){
	 		if(confirm('是否确定清空回收站所有表?'))
            	self.location.href = '${path}/system/oracle_pruge.action?menuid=${menuid}';
	    }
	 </script>
  </head>
  
  <body onLoad="uniteTable(document.getElementById('pg6'),2);">
	<div style="width:98%;">

		<form id="searchForm" name="searchForm" action="${path}/system/oracle_tablesize.action?menuid=${menuid}" method="post">
		</form>
		
		<div style="width: 100%; margin: 10px;" align="left">
			<table width="100%" border="0" cellspacing="0" cellpadding="0" class="GText">
			  <tr>
			    <td width="2%" valign="middle"><img src="${path}/global/images/base/table.gif" /></td>
			    <td width="75%" valign="middle">Oracle 用户表大小</td>
			    <td width="15%" align="right">
			    	<a href="#" class="easyui-linkbutton" onclick="deleteTable();">清空回收站所有表</a>
			    </td>
			    <td width="8%" align="left">
			    	&nbsp;&nbsp;<a href="#" class="easyui-linkbutton" onclick="$('#searchForm').submit()">刷新</a>
			    </td>
			  </tr>
			</table>
		</div>
		
		<table id="pg6" width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#DDDDDD" class="BText" style="margin: 10px;">
		  <tr bgcolor="#F0F4F7">
   		    <td width="4%" height="30" align="center">序列</td>
		    <td width="12%" height="30" align="center">表名</td>
		    <td width="12%" height="30" align="center">对象</td>
		    <td width="4%" align="center">表</td>
		    <td align="center">表说明</td>
		    <td width="6%" align="center">表记录数</td>
		    <td width="9%" align="center">表空间</td>
		    <td width="5%" align="center">表分区</td>
		    <td width="4%" align="center">主键</td>
		    <td width="8%" align="center">索引</td>
		    <td width="9%" align="center">主键/索引表空间</td>
		    <td width="7%" align="center">大小</td>
	  	  </tr>
	  	  
	  	  <c:set var="jsArray" value="0"/>
	  	  <c:set var="totalMB" value="0"/>
	  	  <c:forEach items="${oracleTableSize}" var="ls" varStatus="row">
			  <tr bgcolor='<c:if test="${row.index%2 eq 0}">#FFFFFF</c:if><c:if test="${row.index%2 ne 0}">#FBFDFF</c:if>' 
					      onMouseOver="this.style.background='#EFEFEF'" 
						  onMouseDown="this.style.background='#FFFF66'"  
			 		      onMouseOut="this.style.background='<c:if test="${row.index%2 eq 0}">#FFFFFF</c:if><c:if test="${row.index%2 ne 0}">#FBFDFF</c:if>'">
			    <td align="center" height="18">${row.index + 1}</td>
			    <td>${ls.TAB_NAME}</td>
			    <td height="18" nowrap="nowrap">${ls.SEGMENT_NAME}</td>
			    <td align="center"><c:if test="${ls.TABLE_NAME ne null}">是</c:if></td>
			    <td align="left">${ls.COMMENTS}</td>
			    <td align="right" nowrap="nowrap">
			    	<c:if test="${ls.TABLE_NAME ne null}">
			    		<div id="${ls.TABLE_NAME}"></div>
			    		<script>
				    		tables[${jsArray}] = "${ls.TABLE_NAME}";
			    		</script>
			    		<c:set var="jsArray" value="${jsArray + 1}"/>
			    	</c:if>
			    </td>
			    <td align="left">${ls.TAB_SPACE}</td>
			    <td align="center">${ls.PARTITIONED}</td>
			    <td align="center"><c:if test="${ls.CONSTRAINT_NAME ne null}">${ls.CONSTRAINT_TYPE}</c:if></td>
			    <td align="center" nowrap="nowrap"><c:if test="${ls.CONSTRAINT_NAME eq null}"><c:if test="${ls.INDEX_NAME ne null}">索引 (${ls.INDEX_TYPE})</c:if></c:if></td>
			    <td align="left">${ls.INDEX_SPACE}</td>
			    <td align="right">
			    	${ls.USE_MB} MB
			    	<c:set var="totalMB" value="${totalMB + ls.USE_MB}"/>
			    </td>
			  </tr>
		  </c:forEach>
		</table>	
	
		<div style="margin:10px; width: 100%" align="right" class="RText">
			<b>${totalMB} MB</b>&nbsp;
		</div>
		
		<div style="width: 100%; margin: 10px;" align="left">
		    <div style="width: 350px;" align="left"  class="BText">
			    <div style="line-height: 30px;">主键/约束类型：</div>
				<table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#DDDDDD" class="BText">
				    <tr bgcolor="#F0F4F7">
				      <td align="center"><strong>Type Code</strong></td>
				      <td align="center"><strong>Type Description</strong></td>
				      <td align="center"><strong>Acts On Level</strong></td>
				    </tr>
				    <tr bgcolor="#FFFFFF">
				      <td align="center">C</td>
				      <td>Check on a table</td>
				      <td align="center">Column</td>
				    </tr>
				    <tr bgcolor="#FFFFFF">
				      <td align="center">O</td>
				      <td>Read Only on a view</td>
				      <td align="center">Object</td>
				    </tr>
				    <tr bgcolor="#FFFFFF">
				      <td align="center">P</td>
				      <td>Primary Key</td>
				      <td align="center">Object</td>
				    </tr>
				    <tr bgcolor="#FFFFFF">
				      <td align="center">R</td>
				      <td>Referential AKA Foreign Key</td>
				      <td align="center">Column</td>
				    </tr>
				    <tr bgcolor="#FFFFFF">
				      <td align="center">U</td>
				      <td>Unique Key</td>
				      <td align="center">Column</td>
				    </tr>
				    <tr bgcolor="#FFFFFF">
				      <td align="center">V</td>
				      <td>Check Option on a view</td>
				      <td align="center">Object</td>
				    </tr>
				</table>

			</div>
		</div>
				
		<br/>
	</div>
	
  </body>
</html>
