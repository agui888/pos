<%@page language="java" contentType="text/html;charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!--[if lt IE 9]>
      <script src="${path}/components/html5/html5shiv.min.js"></script>
      <script src="${path}/components/html5/respond.min.js"></script>
    <![endif]-->
    
    <script src="${path}/components/jquery-easyui-1.3.6/jquery.min.js"></script>
	
	<link rel="stylesheet" href="${path}/components/jquery-ztree-v3.5.14/css/zTreeStyle/zTreeStyle.css" />
	<script src="${path}/components/jquery-ztree-v3.5.14/js/jquery.ztree.core-3.5.js"></script>
	<script src="${path}/components/jquery-ztree-v3.5.14/js/jquery.ztree.excheck-3.5.js"></script>
	 
	<style>
		body {
		   margin-left: 0px;
		   margin-top: 0px;
		   margin-right: 0px;
		   margin-bottom: 0px;
		}
	</style> 
  	 
	<script>
		var zTreeObj;
	    var simpleNodes = ${managePowerMenuJosn};
		
		var setting = {
				check: {
					enable: true,
					autoCheckTrigger: true,
					chkStyle: "checkbox",
					chkboxType : { "Y" : "ps", "N" : "ps" }
				},
				data: {
					simpleData: {
						enable: true,
						idKey: "menuid",
						pIdKey: "sid"
					}
				},
				callback: {
					beforeClick: beforeClick,
					onCheck: onCheck
				}
			};
		
		$(document).ready(function(){
			zTreeObj = $.fn.zTree.init($("#treeMenu"), setting, simpleNodes);
		});
		
		function onCheck(e, treeId, treeNode) {
			var value = "0";
			if (treeNode.checked)
			   value = "1";
			
			$.ajax({
                type: "post",
                url: "${path}/system/managepower_ispower.action?id=" + treeNode.managepowerid + "&value=" + value,
                success: function(result){
                },
                error: function(){
                	alert("保存配置失败!");
                }
            });
		}
		
		function beforeClick(treeId, treeNode) {
			if (treeNode.iframesrc == 'true') {
				document.getElementById("tableIframe").src = "${path}/web/business/system/power/manage/welcome.jsp";
			} else {
				document.getElementById("tableIframe").src = "${path}/system/managepower_list.action?managepowerid=" + treeNode.managepowerid + "&menuid=" + treeNode.menuid;
			}
		}
	 </script>
  </head>
  
  <body>
    
	<table width="100%">
	  <tr>
	    <td width="180" style="border:#e5e5e5 1px solid;" valign="top">
	    	<div style="width: 100%; height: 440px; overflow: auto;" class="zTreeDemoBackground left">
		   	   <ul id="treeMenu" class="ztree"></ul>
		    </div>
	    </td>
	    <td valign="top">
			<iframe id="tableIframe" name="tableIframe" frameborder="0" height="440" src="${path}/web/business/system/power/manage/welcome.jsp" scrolling="auto" width="100%"></iframe>			
	    </td>
	  </tr>
	</table>

  </body>
</html>
