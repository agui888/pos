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
	<link rel="stylesheet" href="${path}/components/jquery-easyui-1.3.6/themes/default/pagination.css" />
	<link rel="stylesheet" href="${path}/components/jquery-easyui-1.3.6/themes/default/linkbutton.css" />
	<link rel="stylesheet" href="${path}/components/jquery-easyui-1.3.6/themes/default/combo.css" />
	<link rel="stylesheet" href="${path}/components/jquery-easyui-1.3.6/themes/default/combobox.css" />
	<link rel="stylesheet" href="${path}/components/jquery-easyui-1.3.6/themes/default/textbox.css" />
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

    <link href="${path}/components/validform5.3.2/validform.css" rel="stylesheet" />
    <script src="${path}/components/validform5.3.2/validform.js"></script>

    <script>
        $(document).ready(function() {
            var validForm = getPostValidForm("${menuid}", "${URI}");
            validForm.addRule([
			    {
			        ele:"#rulename",
			        datatype:"*",
			        errormsg:"提示:规则名称至少1个字符,最多100个字符!",
                    nullmsg:"提示:请输入规则名称!",
                    sucmsg:"提示:验证通过!"
			    },
			    {
			        ele:"#num",
			        datatype:"*",
                    nullmsg:"提示:请输入优先级!",
                    sucmsg:"提示:验证通过!"
			    },
			    {
			        ele:"#rulesql",
			        datatype:"*",
			        errormsg:"提示:规则SQL至少1个字符,最多1000个字符!",
                    nullmsg:"提示:请输入规则SQL!",
                    sucmsg:"提示:验证通过!"
			    }
			]);
        });
    </script>

</head>

<body style="background: #fff">
	<table width="100%" border="0">
	  <tr>
	    <td width="5%" rowspan="2" align="center">
	    	<img src="${path}/global/images/base/img1_max.gif"/>
		</td>
	    <td valign="bottom">
	    	规则配置
            <c:if test="${method eq 'append'}"> - (新建)</c:if>
            <c:if test="${method eq 'modify'}"> - (修改)</c:if>
            <c:if test="${method eq 'view'}"> - (浏览)</c:if>
	    </td>
	  </tr>
	  <tr>
	    <td>
	       	&nbsp;&nbsp;说明: SQL 规则配置配置中心.
	    </td>
	  </tr>
	</table>
  
    <div id="panel" style="width:99%; margin: 5px;">
		<form class="saveCalss" id="saveForm" method="post" action="${URI}_save.action">
	    	<input type="hidden" id="menuid" name="menuid" value="${menuid}" />
	    	<input type="hidden" id="powermenu" name="powermenu" value="${powermenu}" />
	    	<input type="hidden" id="ruleEntity.menuid" name="ruleEntity.menuid" value="${powermenu}" />
			<input type="hidden" name="ruleEntity.id" value="${ruleEntity.id}" />
		    
			<table width="100%" border="0" class="table-xs table-bo">
			  <tr>
			    <td width="12%" bgcolor="#ecf4fe" align="right"><span class="RText">* </span>规则名称</td>
			    <td bgcolor="#ffffff">
			    	<div style="float: left" class="input-group-xs">
			    		<input class="form-control" type="text" id="rulename" name="ruleEntity.rulename" maxlength="100" style="width:350px;"  value="${ruleEntity.rulename}" <c:if test="${method eq 'view'}">readonly</c:if> />
			    	</div>
			    	<div style="float: left">
			    		<span class="Validform_checktip">${errors.rulename}</span>
			    	</div>
			    </td>
			  </tr>
			  <tr>
			    <td bgcolor="#ecf4fe" align="right"><span class="RText">* </span>优先级</td>
			    <td bgcolor="#ffffff">
			    	<div style="float: left" class="input-group-xs">
			        	<input class="form-control" type="text" id="num" name="ruleEntity.num" maxlength="10" style="width:350px;" value="${ruleEntity.num}" <c:if test="${method eq 'view'}">readonly</c:if> />
			        </div>
			        <div style="float: left">
			        	<span class="Validform_checktip">${errors.num}</span>
			        </div>
			    </td>
			  </tr>
			  <tr>
			    <td bgcolor="#ecf4fe" align="right"><span class="RText">* </span>规则SQL</td>
			    <td bgcolor="#ffffff">
			    	<div style="float: left" class="input-group-xs">
			        	<input class="form-control" type="text" id="rulesql" name="ruleEntity.rulesql" maxlength="1000" style="width:350px;" value="${ruleEntity.rulesql}" <c:if test="${method eq 'view'}">readonly</c:if> />
			        </div>
			        <div style="float: left">
			    		<span class="Validform_checktip">${errors.rulesql}</span>
			    	</div>
			    </td>
			  </tr>
			  <tr>
			    <td bgcolor="#ecf4fe" align="right">备注</td>
			    <td bgcolor="#ffffff" class="input-group-xs">
			        <input class="form-control" type="text" id="remark" name="ruleEntity.remark" maxlength="500" style="width:350px;" value="${ruleEntity.remark}" <c:if test="${method eq 'view'}">readonly</c:if> />
			    </td>
			  </tr>
			</table>
		</form>
		<br/>
		
        <div class="alert alert-warning" role="alert">
			<span style="line-height: 20px;"><b>说明:</b></span><br/>
		   	<span style="line-height: 19px; margin-left: 10px;">优先级:在用户对应多个角色情况下,读取优先级则按最小值的级别读取.</span><br/>
	       	<span style="line-height: 19px; margin-left: 10px;">规则SQL:如"<span class="RText">deptid=@deptid and id = '123'</span>",支持 "<span class="RText">@roleids,@deptid,@positionid,@userid</span>" session中的对象.</span>        	
        </div>
        
		<div align="center" style="margin: 20px;">
            <c:if test="${method eq 'append' || method eq 'modify'}">
                <button type="button" class="btn btn-sm btn-primary" data-rel="tooltip" data-placement="bottom" title="保存数据" onclick="saveAction('savelist');" >
                    <span class="glyphicon glyphicon-floppy-disk"></span> 保 存
                </button>
                <button type="button" class="btn btn-sm btn-success" data-rel="tooltip" data-placement="bottom" title="保存并新建" onclick="saveAction('saveappend');" >
                    <span class="glyphicon glyphicon-floppy-saved"></span> 保存并新建
                </button>
            </c:if>

            <c:if test="${method eq 'view'}">
                <a href="${URI}_modify.action?menuid=${menuid}&selectid=${selectid}" class="btn btn-sm btn-primary" data-rel="tooltip" data-placement="bottom" title="修改当前数据">
                    <span class="glyphicon glyphicon-pencil"></span> 修 改
                </a>
            </c:if>

            <a href="${URI}_cancel.action?menuid=${menuid}&powermenu=${powermenu}" class="btn btn-sm btn-default" data-rel="tooltip" data-placement="bottom" title="取消并返回">
                <span class="glyphicon glyphicon-share-alt"></span> 取 消
            </a>
        </div>       
		
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


