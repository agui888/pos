	<%@page language="java" contentType="text/html;charset=UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@taglib prefix="s" uri="/struts-tags"%>


	<c:if test="${message ne null}">    
    <script>
    $(document).ready(function() {
    	alertBootstrap("${message}");
    });
    </script>
    </c:if>

    <form id="saveForm" name="saveForm" method="post" action="${path}/system/param_save.action">
    	<input type="hidden" id="menuid" name="menuid" value="${menuid}" />
		    
        <div align="center" style="margin-top:10px; width: 100%">
			<table width="98%" border="0" class="table-xs table-bo">
			  <tr>
			    <td width="12%" bgcolor="#ecf4fe" align="right" height="20">系统名称</td>
			    <td width="25%" align="left" class="input-group-xs">
			        <input class="form-control" type="text" name="paramEntity.appname" style="width:98%" maxlength="2000" value="${paramEntity.appname}" />
			    </td>
			    <td align="left">
			       &nbsp;
			    </td>
			  </tr>
			  <tr>
			    <td bgcolor="#ecf4fe" align="right" height="20">用户单位信息</td>
			    <td align="left" class="input-group-xs">
			        <input class="form-control" type="text" name="paramEntity.usercompany" style="width:98%" maxlength="2000" value="${paramEntity.usercompany}" />
			    </td>
			    <td align="left">
			       &nbsp;
			    </td>
			  </tr>
			  <tr>
			    <td bgcolor="#ecf4fe" align="right" height="20">支持单位信息</td>
			    <td align="left" class="input-group-xs">
			        <input class="form-control" type="text" name="paramEntity.softcompany" style="width:98%" maxlength="2000" value="${paramEntity.softcompany}" />
			    </td>
			    <td align="left">
			       &nbsp;
			    </td>
			  </tr>
			  <tr>
			    <td bgcolor="#ecf4fe" align="right" height="20">支持电话</td>
			    <td align="left" class="input-group-xs">
			        <input class="form-control" type="text" name="paramEntity.phone" style="width:98%" maxlength="200" value="${paramEntity.phone}" />
			    </td>
			    <td align="left">
			       &nbsp;系统技术支持商电话.
			    </td>
			  </tr>
			  <tr>
			    <td bgcolor="#ecf4fe" align="right" height="20">操作系统类型</td>
			    <td align="left">
			        <s:radio id="system" theme="simple" name="paramEntity.system" list="#{'Windows':'Windows','Linux':'Linux'}"/>
			    </td>
			    <td align="left">
			       &nbsp;Windows 或 Linux
			    </td>
			  </tr>
			  <tr>
			    <td bgcolor="#ecf4fe" align="right" height="20">POP3</td>
			    <td align="left" class="input-group-xs">
			        <input class="form-control" type="text" name="paramEntity.pop3" style="width:98%" maxlength="255" value="${paramEntity.pop3}" />
			    </td>
			    <td align="left">
			       &nbsp;邮件POP3服务器: pop.server.com
			    </td>
			  </tr>
			  <tr>
			    <td bgcolor="#ecf4fe" align="right" height="20">STMP</td>
			    <td align="left" class="input-group-xs">
			        <input class="form-control" type="text" name="paramEntity.stmp" style="width:98%" maxlength="255" value="${paramEntity.stmp}" />
			    </td>
			    <td align="left">
			       &nbsp;邮件SMTP服务器: smtp.server.com
			    </td>
			  </tr>
			  <tr>
			    <td bgcolor="#ecf4fe" align="right" height="20">帐户</td>
			    <td align="left" class="input-group-xs">
			        <input class="form-control" type="text" name="paramEntity.login" style="width:98%" maxlength="255" value="${paramEntity.login}" />
			    </td>
			    <td align="left">
			       &nbsp;邮件帐户
			    </td>
			  </tr>
			  <tr>
			    <td bgcolor="#ecf4fe" align="right" height="20">密码</td>
			    <td align="left" class="input-group-xs">
			        <input class="form-control" type="text" name="paramEntity.pass" style="width:98%" maxlength="255" value="${paramEntity.pass}" />
			    </td>
			    <td align="left">
			       &nbsp;邮件密码
			    </td>
			  </tr>
			  <tr>
			    <td bgcolor="#ecf4fe" align="right" height="20">版本</td>
			    <td align="left" class="input-group-xs">
			        <input class="form-control" type="text" name="paramEntity.version" style="width:98%" maxlength="10" value="${paramEntity.version}" readonly />
			    </td>
			    <td align="left">
			       &nbsp;系统版本号（当前值不能编辑）
			    </td>
			  </tr>
			  <tr>
			    <td bgcolor="#ecf4fe" align="right" height="20">系统访问总数</td>
			    <td align="left" class="input-group-xs">
			        <input class="form-control" type="text" name="paramEntity.visits" style="width:98%" maxlength="10" value="${paramEntity.visits}" readonly />
			    </td>
			    <td align="left">
			       &nbsp;系统用户累计访问数（当前值不能编辑）
			    </td>
			  </tr>
			</table>
		</div>
			
		<div style="margin-top: 5px;" align="center">
			<button type="submit" class="btn btn-sm btn-success">
				<span class="glyphicon glyphicon-floppy-disk"></span> 保 存
			</button>
		</div>
		<br/>		

	</form>
	