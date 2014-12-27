		<%@page language="java" contentType="text/html;charset=UTF-8"%>
		<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<%@taglib prefix="v" uri="/errors"%>
		<%@taglib prefix="s" uri="/struts-tags"%>
		<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

	    <script>
	        $(document).ready(function() {
	            
	            var tip = function(msg,o,cssctl){
					var objtip=$("#msg");
					cssctl(objtip,o.type);
					objtip.text(msg);
					return true;
				}; 
				
				var validForm = getPostValidForm("${menuid}", "${URI}", tip);
				validForm.addRule([
				    			    {
				    					ele:"#userid",
				    			        datatype:"*2-20",
				    			        sucmsg:"提示:当前帐号验证通过!", 
				    					errormsg:"提示:帐号至少2个字符,最多20个字符!", 
				    					nullmsg:"提示:请输入帐号!",
				    					ajaxurl:"${URI}_validated.action?menuid=${menuid}&idValue=${manageUserEntity.id}"
				    			    },
				    			    {
				    			        ele:"#username",
				    			        datatype:"*",
				    					errormsg:"提示:姓名不能为空!",
				    					nullmsg:"提示:请输入姓名!"
				    			    },
				    			    {
				    			        ele:"#mobilephone",
				    			        datatype:"m",
				    			        nullmsg:"提示:请输入手机号码!",
				    					errormsg:"提示:请填空正确的手机号码!" 
				    			    },
				    			    {
				    					ele:":radio:first",
				    					datatype:"*",
				    					nullmsg:"提示:请选择帐号锁定状态!"
				    				},
				    				{
				    					ele:":checkbox:first",
				    					datatype:"*",
				    					nullmsg:"提示:请选择所属角色!"
				    				}
	            ]);
	        });
	        
	        function getRole() {
		        var roleidValue = "";
		        var rolenameValue = "";
			    var len = document.getElementsByName("roleid").length;
		
		        for (var i = 0; i < len; i++)  
		            if (document.getElementsByName("roleid")[i].checked == true) {  
		                roleidValue += document.getElementsByName("roleid")[i].value;
		                rolenameValue += document.getElementsByName("roleid")[i].title;
		                break;
		            }
		            
		        $("#manageUserEntityRoleids").val(roleidValue);
		        $("#manageUserEntityRolenames").val(rolenameValue);
		    }
	    </script>

		
        <form class="saveCalss" id="saveForm" method="post" action="${URI}_save.action">
            <input type="hidden" id="menuid" name="menuid" value="${menuid}" />
            <input type="hidden" id="selectid" name="selectid" value="${selectid}" />
            <input type="hidden" name="manageUserEntity.id" value="${manageUserEntity.id}" />
            <input type="hidden" name="manageUserEntity.password" value="${manageUserEntity.password}" />
            
            <input type="hidden" name="manageUserEntity.createuserid" value="${manageUserEntity.createuserid eq null ? LOGINSESSION.id : manageUserEntity.createuserid}" />
            <input type="hidden" id="manageUserEntityRoleids" name="manageUserEntity.roleids" value="${manageUserEntity.roleids}" />
            <input type="hidden" id="manageUserEntityRolenames" name="manageUserEntity.rolenames" value="${manageUserEntity.rolenames}" />

			<table class="table-xs table-bo" style="margin:5px;" style="table-layout:fixed;" width="99%">
			  <tr>
			    <td colspan="4" bgcolor="#ecf4fe" height="30">
			    	<img src="${path}/global/images/base/userparam.png" border="0" style="vertical-align: text-top; border-style: none; margin-right: 0px; margin-top: -1px;"/> 1) 基本信息
			    </td>
			  </tr>
			  <tr>
			    <td width="75" bgcolor="#f4f9ff" align="right">
			    	<div style="width:75px;"><span class="RText">* </span>帐号:</div>
			    </td>
			    <td width="40%" class="input-group-xs">
			    	<input class="form-control" type="text" id="userid" name="manageUserEntity.userid" style="width: 99%;" maxlength="20" value="${manageUserEntity.userid}" <c:if test="${method eq 'view'}">readonly</c:if> />
			    	<v:value value="${errors.userid}"/>
			    </td>
			    <td width="75" bgcolor="#f4f9ff" align="right">
			    	<div style="width:75px;"><span class="RText">* </span>姓名:</div>
			    </td>
			    <td width="40%" class="input-group-xs">
			    	<input class="form-control" type="text" id="username" name="manageUserEntity.username" style="width: 99%;" maxlength="50" value="${manageUserEntity.username}" <c:if test="${method eq 'view'}">readonly</c:if> />
			    	<v:value value="${errors.username}"/>
			    </td>
			  </tr>
			  <tr>
			    <td bgcolor="#f4f9ff" align="right"><span class="RText">* </span>性别:</td>
			    <td>
			    	<s:radio id="sex" theme="simple" name="manageUserEntity.sex" list="#{'男':'男','女':'女'}"/>
			    </td>
			    <td bgcolor="#f4f9ff" align="right"><span class="RText">* </span>锁定帐号:</td>
			    <td>
			    	<s:radio id="islock" theme="simple" name="manageUserEntity.islock" list="#{'0':'未锁','1':'锁定'}"/>
			    </td>
			  </tr>
			</table>
			
			<table class="table-xs table-bo" style="margin:5px;" style="table-layout:fixed;" width="99%">
			  <tr>
			    <td colspan="4" bgcolor="#ecf4fe" height="30">
			    	<img src="${path}/global/images/base/email.gif" border="0" style="vertical-align: text-top; border-style: none; margin-right: 0px; margin-top: -1px;"/> 2) 联络信息
			    </td>
			  </tr>
			  <tr>
			    <td width="75" bgcolor="#f4f9ff" align="right">
			    	<div style="width:75px;">办公电话:</div>
			    </td>
			    <td width="40%" class="input-group-xs">
			    	<input class="form-control" type="text" id="officephone" name="manageUserEntity.officephone" style="width: 99%;" maxlength="20" value="${manageUserEntity.officephone}" <c:if test="${method eq 'view'}">readonly</c:if> />
			    </td>
			    <td width="75" bgcolor="#f4f9ff" align="right">
			    	<div style="width:75px;">办公地址:</div>
			    </td>
			    <td width="40%" class="input-group-xs">
			    	<input class="form-control" type="text" id="officeaddress" name="manageUserEntity.officeaddress" style="width: 99%;" maxlength="2000" value="${manageUserEntity.officeaddress}" <c:if test="${method eq 'view'}">readonly</c:if> />
			    </td>
			  </tr>
			  <tr>
			    <td bgcolor="#f4f9ff" align="right">家庭电话:</td>
			    <td class="input-group-xs">
			    	<input class="form-control" type="text" id="homephone" name="manageUserEntity.homephone" style="width: 99%;" maxlength="20" value="${manageUserEntity.homephone}" <c:if test="${method eq 'view'}">readonly</c:if> />
			    </td>
			    <td bgcolor="#f4f9ff" align="right">家庭地址:</td>
			    <td class="input-group-xs">
			    	<input class="form-control" type="text" id="homeaddress" name="manageUserEntity.homeaddress" style="width: 99%;" maxlength="2000" value="${manageUserEntity.homeaddress}" <c:if test="${method eq 'view'}">readonly</c:if> />
			    </td>
			  </tr>
			  <tr>
			    <td bgcolor="#f4f9ff" align="right"><span class="RText">* </span>移动电话:</td>
			    <td class="input-group-xs">
			    	<input class="form-control" type="text" id="mobilephone" name="manageUserEntity.mobilephone" style="width: 99%;" maxlength="11" value="${manageUserEntity.mobilephone}" <c:if test="${method eq 'view'}">readonly</c:if> />
			    	<v:value value="${errors.mobilephone}"/>
			    </td>
			    <td bgcolor="#f4f9ff" align="right">电子邮件:</td>
			    <td class="input-group-xs">
			    	<input class="form-control" type="text" id="email" name="manageUserEntity.email" style="width: 99%;" maxlength="255" value="${manageUserEntity.email}" <c:if test="${method eq 'view'}">readonly</c:if> />
			    </td>
			  </tr>
			</table>
			
			<table class="table-xs table-bo" style="margin:5px;" style="table-layout:fixed;" width="99%">
			  <tr>
			    <td bgcolor="#ecf4fe" height="30">
			    	<img src="${path}/global/images/base/role.png" border="0" style="vertical-align: text-top; border-style: none; margin-right: 0px; margin-top: -1px;"/> 3) 所属角色 
			    </td>
			  </tr>
			  <tr>
			    <td>
				    <div id="roleSelect" style="width: 98%; height: 130px; overflow: auto;">
				   	       <c:forEach items="${roleEntityList}" var="ls" varStatus="row">
				   	           <div style="width:150px; height:22px; float: left;">
						           <label>
									   <input type="radio" name="roleid" value="${ls.id}" title="${ls.rolename}"
									   <c:if test="${fn:containsIgnoreCase(manageUserEntity.roleids, ls.id)}">
									      checked
									   </c:if>
									   <c:if test="${method eq 'view'}">disabled="disabled"</c:if>
									   /><span>${ls.rolename}</span>
								   </label>
							   </div>
				   	       </c:forEach>			       
				       </div>
			    </td>
			  </tr>
			</table>			
        </form>
        
        <span id="msg" style="margin-left:10px;"></span>
        
        <div align="center" style="margin: 20px;">
            <c:if test="${method eq 'append' || method eq 'modify'}">
                <button type="button" class="btn btn-sm btn-primary" data-rel="tooltip" data-placement="bottom" title="保存数据" onclick="getRole(); saveAction('savelist');" >
                    <span class="glyphicon glyphicon-floppy-disk"></span> 保 存
                </button>
                <button type="button" class="btn btn-sm btn-success" data-rel="tooltip" data-placement="bottom" title="保存并新建" onclick="getRole(); saveAction('saveappend');" >
                    <span class="glyphicon glyphicon-floppy-saved"></span> 保存并新建
                </button>
            </c:if>

            <c:if test="${method eq 'view'}">
                <button type="button" class="btn btn-sm btn-primary" data-rel="tooltip" data-placement="bottom" title="修改当前数据" onclick="modifyAction('${menuid}', '${URI}', '${selectid}')" >
                    <span class="glyphicon glyphicon-pencil"></span> 修 改
                </button>
            </c:if>

            <button type="reset" class="btn btn-sm btn-default" data-rel="tooltip" data-placement="bottom" title="取消并返回" onclick="cancel('${menuid}', '${URI}')">
                <span class="glyphicon glyphicon-share-alt"></span> 取 消
            </button>
        </div>

	
	

