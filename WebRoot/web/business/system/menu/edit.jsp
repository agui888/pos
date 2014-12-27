	   <%@page language="java" contentType="text/html;charset=UTF-8"%>
	   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	   <%@taglib prefix="v" uri="/errors"%>
	   <%@taglib prefix="s" uri="/struts-tags"%>
	
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
	                    ele:"#menu",
	                    datatype:"*2-50",
	                    errormsg:"提示:菜单名称至少2个字符,最多50个字符!",
	                    nullmsg:"提示:请输入菜单名称!",
	                    sucmsg:"提示:当前菜单名称验证通过!"
	                },
	                {
	                    ele:"#ico",
	                    datatype:"*2-1000",
	                    errormsg:"提示:图标至少2个字符,最多1000个字符!",
	                    nullmsg:"提示:请输入图标!",
	                    sucmsg:"提示:当前图标验证通过!"
	                }
	            ]);
	
	        });
	   </script>

       <form class="saveCalss form-horizontal" id="saveForm" method="post" action="${URI}_save.action" role="form">
           <input type="hidden" id="menuid" name="menuid" value="${menuid}" />
           <input type="hidden" id="selectid" name="selectid" value="${selectid}" />
           <!-- 添加自己需要的 hidden 字段 -->

           <table class="table-xs table-bo" style="margin:5px;" style="width:99%">
               <tr>
                   <td width="75" bgcolor="#f4f9ff" align="right">
                       <div style="width:75px;">ID</div>
                   </td>
                   <td width="50%" class="input-group-xs">
                       <input class="form-control" type="text" id="id" name="menuEntity.id" style="width: 99%;" maxlength="0" value="${menuEntity.id}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                   <td width="75" bgcolor="#f4f9ff" align="right">
                       <div style="width:75px;">SID</div>
                   </td>
                   <td width="50%" class="input-group-xs">
                       <input class="form-control" type="text" id="sid" name="menuEntity.sid" style="width: 99%;" maxlength="0" value="${menuEntity.sid}" <c:if test="${method eq 'view'}">readonly</c:if> />
                   </td>
               </tr>
               <tr>
                   <td width="75" bgcolor="#f4f9ff" align="right">
                       <div style="width:75px;">类型</div>
                   </td>
                   <td width="50%" class="input-group-xs">
                       <input class="form-control" type="text" id="type" name="menuEntity.type" style="width: 99%;" maxlength="10" value="${menuEntity.type}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                   <td width="75" bgcolor="#f4f9ff" align="right">
                       <div style="width:75px;">序号</div>
                   </td>
                   <td width="50%" class="input-group-xs">
                       <input class="form-control" type="text" id="colid" name="menuEntity.colid" style="width: 99%;" maxlength="0" value="${menuEntity.colid}" <c:if test="${method eq 'view'}">readonly</c:if> />
                   </td>
               </tr>
               <tr>
                   <td width="75" bgcolor="#f4f9ff" align="right">
                       <div style="width:75px;"><span class="RText">* </span>菜单名称</div>
                   </td>
                   <td width="50%" class="input-group-xs">
                       <input class="form-control" type="text" id="menu" name="menuEntity.menu" style="width: 99%;" maxlength="50" value="${menuEntity.menu}" <c:if test="${method eq 'view'}">readonly</c:if> />
                       <v:value value="${errors.menu}"/>
                   </td>
                   <td width="75" bgcolor="#f4f9ff" align="right">
                       <div style="width:75px;">删除标记</div>
                   </td>
                   <td width="50%" class="input-group-xs">
                       <s:radio id="delflag" theme="simple" name="menuEntity.delflag" list="#{'0':'0否', '1':'1是'}" />
                   </td>
               </tr>
               <tr>
				<td width="75" bgcolor="#f4f9ff" align="right">
                       <div style="width:75px;">URL</div>
                   </td>
                   <td width="50%" class="input-group-xs">
                       <input class="form-control" type="text" id="url" name="menuEntity.url" style="width: 99%;" maxlength="1000" value="${menuEntity.url}" <c:if test="${method eq 'view'}">readonly</c:if> />
                       <v:value value="${errors.url}"/>
                   </td>
                   <td width="75" bgcolor="#f4f9ff" align="right">
                       <div style="width:75px;"><span class="RText">* </span>图标</div>
                   </td>
                   <td width="50%" class="input-group-xs">
                       <input class="form-control" type="text" id="ico" name="menuEntity.ico" style="width: 99%;" maxlength="1000" value="${menuEntity.ico}" <c:if test="${method eq 'view'}">readonly</c:if> />
                       <v:value value="${errors.ico}"/>
                    </td>
               </tr>
               <tr>
				<td width="75" bgcolor="#f4f9ff" align="right">
                       <div style="width:75px;">权限</div>
                   </td>
                   <td width="50%" class="input-group-xs">
                       <s:radio id="power" theme="simple" name="menuEntity.power" list="#{'0':'0否', '1':'1是'}" />
                   </td>
                   <td width="75" bgcolor="#f4f9ff" align="right">
                       <div style="width:75px;">可写</div>
                   </td>
                   <td width="50%" class="input-group-xs">
                       <s:radio id="write" theme="simple" name="menuEntity.write" list="#{'0':'0否', '1':'1是'}" />
                    </td>
               </tr>
               <tr>
				    <td width="75" bgcolor="#f4f9ff" align="right">
                       <div style="width:75px;">工作流ID</div>
                   </td>
                   <td width="50%" class="input-group-xs">
                       <input class="form-control" type="text" id="menugroupid" name="menuEntity.menugroupid" style="width: 99%;" maxlength="0" value="${menuEntity.menugroupid}" <c:if test="${method eq 'view'}">readonly</c:if> />
                   </td>
                   <td width="75" bgcolor="#f4f9ff" align="right">
                       <div style="width:75px;">工作流名称</div>
                   </td>
                   <td width="50%" class="input-group-xs">
                       <input class="form-control" type="text" id="menugroupname" name="menuEntity.menugroupname" style="width: 99%;" maxlength="50" value="${menuEntity.menugroupname}" <c:if test="${method eq 'view'}">readonly</c:if> />
                   </td>
               </tr>
			   <tr>
				    <td width="75" bgcolor="#f4f9ff" align="right">
                       <div style="width:75px;">菜单描述</div>
                   </td>
                   <td width="50%" colspan="3" class="input-group-xs">
                       <input class="form-control" type="text" id="description" name="menuEntity.description" style="width: 99%;" maxlength="50" value="${menuEntity.description}" <c:if test="${method eq 'view'}">readonly</c:if> />
                   </td>
               </tr>
           </table>
       </form>

       <span id="msg" style="margin-left:10px;"><v:value value="${errors.validateError}"/></span>

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

