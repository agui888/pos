<%@page language="java" contentType="text/html;charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <!-- bootstrap & fontawesome -->
	<link rel="stylesheet" href="${path}/components/ace-1.3.1/assets/css/bootstrap.min.css" />
	<link rel="stylesheet" href="${path}/components/ace-1.3.1/assets/css/font-awesome.min.css" />
	
	<!-- page specific plugin styles -->

	<!-- text fonts -->
	<link rel="stylesheet" href="${path}/components/ace-1.3.1/assets/css/ace-fonts.css" />

	<!-- ace styles -->
	<link rel="stylesheet" href="${path}/components/ace-1.3.1/assets/css/ace.min.css" id="main-ace-style" />

	<!--[if lte IE 9]>
		<link rel="stylesheet" href="${path}/components/ace-1.3.1/assets/css/ace-part2.min.css" />
	<![endif]-->
	<link rel="stylesheet" href="${path}/components/ace-1.3.1/assets/css/ace-skins.min.css" />
	<link rel="stylesheet" href="${path}/components/ace-1.3.1/assets/css/ace-rtl.min.css" />


	<!--[if lte IE 9]>
	  <link rel="stylesheet" href="${path}/components/ace-1.3.1/assets/css/ace-ie.min.css" />
	<![endif]-->
	
	<!-- inline styles related to this page -->

	<!-- ace settings handler -->
	<script src="${path}/components/ace-1.3.1/assets/js/ace-extra.min.js"></script>
	
	<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

	<!--[if lte IE 8]>
	<script src="${path}/components/ace-1.3.1/assets/js/html5shiv.min.js"></script>
	<script src="${path}/components/ace-1.3.1/assets/js/respond.min.js"></script>
	<![endif]-->

	<!--  Tobin Begin -->		
	<!-- EasyUI Grid Begin -->
	<link rel="stylesheet" href="${path}/components/jquery-easyui-1.3.6/themes/default/panel.css" />
	<link rel="stylesheet" href="${path}/components/jquery-easyui-1.3.6/themes/default/datagrid.css" />
	<link rel="stylesheet" href="${path}/components/jquery-easyui-1.3.6/themes/default/pagination.css" />
	<link rel="stylesheet" href="${path}/components/jquery-easyui-1.3.6/themes/default/linkbutton.css" />
	<link rel="stylesheet" href="${path}/components/jquery-easyui-1.3.6/themes/icon.css" />

    <script src="${path}/components/jquery-easyui-1.3.6/jquery.min.js"></script>
    <script src="${path}/components/jquery-easyui-1.3.6/jquery.easyui.min.js"></script>
    <script src="${path}/components/jquery-easyui-1.3.6/locale/easyui-lang-zh_CN.js"></script>
	<!-- EasyUI Grid End -->

	<link rel="stylesheet" href="${path}/components/validform5.3.2/validform.css" rel="stylesheet" />
    <script src="${path}/components/validform5.3.2/validform.js"></script>

    <link rel="stylesheet" href="${path}/global/css/base.css" rel="stylesheet" />
    <link rel="stylesheet" href="${path}/global/css/bootstrap-extend.css" rel="stylesheet" /> 

    <script src="${path}/global/js/template.js"></script>
    <script src="${path}/global/js/bootstrap-extend.js"></script>
    <!--  Tobin End -->
	
	<script>
	    var grid = null;

	    window.onresize = function () {
	        $("#cxGrid").datagrid("resize");
	    }
	    
		$(function(){
			grid = $("#cxGrid").datagrid({
				url: "${URI}_list.action?menuid=${menuid}&powermenu=${powermenu}",
				width: "auto",
				height: Number(document.documentElement.clientHeight) - 55,
				fitColumns: false,
				rownumbers: true,
				singleSelect: true, 
				pagination: false,
				frozenColumns:[[
						       {title:"ID", field:"id", width:100, hidden:true}
						      ]],
				columns:[[
					{field:"rulename", title:"规则名称", width:180,
						formatter:function(value,row){
							return "<a href='${URI}_view.action?menuid=${menuid}&powermenu=${powermenu}&selectid=" + row.id + "'>" + value + "</a>";
						}
					},
					{field:"rulesql", title:"规则SQL", width:550},
					{field:"num", title:"优先级", width:50, align:"center"},
					{title:"操作", field:"option", width:70, align:"center",
						formatter:function(value,row){
							var str = "<a href='${URI}_modify.action?menuid=${menuid}&powermenu=${powermenu}&selectid=" + row.id + "' class='green'>" +
									  "<i class='ace-icon fa fa-pencil bigger-130'></i>" +
									  "</a>";
							str += "&nbsp;<a href='###' onclick='deleteAction(\"${menuid}\", \"${URI}\", \"" + row.id + "\", grid)' class='red'>" +
							       "<i class='ace-icon fa fa-trash-o bigger-130'></i>" + 
							       "</a>";									
							return str;
						}
					}
				]],
                onLoadError: function(none) {
                    alert(none.responseText);
                }
			});
		});	
	</script>
	
	<script>
		function setRulePower(id, obj){
			var value = "0";
			if (obj.checked)
			   value = "1";
			
			$.ajax({
                type: "post",
                url: "${path}/system/rule_power.action?id=" + id + "&value=" + value,
                success: function(result){
                },
                error: function(){
                	alert("保存配置失败!");
                }
            });
		}
		
		function setRuleWrite(id, obj){
			var value = "0";
			if (obj.checked)
			   value = "1";
			
			$.ajax({
                type: "post",
                url: "${path}/system/rule_write.action?id=" + id + "&value=" + value,
                success: function(result){
                },
                error: function(){
                	alert("保存配置失败!");
                }
            });
		}	
	</script>
