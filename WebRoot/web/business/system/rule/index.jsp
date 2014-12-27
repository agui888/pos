	<%@page language="java" contentType="text/html;charset=UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    <script src="${path}/components/jquery-ztree-v3.5.14/js/jquery.ztree.core-3.5.js"></script>
	<link href="${path}/components/jquery-ztree-v3.5.14/css/zTreeStyle/zTreeStyle.css" rel="stylesheet" />
	
	<script>
		$(document).ready(function() {
            setHeight();
        });
        
		var setting = {data: {simpleData: { enable: true } } };
		var zNodes = ${menuList};
		$(document).ready(function(){
			$.fn.zTree.init($("#menuList"), setting, zNodes);
		});
		
		function setHeight() {
		    try {
				var heightVal = Number(document.documentElement.clientHeight) - 48;
		        document.getElementById("metree").style.height = heightVal + "px";
		        document.getElementById("tableIframe").style.height = heightVal + "px";
		    } catch(e) {
		        alert("SetHieght Error:" + e);
		    }		
		} 

		window.onresize = function () {
		    setHeight(); 
		};
	</script> 	
	
		
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	  <tr>
	    <td width="180" valign="top">
	    	<div id="metree" class="dtree" style="width:100%;height:100%; overflow: auto">
	    		<div id="menuList" class="ztree"></div>
	    	</div>
	    </td>
	    <td style="border-left:#e2e2e2 1px solid;" valign="top">
            <iframe id="tableIframe" name="tableIframe" frameborder="0" src="${path}/system/rule_welcome.action" scrolling="auto" width="100%" height="100%"></iframe>
        </td>
	  </tr>
	</table>
	   