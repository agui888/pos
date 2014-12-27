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
						ajaxurl:"${URI}_validated.action?menuid=${menuid}&idValue=${baseUserEntity.id}"
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
				        ele:"#colid",
				        datatype:"*",
						errormsg:"提示:当前用户顺序编号不能为空!",
						nullmsg:"提示:请填写顺序编号!"
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
		                roleidValue += document.getElementsByName("roleid")[i].value + ",";
		                rolenameValue += document.getElementsByName("roleid")[i].title + ",";
		            }
		                
		        $("#baseUserEntityRoleids").val(roleidValue);
		        $("#baseUserEntityRolenames").val(rolenameValue);
		    }
	    </script>

	    
        <form class="saveCalss" id="saveForm" method="post" action="${URI}_save.action">
            <input type="hidden" id="menuid" name="menuid" value="${menuid}" />
            <input type="hidden" id="selectid" name="selectid" value="${selectid}" />
            <input type="hidden" name="baseUserEntity.id" value="${baseUserEntity.id}" />
            <input type="hidden" name="baseUserEntity.password" value="${baseUserEntity.password}" />
            
            <input type="hidden" name="baseUserEntity.createuserid" value="${baseUserEntity.createuserid eq null ? LOGINSESSION.id : baseUserEntity.createuserid}" />
            <input type="hidden" id="baseUserEntityRoleids" name="baseUserEntity.roleids" value="${baseUserEntity.roleids}" />
            <input type="hidden" id="baseUserEntityRolenames" name="baseUserEntity.rolenames" value="${baseUserEntity.rolenames}" />

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
			    	<input class="form-control" type="text" id="userid" name="baseUserEntity.userid" style="width: 99%;" maxlength="20" value="${baseUserEntity.userid}" <c:if test="${method eq 'view'}">readonly</c:if> />
			    </td>
			    <td width="75" bgcolor="#f4f9ff" align="right">
			    	<div style="width:75px;"><span class="RText">* </span>姓名:</div>
			    </td>
			    <td width="40%" class="input-group-xs">
			    	<input class="form-control" type="text" id="username" name="baseUserEntity.username" style="width: 99%;" maxlength="50" value="${baseUserEntity.username}" <c:if test="${method eq 'view'}">readonly</c:if> />
			    </td>
			  </tr>
			  <tr>
			    <td bgcolor="#f4f9ff" align="right">性别:</td>
			    <td>
			    	<s:radio id="sex" theme="simple" name="baseUserEntity.sex" list="#{'男':'男','女':'女'}"/>
			    </td>
			    <td bgcolor="#f4f9ff" align="right"><span class="RText">* </span>锁定帐号:</td>
			    <td>
			    	<s:radio id="islock" theme="simple" name="baseUserEntity.islock" list="#{'0':'未锁','1':'锁定'}"/>
			    </td>
			  </tr>
			  <tr>
			    <td bgcolor="#f4f9ff" align="right"><span class="RText">* </span>所属部门:</td>
			    <td class="input-group-xs">
			    	<input class="easyui-combotree" 
		               id="deptid" 
		        	   name="baseUserEntity.deptid" 
		        	   value="${baseUserEntity.deptid}" 
		        	   style="width: 240px;"
		        	   <c:if test="${method eq 'view'}">readonly</c:if>
		        	   data-options="url:'${path}/system/dept_combobox.action?menuid=1001', valueField:'id'"/>  <!-- 多选参数 multiple -->
			    </td>
			    <td bgcolor="#f4f9ff" align="right"><span class="RText">* </span>工作职务:</td>
			    <td class="input-group-xs">
			    	<s:select name="baseUserEntity.positionid" list="positionList" listKey="id" listValue="positionname" theme="simple" cssStyle="width: 240px;" cssClass="easyui-combobox easyui-validatebox" />
			    </td>
			  </tr>
			  <tr>
			    <td bgcolor="#f4f9ff" align="right"> 上级领导:</td>
			    <td class="input-group-xs">
			    	<input class="easyui-combotree" 
				    	id="manageuserid" 
				    	name="baseUserEntity.manageuserid" 
				    	value="${baseUserEntity.manageuserid}" 
				    	style="width: 240px;" 
				    	data-options="url:'${path}/system/baseuser_deptuser.action?menuid=1003', valueField:'id'" /> <!-- 多选参数 multiple -->
			    </td>
			    <td bgcolor="#f4f9ff" align="right"><span class="RText">* </span>顺序编号:</td>
			    <td class="input-group-xs">
			    	<input class="form-control" type="text" id="colid" name="baseUserEntity.colid" style="width: 99%;" maxlength="20" value="${baseUserEntity.colid}" <c:if test="${method eq 'view'}">readonly</c:if> />
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
			    	<input class="form-control" type="text" id="officephone" name="baseUserEntity.officephone" style="width: 99%;" maxlength="20" value="${baseUserEntity.officephone}" <c:if test="${method eq 'view'}">readonly</c:if> />
			    </td>
			    <td width="75" bgcolor="#f4f9ff" align="right">
			    	<div style="width:75px;">办公地址:</div>
			    </td>
			    <td width="40%" class="input-group-xs">
			    	<input class="form-control" type="text" id="officeaddress" name="baseUserEntity.officeaddress" style="width: 99%;" maxlength="2000" value="${baseUserEntity.officeaddress}" <c:if test="${method eq 'view'}">readonly</c:if> />
			    </td>
			  </tr>
			  <tr>
			    <td bgcolor="#f4f9ff" align="right">家庭电话:</td>
			    <td class="input-group-xs">
			    	<input class="form-control" type="text" id="homephone" name="baseUserEntity.homephone" style="width: 99%;" maxlength="20" value="${baseUserEntity.homephone}" <c:if test="${method eq 'view'}">readonly</c:if> />
			    </td>
			    <td bgcolor="#f4f9ff" align="right">家庭地址:</td>
			    <td class="input-group-xs">
			    	<input class="form-control" type="text" id="homeaddress" name="baseUserEntity.homeaddress" style="width: 99%;" maxlength="2000" value="${baseUserEntity.homeaddress}" <c:if test="${method eq 'view'}">readonly</c:if> />
			    </td>
			  </tr>
			  <tr>
			    <td bgcolor="#f4f9ff" align="right"><span class="RText">* </span>移动电话:</td>
			    <td class="input-group-xs">
			    	<input class="form-control" type="text" id="mobilephone" name="baseUserEntity.mobilephone" style="width: 99%;" maxlength="11" value="${baseUserEntity.mobilephone}" <c:if test="${method eq 'view'}">readonly</c:if> />
			    </td>
			    <td bgcolor="#f4f9ff" align="right">电子邮件:</td>
			    <td class="input-group-xs">
			    	<input class="form-control" type="text" id="email" name="baseUserEntity.email" style="width: 99%;" maxlength="255" value="${baseUserEntity.email}" <c:if test="${method eq 'view'}">readonly</c:if> />
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
									   <input type="checkbox" name="roleid" value="${ls.id}" title="${ls.rolename}"
									   <c:if test="${fn:containsIgnoreCase(baseUserEntity.roleids, ls.id)}">
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
    
		<span id="msg" style="margin-left:10px;"><v:value value="${errors.validateError}"/></span>

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