</head>

<body style="background: #fff">
	<table width="100%" border="0">
	  <tr>
	    <td width="5%" rowspan="2" align="center">
	    	<img src="${path}/global/images/base/img1_max.gif"/>
		</td>
	    <td valign="bottom">
	    	<b>&nbsp;${title}</b>
	    </td>
	    <td width="15%" rowspan="2" align="right" valign="bottom">
	    	<a href="${URI}_append.action?menuid=${menuid}&powermenu=${powermenu}" class="btn btn-sm btn-primary" data-rel="tooltip" data-placement="bottom" title="新建">
             	<span class="glyphicon glyphicon-file"></span> 新 建
            </a>&nbsp;&nbsp;
	    </td>
	  </tr>
	  <tr>
	    <td>
	       &nbsp;
	   	   <label>
           <input type="checkbox" onclick="setRulePower('${menuEntity.id}', this)"
           		<c:if test="${menuEntity.power eq '1'}">
			         checked
			    </c:if>
		   />
		       权限控制
		   </label>
		   
		   <label>
           <input type="checkbox" onclick="setRuleWrite('${menuEntity.id}', this)"
           		<c:if test="${menuEntity.write eq '1'}">
			         checked
			    </c:if>
		   />
		       改写
		   </label>
		   (此两项打√选项为即设即保存.)
	    </td>
	  </tr>
	</table>
  
	<div style="margin: 5px; width: 99%">	    
    	<div id="cxGrid"></div>
    </div>
    
    <!-- basic scripts -->
	<script src="${path}/components/ace-1.3.1/assets/js/bootstrap.min.js"></script>

	<!--[if lte IE 8]>
	  <script src="${path}/components/ace-1.3.1/assets/js/excanvas.min.js"></script>
	<![endif]-->
	
	<!-- inline scripts related to this page -->
	<script>
		jQuery(function($) {
			$('[data-rel=tooltip]').tooltip();
		});
	</script>
	
	<c:import url="/global/import/bootstrap-extend.jsp"></c:import>    
  
</body>
</html>

