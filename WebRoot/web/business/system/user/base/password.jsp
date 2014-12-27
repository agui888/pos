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

    <link href="${path}/components/validform5.3.2/passwordStrength-min.css" rel="stylesheet" />
    <script src="${path}/components/validform5.3.2/passwordStrength-min.js"></script>

	<script>
		var rf = null;
		
		$(document).ready(function() {
			$("body").hide().fadeIn(500);
			rf = $(".passwordForm").Validform({
				tiptype:2,
				ajaxPost: true,
				usePlugin:{
					passwordstrength:{
						minLen:3,
						maxLen:10
					}
				},
				callback: function(data){
		            try {
		        		if (data.status == "y") { 
		        			alert("密码修改成功!");
		        		 	parent.closeIframeBootstrap();
		        		} else if (data.status == "n") {
		        			alert("密码修改失败!");
		        		}
		        	} catch(e) {
		        		alert("密码修改失败!" + e);
		        	}
			    }
			});
		});
		
	    function submitForm() {
	        if (rf.check()) {
	        	$("#baseUserEntityPassword").val($("#repassword").val()); 
	        	$("#saveForm").submit();
	        }
	    }
	</script>
</head>
  
<body style="background-color: #fff">
    
    <form class="passwordForm" id="saveForm" name="saveForm" action="${path}/system/baseuser_password.action" method="post">
		<input type="hidden" id="menuid" name="menuid" value="${menuid}" />
		<input type="hidden" id="save" name="save" value="password" />
		<input type="hidden" id="baseUserEntityPassword" name="baseUserEntity.password" />

		<input type="hidden" name="baseUserEntity.id" value="${baseUserEntity.id}" />
		<input type="hidden" name="baseUserEntity.userid" value="${baseUserEntity.userid}" />

		<div align="center" style="width:100%">
			<table width="400" class="table-xs">
	           <tr>
	               <td align="right" width="80">
                                                            新&nbsp;密&nbsp;码：
	               </td>
	               <td width="80" class="input-group-xs">
	                   <input class="form-control inputxt" type="password" name="newpassword" maxlength="10" style="width:160px;"
	                          plugin="passwordStrength"  
	                          datatype="*3-10"
	                   	      nullmsg="请输入新密码"
	                   		  errormsg="密码至少是3~10位!" />
	               </td>
	               <td>
	                   <div class="Validform_checktip">请输入10位密码.</div>
	               </td>
	           </tr>
	           <tr>
	               <td>&nbsp;</td>
	               <td colspan="2">
	               	   <div class="passwordStrength">密码强度:<span>弱</span><span>中</span><span class="last">强</span></div>
	               </td>
	           </tr>
	           <tr>
	               <td align="right">确认密码：</td>
	               <td class="input-group-xs">
	               	   <input class="form-control inputxt" type="password" id="repassword" name="repassword" maxlength="10" style="width:160px;"
	               	          recheck="newpassword"
	               	          datatype="*3-10"
	               	   	      nullmsg="请输入确认密码" 
	               	   	      sucmsg ="密码验证通过"
	               	   		  errormsg="两次密码不一致！" />
	               </td>
	               <td>
	                   <div class="Validform_checktip">请输入确认10位密码.</div>
	               </td>
	           </tr>
			</table>
		</div>
	</form>
	
	<div align="center" style="height: 50px; line-height: 50px;">
        <button type="button" class="btn btn-sm btn-primary" onclick="submitForm();" >
            <span class="glyphicon glyphicon-pencil"></span> 确 定
        </button>
        
        <button type="reset" class="btn btn-sm btn-default" onclick="parent.closeIframeBootstrap();">
            <span class="glyphicon glyphicon-share-alt"></span> 取 消
        </button>
    </div>
    
</body>

</html>
