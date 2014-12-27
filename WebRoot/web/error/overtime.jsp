<%@page language="java" contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>操作超时</title>
	<link rel="stylesheet" href="${path}/global/css/base.css" />
	
	<script>
	   function gotoURL() {
	      top.window.location.href = "${path}/system/login_enter.action";
	   }
	</script>
	
	<style>
	<!--
	.EM3 {
		font-family: "宋体";
		font-size: 13px;
		color: #FF0000;
	    font-weight: bold;
	}
	-->
	</style>
</head>

<body>
	
	<div align="center" style="margin-top: 80px;">
		<table width="511" border="0" cellspacing="0" cellpadding="0" class="BText">
		  <tr>
		    <td width="28"><img src="${path}/global/images/error/msg_01.gif" width="28" height="27" /></td>
		    <td width="455" style="background:url(${path}/global/images/error/msg_03.gif)" class="WText"  align="left">系统提示</td>
		    <td width="28"><img src="${path}/global/images/error/msg_05.gif" width="28" height="27" /></td>
		  </tr>
		  <tr>
		    <td>
		    	<img src="${path}/global/images/error/msg_06.gif" width="28" height="138" />
		    </td>
		    <td>
			    <table width="100%" border="0" cellspacing="4" cellpadding="0" class="BText">
			      <tr>
			        <td width="20%" rowspan="3" align="center">
			        	<img src="${path}/global/images/error/msg_00.gif" border="0" />
			        </td>
			        <td width="80%" height="25" valign="top" class="EM3" align="left">操作超时，请重新登录。</td>
			      </tr>
			      <tr>
			        <td align="left">为什么需要重新登录？</td>
			      </tr>
			      <tr>
			        <td align="left">由于您长时间未操作系统，或者网络出现问题，为保证系统安全，自动退出系统，请您重新登录。</td>
			      </tr>
			    </table>
		    </td>
		    <td>
		    	<img src="${path}/global/images/error/msg_08.gif" width="28" height="138" />
		    </td>
		  </tr>
		  <tr>
		    <td>
		    	<img src="${path}/global/images/error/msg_09.gif" width="28" height="51" />
		    </td>
		    <td style="background:url(${path}/global/images/error/msg_10.gif)" align="center">
		        <a href="#" class="easyui-linkbutton" onclick="gotoURL();">重新登录</a>
		    </td>
		    <td>
		    	<img src="${path}/global/images/error/msg_11.gif" width="28" height="51" />
		    </td>
		  </tr>
		</table>
	</div>
</body>
</html>