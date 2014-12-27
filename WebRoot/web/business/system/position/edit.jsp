	<%@page language="java" contentType="text/html;charset=UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@taglib prefix="v" uri="/errors"%>

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
                    ele:"#positionname",
                    datatype:"*2-50",
                    errormsg:"提示:职务名称至少2个字符,最多50个字符!",
                    nullmsg:"提示:请输入职务名称!",
                    ajaxurl:"${URI}_validated.action?menuid=${menuid}&idValue=${positionEntity.id}",
                    sucmsg:"提示:当前职务名称验证通过!"
                }

            ]);

        });
        </script>

    <script>
        $(document).ready(function() {
			<c:forEach items="${positionDetailEntity}" var="ls" varStatus="row">
				$("#flowids${row.index}").combotree("setValues", [${positionDetailEntity[row.index].flowids}]);
			</c:forEach>
        });
    </script>
    
    
    <form class="saveCalss form-horizontal" id="saveForm" method="post" action="${URI}_save.action" role="form" style="margin-top: 10px;">
        <input type="hidden" id="menuid" name="menuid" value="${menuid}" />
        <input type="hidden" id="selectid" name="selectid" value="${selectid}" />
        <input type="hidden" name="positionEntity.id" value="${positionEntity.id}" />
            
        <%-- Edit Page Begin --%>    
        <table width="100%" class="table-xs" style="table-layout:fixed;" border="0">
	        <tr>
	            <td width="80" height="30" align="right"><span class="RText">* </span>职务名称</td>
	            <td width="500" class="input-group-xs">
	                <input class="form-control" type="text" id="positionname" name="positionEntity.positionname" style="width: 500px;" maxlength="50" value="${positionEntity.positionname}" <c:if test="${method eq 'view'}">readonly</c:if> sucmsg="当前职务名称验证通过!" nullmsg="请输入职务名称!" datatype="*1-50" errormsg="职务名称至少1个字符,最多50个字符!" ajaxurl=""/>
	            </td>
	            <td>
	                <span class="Validform_checktip">职务名称为1~50个字符</span>
	                <v:value value="${errors.positionname}"/>
	                <span id="msg" style="margin-left:10px;"><v:value value="${errors.validateError}"/></span>
	            </td>
	        </tr>
	        <tr>
	            <td align="right">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注</td>
	            <td class="input-group-xs">
	                <input class="form-control" type="text" id="remark" name="positionEntity.remark" style="width: 500px;" maxlength="4000" value="${positionEntity.remark}" <c:if test="${method eq 'view'}">readonly</c:if> />
	            </td>
	            <td>
	                &nbsp;
	            </td>
	        </tr>
        </table>
    	<%-- Edit Page End --%>
    
		<br/>
		<label class="BText">&nbsp;&nbsp;设置当前职称所应的菜单模块审批节点:</label>
		<table class="table-xs table-bo" style="margin:5px;" width="99%">
			<tr>
				<td height="30" width="25%" bgcolor="#f4f9ff" align="center"><b>模块(菜单)名称</b></td>
				<td bgcolor="#f4f9ff" align="center"><b>操作节点</b></td>
			</tr>
			<c:forEach items="${positionDetailEntity}" var="ls" varStatus="row">
			<tr>
				<td bgcolor="#ffffff" width="30%">
					<input type="hidden" name="positionDetailEntity[${row.index}].id" value="${positionDetailEntity[row.index].id}" />
					<input type="hidden" name="positionDetailEntity[${row.index}].pid" value="${positionDetailEntity[row.index].pid}" />
					<input type="hidden" name="positionDetailEntity[${row.index}].menugroupid" value="${positionDetailEntity[row.index].menugroupid}" />
					<input type="hidden" name="positionDetailEntity[${row.index}].menugroupname" value="${positionDetailEntity[row.index].menugroupname}" />
					${positionDetailEntity[row.index].menugroupname}
				</td>
			    <td bgcolor="#ffffff" width="69%">
					<input class="easyui-combotree"
						   id="flowids${row.index}" 
						   name="positionDetailEntity[${row.index}].flowids" 
						   style="width: 780px; height: 24px; line-height: 24px;"
						   data-options="url:'${path}/system/flow_nodelist.action?menuid=2004', valueField:'id'" 
						   multiple/>
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

