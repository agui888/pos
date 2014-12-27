<%@page language="java" contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>系统消息</title>
	<link rel="stylesheet" href="${path}/global/css/base.css" />
	
	<style>
	<!--
	.EM3 {
		font-family: "宋体";
		font-size: 25px;
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
			        <td width="80%" height="25" valign="top" class="EM3" align="left">500</td>
			      </tr>
			      <tr>
			        <td align="left">500!内部服务出现错误,请稍后再试!</td>
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
		        <a href="#" class="easyui-linkbutton" onclick="history.back()">返回</a>
		    </td>
		    <td>
		    	<img src="${path}/global/images/error/msg_11.gif" width="28" height="51" />
		    </td>
		  </tr>
		</table>
	</div>
</body>
</html>
