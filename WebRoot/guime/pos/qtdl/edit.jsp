        <%@page language="java" contentType="text/html;charset=UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@taglib prefix="v" uri="/errors"%>
        
        <script src="${path}/global/js/template-guime.js"></script>

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
                    ele:"#skyid",
                    datatype:"*2-10",
                    errormsg:"提示:收款员编码至少2个字符,最多10个字符!",
                    nullmsg:"提示:请输入收款员编码!",
                    ajaxurl:"${URI}_validated.action?menuid=${menuid}&storeid=${storeid}&idValue=${qtdlEntity.id}",
                    sucmsg:"提示:当前收款员编码验证通过!"
                },
                {
                    ele:"#skyname",
                    datatype:"*2-20",
                    errormsg:"提示:收款员姓名至少2个字符,最多20个字符!",
                    nullmsg:"提示:请输入收款员姓名!",
                    sucmsg:"提示:当前收款员姓名验证通过!"
                },
                {
                    ele:"#skyposin",
                    datatype:"*2-10",
                    errormsg:"提示:收款员工作门店至少2个字符,最多10个字符!",
                    nullmsg:"提示:请输入收款员工作门店!",
                    sucmsg:"提示:当前收款员工作门店验证通过!"
                },
                {
                    ele:"#password",
                    datatype:"*2-10",
                    errormsg:"提示:密码至少2个字符,最多10个字符!",
                    nullmsg:"提示:请输入密码!",
                    sucmsg:"提示:当前密码验证通过!"
                },
                {
                    ele:"#address",
                    datatype:"*2-40",
                    errormsg:"提示:地址至少2个字符,最多40个字符!",
                    nullmsg:"提示:请输入地址!",
                    sucmsg:"提示:当前地址验证通过!"
                }

            ]);

        });
        </script>

        <form class="saveCalss form-horizontal" id="saveForm" method="post" action="${URI}_save.action" role="form" style="margin-top: 10px;">
            <input type="hidden" id="menuid" name="menuid" value="${menuid}" />
            <input type="hidden" id="storeid" name="storeid" value="${storeid}" />
            <input type="hidden" id="selectid" name="selectid" value="${selectid}" />
            <input type="hidden" name="qtdlEntity.id" value="${qtdlEntity.id}" />
            <!-- 添加自己需要的 hidden 字段 -->


            <%-- Edit Page Begin --%>
            <table width="100%" class="table-xs table-bo">
                <tr>
                    <td width="120" bgcolor="#f4f9ff" align="right">
                        <div style="width:120px;"><span class="RText">* </span>收款员编码</div>
                    </td>
                    <td width="40%" class="input-group-xs">
                        <input class="form-control" type="text" id="skyid" name="qtdlEntity.skyid" style="width: 99%;" maxlength="10" value="${qtdlEntity.skyid}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                    <td width="120" bgcolor="#f4f9ff" align="right">
                        <div style="width:120px;"><span class="RText">* </span>收款员姓名</div>
                    </td>
                    <td width="40%" class="input-group-xs">
                        <input class="form-control" type="text" id="skyname" name="qtdlEntity.skyname" style="width: 99%;" maxlength="20" value="${qtdlEntity.skyname}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                </tr>
                <tr>
                    <td width="120" bgcolor="#f4f9ff" align="right">
                        <div style="width:120px;"><span class="RText">* </span>收款员工作门店</div>
                    </td>
                    <td width="40%" class="input-group-xs">
                        <input class="form-control" type="text" id="skyposin" name="qtdlEntity.skyposin" style="width: 99%;" maxlength="10" value="${qtdlEntity.skyposin}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                    <td width="120" bgcolor="#f4f9ff" align="right">
                        <div style="width:120px;"><span class="RText">* </span>密码</div>
                    </td>
                    <td width="40%" class="input-group-xs">
                        <input class="form-control" type="text" id="password" name="qtdlEntity.password" style="width: 99%;" maxlength="10" value="${qtdlEntity.password}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                </tr>
                <tr>
                    <td width="120" bgcolor="#f4f9ff" align="right">
                        <div style="width:120px;"><span class="RText">* </span>地址</div>
                    </td>
                    <td width="40%" class="input-group-xs">
                        <input class="form-control" type="text" id="address" name="qtdlEntity.address" style="width: 99%;" maxlength="40" value="${qtdlEntity.address}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                    <td width="120" bgcolor="#f4f9ff" align="right">
                        <div style="width:120px;">邮编</div>
                    </td>
                    <td width="40%" class="input-group-xs">
                        <input class="form-control" type="text" id="postal" name="qtdlEntity.postal" style="width: 99%;" maxlength="10" value="${qtdlEntity.postal}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                </tr>
                <tr>
                    <td width="120" bgcolor="#f4f9ff" align="right">
                        <div style="width:120px;">电话</div>
                    </td>
                    <td width="40%" class="input-group-xs">
                        <input class="form-control" type="text" id="phone" name="qtdlEntity.phone" style="width: 99%;" maxlength="20" value="${qtdlEntity.phone}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                    <td width="120" bgcolor="#f4f9ff" align="right">
                        <div style="width:120px;">手机</div>
                    </td>
                    <td width="40%" class="input-group-xs">
                        <input class="form-control" type="text" id="sphone" name="qtdlEntity.sphone" style="width: 99%;" maxlength="20" value="${qtdlEntity.sphone}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                </tr>
                <tr>
                    <td width="120" bgcolor="#f4f9ff" align="right">
                        <div style="width:120px;">身份证号码</div>
                    </td>
                    <td width="40%" class="input-group-xs">
                        <input class="form-control" type="text" id="card_id" name="qtdlEntity.card_id" style="width: 99%;" maxlength="18" value="${qtdlEntity.card_id}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                    <td width="120" bgcolor="#f4f9ff" align="right">
                        <div style="width:120px;">是否能显示查看销售</div>
                    </td>
                    <td width="40%" class="input-group-xs">
                        <input class="form-control" type="text" id="yn_disp" name="qtdlEntity.yn_disp" style="width: 99%;" maxlength="1" value="${qtdlEntity.yn_disp}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                </tr>
                <tr>
                    <td width="120" bgcolor="#f4f9ff" align="right">
                        <div style="width:120px;">是否能打折</div>
                    </td>
                    <td width="40%" class="input-group-xs">
                        <input class="form-control" type="text" id="yn_disc" name="qtdlEntity.yn_disc" style="width: 99%;" maxlength="1" value="${qtdlEntity.yn_disc}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                    <td width="120" bgcolor="#f4f9ff" align="right">
                        <div style="width:120px;">是否能退货</div>
                    </td>
                    <td width="40%" class="input-group-xs">
                        <input class="form-control" type="text" id="yn_ret" name="qtdlEntity.yn_ret" style="width: 99%;" maxlength="1" value="${qtdlEntity.yn_ret}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                </tr>
                <tr>
                    <td width="120" bgcolor="#f4f9ff" align="right">
                        <div style="width:120px;">是否能取消交易</div>
                    </td>
                    <td width="40%" class="input-group-xs">
                        <input class="form-control" type="text" id="yn_del" name="qtdlEntity.yn_del" style="width: 99%;" maxlength="1" value="${qtdlEntity.yn_del}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                    <td width="120" bgcolor="#f4f9ff" align="right">
                        &nbsp;
                    </td>
                    <td width="40%" class="input-group-xs">
                        &nbsp;
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
                <button type="button" class="btn btn-sm btn-primary" data-rel="tooltip" data-placement="bottom" title="修改当前数据" onclick="modifyAction('${menuid}', '${storeid}', '${URI}', '${selectid}')" >
                    <span class="glyphicon glyphicon-pencil"></span> 修 改
                </button>
            </c:if>

            <button type="reset" class="btn btn-sm btn-default" data-rel="tooltip" data-placement="bottom" title="取消并返回" onclick="cancel('${menuid}', '${storeid}', '${URI}')">
                <span class="glyphicon glyphicon-share-alt"></span> 取 消
            </button>
        </div>
