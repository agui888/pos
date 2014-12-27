        <%@page language="java" contentType="text/html;charset=UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@taglib prefix="v" uri="/errors"%>
        <%@taglib prefix="s" uri="/struts-tags"%>

        <script>
        $(document).ready(function() {
        	$("#maxconnection").ace_spinner({value:20,min:5,max:200,step:1, btn_up_class:"btn-info" , btn_down_class:"btn-info"});
        	
            var tip = function(msg,o,cssctl){
                var objtip=$("#msg");
                cssctl(objtip,o.type);
                objtip.text(msg);
                return true;
            };

            var validForm = getPostValidForm("${menuid}", "${URI}", tip);
            validForm.addRule([
                {
                    ele:"#storename",
                    datatype:"*2-500",
                    errormsg:"提示:商家名称至少2个字符,最多500个字符!",
                    nullmsg:"提示:请输入商家名称!",
                    ajaxurl:"${URI}_validated.action?menuid=${menuid}&idValue=${storeEntity.id}",
                    sucmsg:"提示:当前商家名称验证通过!"
                },
                {
                    ele:"#code",
                    datatype:"*2-100",
                    errormsg:"提示:营业执照编号至少2个字符,最多100个字符!",
                    nullmsg:"提示:请输入营业执照编号!",
                    sucmsg:"提示:当前营业执照编号验证通过!"
                },
                {
                    ele:"#linkman",
                    datatype:"*2-20",
                    errormsg:"提示:负责人至少2个字符,最多20个字符!",
                    nullmsg:"提示:请输入负责人!",
                    sucmsg:"提示:当前负责人验证通过!"
                },
                {
                    ele:"#tel",
                    datatype:"*2-20",
                    errormsg:"提示:电话号码至少2个字符,最多20个字符!",
                    nullmsg:"提示:请输入电话号码!",
                    sucmsg:"提示:当前电话号码验证通过!"
                },
                {
                    ele:"#phone",
                    datatype:"m",
                    errormsg:"提示:请输入正确的手机号码!",
                    nullmsg:"提示:请输入手机号码!",
                    sucmsg:"提示:当前手机号码验证通过!"
                },
                {
                    ele:"#email",
                    datatype:"e",
                    errormsg:"请输入正确的邮件格式!",
                    nullmsg:"提示:请输入电子邮件!",
                    sucmsg:"提示:当前电子邮件验证通过!"
                },
                {
                    ele:"#address",
                    datatype:"*2-500",
                    errormsg:"提示:地址至少2个字符,最多500个字符!",
                    nullmsg:"提示:请输入地址!",
                    sucmsg:"提示:当前地址验证通过!"
                },
                {
                    ele:"#state",
                    datatype:"*2-8",
                    errormsg:"提示:状态至少2个字符,最多8个字符!",
                    nullmsg:"提示:请输入状态!",
                    sucmsg:"提示:当前状态验证通过!"
                },
                {
                    ele:"#datasource",
                    datatype:"*2-255",
                    errormsg:"提示:数据源至少2个字符,最多255个字符!",
                    nullmsg:"提示:请输入数据源!",
                    sucmsg:"提示:当前数据源验证通过!"
                },
                {
                    ele:"#maxconnection",
                    datatype:"*2-8",
                    errormsg:"提示:最大连接数至少2个字符,最多8个字符!",
                    nullmsg:"提示:请输入最大连接数!",
                    sucmsg:"提示:当前最大连接数验证通过!"
                }

            ]);

        });
        </script>

        <form class="saveCalss form-horizontal" id="saveForm" method="post" action="${URI}_save.action" role="form" style="margin-top: 10px;">
            <input type="hidden" id="menuid" name="menuid" value="${menuid}" />
            <input type="hidden" id="selectid" name="selectid" value="${selectid}" />
            <input type="hidden" name="storeEntity.id" value="${storeEntity.id}" />
            <!-- 添加自己需要的 hidden 字段 -->

			<c:if test="${method eq 'view'}">
			<h4 class="lighter">
				<i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer blue"></i>
				<b style="color: red">No: ${storeEntity.id}</b>
			</h4>
			</c:if>

            <%-- Edit Page Begin --%>
            <table width="100%" class="table-xs table-bo">
            	<tr>
				    <td colspan="4" bgcolor="#ecf4fe" height="30">
				    	<img src="${path}/global/images/base/userparam.png" border="0" style="vertical-align: text-top; border-style: none; margin-right: 0px; margin-top: -1px;"/> 1) 基本信息
				    </td>
			  	</tr>
                <tr>
                    <td width="90" bgcolor="#f4f9ff" align="right">
                        <div style="width:90px;"><span class="RText">* </span>所属地区</div>
                    </td>
                    <td width="40%" class="input-group-xs">
                        <input class="easyui-combotree form-control" <c:if test="${method eq 'view'}">readonly</c:if>
							               id="cityid" 
							        	   name="storeEntity.cityid" 
							        	   value="${storeEntity.cityid}" 
							        	   style="width:438px; height: 26px; line-height: 26px;"
							        	   data-options="url:'${path}/guime/base/city_combobox.action?menuid=5002', valueField:'id'"/>  <!-- 多选参数 multiple -->
							        	   
                    </td>
                    <td width="90" bgcolor="#f4f9ff" align="right">
                        <div style="width:90px;"><span class="RText">* </span>商家名称</div>
                    </td>
                    <td width="40%" class="input-group-xs">
                        <input class="form-control" type="text" id="storename" name="storeEntity.storename" style="width: 99%;" maxlength="500" value="${storeEntity.storename}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                </tr>
                <tr>
                    <td width="90" bgcolor="#f4f9ff" align="right">
                        <div style="width:90px;"><span class="RText">* </span>营业执照编号</div>
                    </td>
                    <td width="40%" class="input-group-xs">
                        <input class="form-control" type="text" id="code" name="storeEntity.code" style="width: 99%;" maxlength="100" value="${storeEntity.code}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                    <td width="90" bgcolor="#f4f9ff" align="right">
                        <div style="width:90px;"><span class="RText">* </span>负责人</div>
                    </td>
                    <td width="40%" class="input-group-xs">
                        <input class="form-control" type="text" id="linkman" name="storeEntity.linkman" style="width: 99%;" maxlength="20" value="${storeEntity.linkman}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                </tr>
                <tr>
                    <td width="90" bgcolor="#f4f9ff" align="right">
                        <div style="width:90px;"><span class="RText">* </span>电话号码</div>
                    </td>
                    <td width="40%" class="input-group-xs">
                        <input class="form-control" type="text" id="tel" name="storeEntity.tel" style="width: 99%;" maxlength="20" value="${storeEntity.tel}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                    <td width="90" bgcolor="#f4f9ff" align="right">
                        <div style="width:90px;"><span class="RText">* </span>手机号码</div>
                    </td>
                    <td width="40%" class="input-group-xs">
                        <input class="form-control" type="text" id="phone" name="storeEntity.phone" style="width: 99%;" maxlength="11" value="${storeEntity.phone}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                </tr>
                <tr>
                    <td width="90" bgcolor="#f4f9ff" align="right">
                        <div style="width:90px;"><span class="RText">* </span>电子邮件</div>
                    </td>
                    <td width="40%" class="input-group-xs">
                        <input class="form-control" type="text" id="email" name="storeEntity.email" style="width: 99%;" maxlength="20" value="${storeEntity.email}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                    <td width="90" bgcolor="#f4f9ff" align="right">
                        <div style="width:90px;"><span class="RText">* </span>状态</div>
                    </td>
                    <td width="40%" class="input-group-xs">
                        <s:radio id="state" theme="simple" name="storeEntity.state" list="#{'0':'启用','1':'停用'}"/>
                    </td>
                </tr>
                <tr>
                    <td width="90" bgcolor="#f4f9ff" align="right">
                        <div style="width:90px;"><span class="RText">* </span>地址</div>
                    </td>
                    <td width="40%" colspan="3" class="input-group-xs">
                        <input class="form-control" type="text" id="address" name="storeEntity.address" style="width: 99%;" maxlength="500" value="${storeEntity.address}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                </tr>
            </table>
            
            <br/>
            
            <table width="100%" class="table-xs table-bo">
            	<tr>
				    <td colspan="4" bgcolor="#ecf4fe" height="30">
				    	<img src="${path}/global/images/base/db.gif" border="0" style="vertical-align: text-top; border-style: none; margin-right: 0px; margin-top: -1px;"/> 2) 服务器信息
				    </td>
			  	</tr>
                <tr>
                    <td width="90" bgcolor="#f4f9ff" align="right">
                        <div style="width:90px;"><span class="RText">* </span>数据源</div>
                    </td>
                    <td width="40%" class="input-group-xs">
                        <s:select cssClass="form-control" id="datasource" name="storeEntity.datasource" list="serverList" listKey="datasource" listValue="servername" theme="simple" cssStyle="width: 240px;" />
                    </td>
                    <td width="90" bgcolor="#f4f9ff" align="right">
                        <div style="width:90px;"><span class="RText">* </span>最大连接数</div>
                    </td>
                    <td width="40%" class="input-group-xs">
                        <input class="form-control input-mini" type="text" id="maxconnection" name="storeEntity.maxconnection" style="width: 99%;" maxlength="0" value="${storeEntity.maxconnection}" <c:if test="${method eq 'view'}">readonly</c:if> />
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
