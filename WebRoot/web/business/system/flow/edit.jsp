		<%@page language="java" contentType="text/html;charset=UTF-8"%>
		<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<%@taglib prefix="v" uri="/errors"%>
		<%@taglib prefix="s" uri="/struts-tags"%>

	    <script>
	        $(document).ready(function() {
	            var validForm = getPostValidForm("${menuid}", "${URI}");
	            validForm.addRule([
					{
					    ele:"#colid",
					    datatype:"*1-10",
					    errormsg:"序号不能为空!",
					    nullmsg:"请输入序号!"
					},
	                {
	                    ele:"#nodename",
	                    datatype:"*2-50",
	                    errormsg:"提示:节点名称至少2个字符,最多50个字符!",
	                    nullmsg:"提示:请输入节点名称!",
	                    ajaxurl:"${URI}_validated.action?menuid=${menuid}&idValue=${flowEntity.id}",
	                    sucmsg:"提示:当前节点名称验证通过!"
	                }
	            ]);
	            
	            $("#designateuserids").combotree("setValues", [${flowEntity.designateuserids}]);
	            
	            $("#colid").ace_spinner({value:0,min:0,max:200,step:1, btn_up_class:"btn-info" , btn_down_class:"btn-info"});
	        });
	        
	        function selectUser(value) {
	        	if (value == 2)
	        		$("#user").css({display: ""});
	        	else
	        		$("#user").css({display: "none"});
	        }
	    </script>

        <form class="saveCalss" id="saveForm" method="post" action="${URI}_save.action" style="margin-top: 10px;">
            <input type="hidden" id="menuid" name="menuid" value="${menuid}" />
            <input type="hidden" id="selectid" name="selectid" value="${selectid}" />
            <input type="hidden" name="flowEntity.id" value="${flowEntity.id}" />

            <table width="100%" class="table-xs">
                <tr>
                    <td width="85" height="30" align="right"><span class="RText">* </span>排&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;序:</td>
                    <td width="710" class="input-group-xs">
                        <input class="form-control input-mini" type="text" id="colid" name="flowEntity.colid" style="width: 99%;" maxlength="0" value="${flowEntity.colid}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                    <td>
                        <span class="Validform_checktip"><v:value value="${errors.colid}"/></span>
                    </td>
                </tr>
                <tr>
                    <td height="30" align="right">节点名称:</td>
                    <td class="input-group-xs">
                        <input class="form-control" type="text" id="nodename" name="flowEntity.nodename" style="width: 99%;" maxlength="50" value="${flowEntity.nodename}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                    <td>
                        <span class="Validform_checktip"><v:value value="${errors.nodename}"/></span>
                    </td>
                </tr>
                <tr>
                    <td height="30" align="right">节点状态:</td>
                    <td class="input-group-xs">
                        <s:radio id="nodeflag" cssClass="BText" theme="simple" name="flowEntity.nodeflag" list="#{'singleprocess':'单人处理', 'multiprocess':'多人处理', 'end':'结束', 'cancel':'作废'}"/>
                    </td>
                    <td>
                    	&nbsp;
                    </td>
                </tr>
                <tr>
                    <td height="30" align="right">条&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;件:</td>
                    <td class="input-group-xs">
                        <s:radio id="condition" cssClass="BText" theme="simple" name="flowEntity.condition" list="#{'0':'显示所有人','1':'只限部门领导','2':'指定人员','3':'不显示任何人','4':'当前创建人','5':'当前登录用户部门所有人','6':'上一步处理人'}" onchange="selectUser(this.value);"/>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr id="user">
                    <td height="30" align="right">指定用户:</td>
                    <td class="input-group-xs">
                        <input class="easyui-combotree form-control" 
                               id="designateuserids" 
                               name="flowEntity.designateuserids" 
                               value="${flowEntity.designateuserids}" 
                               style="width: 696px;" 
                               data-options="url:'${path}/system/baseuser_deptuser.action?menuid=1003', valueField:'id'"  
                               multiple/>
                    </td>
                    <td>
                    	&nbsp;
                    </td>
                </tr>
            </table>
            
            <br/>
            <label class="BText">&nbsp;&nbsp;设置当前节点对应的菜单模块编辑字段:</label>
            <table class="table-xs table-bo" style="margin:5px;" width="99%">
			  <tr>
			    <td height="30" width="25%" bgcolor="#f4f9ff" align="center"><b>模块(菜单)名称</b></td>
			    <td bgcolor="#f4f9ff" align="center"><b>操作字段</b>&nbsp;(多个字段以逗号区分开)</td>
			  </tr>
			  
			  <c:forEach items="${flowDetailEntity}" var="ls" varStatus="row">
				  <tr>
				    <td bgcolor="#ffffff" >
				    	<input type="hidden" name="flowDetailEntity[${row.index}].id" value="${flowDetailEntity[row.index].id}" />
				    	<input type="hidden" name="flowDetailEntity[${row.index}].pid" value="${flowDetailEntity[row.index].pid}" />
				    	<input type="hidden" name="flowDetailEntity[${row.index}].menugroupid" value="${flowDetailEntity[row.index].menugroupid}" />
				    	<input type="hidden" name="flowDetailEntity[${row.index}].menugroupname" value="${flowDetailEntity[row.index].menugroupname}" />
				    	${flowDetailEntity[row.index].menugroupname}
				    </td>
				    <td bgcolor="#ffffff" class="input-group-xs">
				    	<input type="text" class="form-control" name="flowDetailEntity[${row.index}].fields" value="${flowDetailEntity[row.index].fields}" style="width: 99%;"/>
				    </td>
				  </tr>
			  </c:forEach>
			  
			</table>
        </form>

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
                <button type="button" class="btn btn-sm btn-primary" data-rel="tooltip" data-placement="bottom" title="修改当前数据" onclick="modifyAction('${menuid}', '${URI}', '${selectid}')" >
                    <span class="glyphicon glyphicon-pencil"></span> 修 改
                </button>
            </c:if>

            <button type="reset" class="btn btn-sm btn-default" data-rel="tooltip" data-placement="bottom" title="取消并返回" onclick="cancel('${menuid}', '${URI}')">
                <span class="glyphicon glyphicon-share-alt"></span> 取 消
            </button>
        </div>
