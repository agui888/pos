<%@page language="java" contentType="text/html;charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="e" uri="/easyui" %>
<%@taglib prefix="s" uri="/struts-tags"%>

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
    
	<!-- bootstrap & fontawesome -->
	<link rel="stylesheet" href="${path}/components/ace-1.3.1/assets/css/bootstrap.min.css" />
	<link rel="stylesheet" href="${path}/components/ace-1.3.1/assets/css/font-awesome.min.css" />
	
	<!-- text fonts -->
	<link rel="stylesheet" href="${path}/components/ace-1.3.1/assets/css/ace-fonts.css" />

	<!-- ace styles -->
	<link rel="stylesheet" href="${path}/components/ace-1.3.1/assets/css/ace.min.css" id="main-ace-style" />
		
    <link href="${path}/global/css/bootstrap-extend.css" rel="stylesheet" /> 

    <link href="${path}/components/validform5.3.2/validform.css" rel="stylesheet" />
    <script src="${path}/components/validform5.3.2/validform.js"></script>    

	<script>
		var vf = null;
		$(document).ready(function() {
            $("body").hide().fadeIn(500);
            
            var tiptypeObject = function(msg,o,cssctl){
				var objtip=$("#msguser");
				cssctl(objtip,o.type);
				objtip.text(msg);
				return true;
			}; 
			
			vf = $(".saveCalss").Validform({
				tiptype:tiptypeObject,
				ajaxPost: true,
				callback: function(data){
	        		if (data.status == "y") { 
	        			alert(data.info);
	        		 	parent.closeIframeBootstrap();
	        		} else if (data.status == "n") {
	        			alert(data.info);
	        		}
			    }
			});
			
            vf.addRule([
			    {
			        ele:"#mobilephone",
			        datatype:"m",
			        nullmsg:"提示:请输入手机号码!",
					errormsg:"提示:请填空正确的手机号码!" 
			    },{
			        ele:"#email",
			        datatype:"e",
			        nullmsg:"提示:请输入邮箱地址!",
					errormsg:"提示:请输入正确邮箱地址!" 
			    },{
					ele:":radio:first",
					datatype:"*",
					nullmsg:"提示:请选择工作状态!"
				}
			]);
			
        });
        
	    function submitForm() {
	    	if (vf.check()) {
	        	$("#saveForm").submit();
	    	}
	    }
	</script>
	
    <style>
	 	body {
		   margin-left: 0px;
		   margin-top: 0px;
		   margin-right: 0px;
		   margin-bottom: 0px;
		}
	</style>	
</head>
  
<body style="background-color: #fff">
    
    <form class="saveCalss" id="saveForm" name="saveForm" action="${path}/system/baseuser_myinformation.action" method="post">
		<input type="hidden" id="save" name="save" value="message" />
		<input type="hidden" id="menuid" name="menuid" value="${menuid}" />
		<input type="hidden" name="baseUserEntity.id" value="${baseUserEntity.id}" />
		<input type="hidden" name="baseUserEntity.userid" value="${baseUserEntity.userid}" />
		
		<table class="table-xs table-bo" width="98%">
          <tr>
		    <td colspan="2" height="30" bgcolor="#ecf4fe">
		    	<img src="${path}/global/images/base/info.png" border="0" style="vertical-align: text-top; border-style: none; margin-right: 0px; margin-top: -1px;"/>&nbsp;<b>基本信息</b>
		    </td>
		  </tr>
          <tr>
		    <td width="85" bgcolor="#f4f9ff" align="right">姓名:</td>
		    <td class="input-group-xs">
		    	<input id="username" class="form-control" type="text" name="baseUserEntity.username" size="30" maxlength="16" value="${baseUserEntity.username}" readonly/>
		    </td>
		  </tr>
		</table>
		
		<br/>
		
		<table class="table-xs table-bo" border="1" width="98%">
		  <tr>
		    <td colspan="4" height="30" bgcolor="#ecf4fe">
		    	<img src="${path}/global/images/base/email.gif" border="0" style="vertical-align: text-top; border-style: none; margin-right: 0px; margin-top: -1px;"/>&nbsp;<b>联系方式</b>
		    </td>
		  </tr>
		  <tr>
		    <td bgcolor="#f4f9ff" align="right" nowrap><span class="RText">* </span>移动电话:</td>
		    <td class="input-group-xs">
		    	<input id="mobilephone" class="form-control" type="text" name="baseUserEntity.mobilephone" maxlength="11" value="${baseUserEntity.mobilephone}" />
		    </td>
		    <td bgcolor="#f4f9ff" align="right" nowrap><span class="RText">* </span>电子邮件:</td>
		    <td class="input-group-xs">
		    	<input id="email" class="form-control" type="text" name="baseUserEntity.email" maxlength="255" value="${baseUserEntity.email}" />
		    </td>
		  </tr>
		  <tr>
		    <td width="85" bgcolor="#f4f9ff" align="right">办公电话:</td>
		    <td colspan="3" class="input-group-xs">
		    	<input id="officephone" class="form-control" type="text" name="baseUserEntity.officephone" maxlength="20" value="${baseUserEntity.officephone}" />
		    </td>
		  </tr>
		  <tr>
		  	<td bgcolor="#f4f9ff" align="right">办公地址:</td>
		    <td colspan="3" class="input-group-xs">
		    	<input id="officeaddress" class="form-control" type="text" name="baseUserEntity.officeaddress" maxlength="2000" value="${baseUserEntity.officeaddress}" />
		    </td>
		  </tr>  
		  <tr>
		    <td bgcolor="#f4f9ff" align="right">家庭电话:</td>
		    <td colspan="3" class="input-group-xs">
		    	<input id="homephone" class="form-control" type="text" name="baseUserEntity.homephone" maxlength="20" value="${baseUserEntity.homephone}" />
		    </td>
		  </tr>
		  <tr>
		  	<td bgcolor="#f4f9ff" align="right">家庭地址:</td>
		    <td colspan="3" class="input-group-xs">
		    	<input id="homeaddress" class="form-control" type="text" name="baseUserEntity.homeaddress" maxlength="2000" value="${baseUserEntity.homeaddress}" />
		    </td>
		  </tr>  
        </table>  
	</form>
	
	<span id="msg" style="margin-left:10px;"><v:value value="${errors.validateError}"/></span>
	
	<div align="center" style="height: 30px; line-height: 30px;">
        <button type="button" class="btn btn-sm btn-primary" onclick="submitForm();" >
            <span class="glyphicon glyphicon-pencil"></span> 确 定
        </button>
        
        <button type="reset" class="btn btn-sm btn-default" onclick="parent.closeIframeBootstrap();">
            <span class="glyphicon glyphicon-share-alt"></span> 取 消
        </button>
    </div>
    
	<br/>
</body>

</html>

