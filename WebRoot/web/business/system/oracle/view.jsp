<%@page language="java" contentType="text/html;charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	 <style>
	 	body {
		   margin-left: 0px;
		   margin-top: 0px;
		   margin-right: 0px;
		   margin-bottom: 0px;
		}
	 </style>
	 
	 <script>
		$(function(){ 
		    var heightVal = Number(document.documentElement.clientHeight) + 100;
			$("#oracle").tabs({ 
				width:"auto", 
				height:heightVal 
			}); 
		}); 
	</script>	 
	 	
	<table width="100%" border="0" cellpadding="0" cellspacing="0" class="LText">
	  <tr>
	    <td height="31" valign="bottom">
	    	&nbsp;&nbsp;&nbsp;<img src="${path}/global/images/base/oralogo-small.gif" width="133" height="18" />
	    	<c:forEach items="${oracleVersion}" var="ls" varStatus="row">
				<c:if test="${row.index eq 0}">	
				   &nbsp;&nbsp;${ls.BANNER}<br/>	
				</c:if>
			</c:forEach>
	    </td>
      </tr>
	  <tr>		
	    <td width="22%" height="22" align="right" nowrap="nowrap">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户：${oracleUser}  (
             <c:forEach items="${oracleUserTableSpace}" var="ls">
                                   默认表空间：${ls.DEFAULT_TABLESPACE}&nbsp;/&nbsp;
                                   临时表空间：${ls.TEMPORARY_TABLESPACE}
             </c:forEach>)&nbsp;&nbsp;<span class="RText">数据块大小：${oracleBlock} KB</span>&nbsp;&nbsp;
	    </td>
	  </tr>
	</table>	
	
	<div id="oracle" class="easyui-tabs" data-options="tools:'#tab-tools',width:'auto',height:'auto', border:true, plain:true">
		<div title="角色与权限" data-options="closable:false,cache:false,href:'${path}/system/oracle_rolepower.action?menuid=${menuid}'"></div>
		<div title="表空间" data-options="closable:false,cache:false">
			<iframe scrolling="yes" frameborder="0" style="width:100%;height:100%;" src="${path}/system/oracle_tablespace.action?menuid=${menuid}"></iframe>
		</div>
		<div title="物理文件空间" data-options="closable:false,cache:false">
			<iframe scrolling="yes" frameborder="0" style="width:100%;height:100%;" src="${path}/system/oracle_filespace.action?menuid=${menuid}"></iframe>
		</div>
		<div title="用户表大小" data-options="closable:false,cache:false">
			<iframe scrolling="yes" frameborder="0" style="width:100%;height:100%;" src="${path}/system/oracle_tablesize.action?menuid=${menuid}"></iframe>
		</div>
		<div title="系统会话" data-options="closable:false,cache:false">
			<iframe scrolling="yes" frameborder="0" style="width:100%;height:100%;" src="${path}/system/oracle_session.action?menuid=${menuid}"></iframe>
		</div>
		<div title="系统参数" data-options="closable:false,cache:false">
			<iframe scrolling="yes" frameborder="0" style="width:100%;height:100%;" src="${path}/system/oracle_parameter.action?menuid=${menuid}"></iframe>
		</div>
		<div title="PGA 参数" data-options="closable:false,cache:false">
			<iframe scrolling="yes" frameborder="0" style="width:100%;height:100%;" src="${path}/system/oracle_pga.action?menuid=${menuid}"></iframe>
		</div>
		<div title="SGA 参数" data-options="closable:false,cache:false">
			<iframe scrolling="yes" frameborder="0" style="width:100%;height:100%;" src="${path}/system/oracle_sga.action?menuid=${menuid}"></iframe>
		</div>
	</div>
	
