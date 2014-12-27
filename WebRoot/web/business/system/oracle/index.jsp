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
	
	<script src="${path}/global/js/dateFormat.js"></script>	
	
	<script>
	    var grid = null;
	    
		function builder(){
			grid = $('#cxGrid').datagrid({
				url: '${URI}_indexdata.action?menuid=${menuid}',
				width:'auto',
				height: top.document.getElementById("Iframe1").offsetHeight - 40,
				columns:[[
	 			    {field:'name',title:'服务器名',width:65,align:'left'},
				    {field:'Processes',title:'最大连接数',width:65,align:'left'},
				    {field:'SessionAll',title:'当前连接数',width:65,align:'left'},
				    {field:'SessionActive',title:'并发连接数',width:65,align:'left'},
			]]
				
			});
		}
		
		$(function(){
			builder();
			//setInterval("f1()",10000);
		});	
	</script>
	
</head>
	 
<body>
	<div id="mainDiv" style="width:99%; height:90%; margin-top: 8px; margin-left: 5px; margin-right: 5px;">
		<div style="margin-top: 8px; width: 100%;">	    
	    	<div class="panel-header" style="font-size:12px;line-height:15px;" >
	    		<span style="color:#0E2D5F;font-weight:bold;padding-left:5px;">数据库监控</span>
	    	</div>
	    	<div id="cxGrid"></div>
	    </div>
	</div>
  </body>
</html>
