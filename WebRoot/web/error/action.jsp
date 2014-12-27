<%@page language="java" contentType="text/html;charset=UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>访问错误</title>
	<link rel="stylesheet" href="${path}/global/css/base.css" />
</head>

<body>
    <div>
    	<div style="float: left; width: 64px;" align="center">
    		<img src="${path}/global/images/error/error.png" border="0" />
    	</div>
    	<H1>访问错误!</H1>
    </div>
	
	<div style="margin-left: 64px;">
		<div class="BText" style="line-height: 23px;">
			最可能的原因是:
		</div>
        <div style="line-height: 23px; margin-left: 10px;" class="GText">
           	<img src="${path}/global/images/error/bullet.png" style="vertical-align: text-top; border-style: none; margin-right: 0px; margin-top: -1px; "/>系统后台出显严重错误。
		</div>
		<div style="line-height: 23px; margin-left: 10px;" class="GText">
           	<img src="${path}/global/images/error/bullet.png" style="vertical-align: text-top; border-style: none; margin-right: 0px; margin-top: -1px; "/>该系统遇到了问题。
		</div>
		
		<div class="BText" style="line-height: 23px; margin-top: 15px;">
			您可以尝试以下操作:
		</div>
		<div style="line-height: 23px; margin-left: 10px;" class="GText">
           	<img src="${path}/global/images/error/bullet.png" style="vertical-align: text-top; border-style: none; margin-right: 0px; margin-top: -1px; "/>请与系统管理联系。
		</div>
	</div>
	
	<div style="line-height: 23px; margin-left: 10px; margin-top: 25px;" class="BText">
        <img src="${path}/global/images/error/down.png" style="vertical-align: text-top; border-style: none; margin-right: 0px; margin-top: -1px; "/>&nbsp;错误信息:
	</div>
	<div style="width:98%; margin-left: 20px; margin-top: 5px;" class="BText">
        <s:property value="exception.message"/>
		<s:property value="exceptionStack" />
    </div>

</body>
</html>
