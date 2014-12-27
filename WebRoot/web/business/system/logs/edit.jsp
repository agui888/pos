        <%@page language="java" contentType="text/html;charset=UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@taglib prefix="v" uri="/errors"%>

            <%-- Edit Page Begin --%>
            <table width="100%" class="table-xs table-bo">
                <tr>
                    <td width="75" bgcolor="#f4f9ff" align="right">
                        <div style="width:75px;">请求IP</div>
                    </td>
                    <td width="45%" class="input-group-xs">
                        <input class="form-control" type="text" id="userip" name="logsEntity.userip" style="width: 99%;" maxlength="50" value="${logsEntity.userip}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                    <td width="75" bgcolor="#f4f9ff" align="right">
                        <div style="width:75px;">请求URL</div>
                    </td>
                    <td width="45%" class="input-group-xs">
                        <input class="form-control" type="text" id="httpurl" name="logsEntity.httpurl" style="width: 99%;" maxlength="4000" value="${logsEntity.httpurl}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                </tr>
                <tr>
                    <td width="75" bgcolor="#f4f9ff" align="right">
                        <div style="width:75px;">用户帐号</div>
                    </td>
                    <td width="45%" class="input-group-xs">
                        <input class="form-control" type="text" id="userid" name="logsEntity.userid" style="width: 99%;" maxlength="20" value="${logsEntity.userid}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                    <td width="75" bgcolor="#f4f9ff" align="right">
                        <div style="width:75px;">用户名</div>
                    </td>
                    <td width="45%" class="input-group-xs">
                        <input class="form-control" type="text" id="username" name="logsEntity.username" style="width: 99%;" maxlength="50" value="${logsEntity.username}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                </tr>
                <tr>
                    <td width="75" bgcolor="#f4f9ff" align="right">
                        <div style="width:75px;">记录时间</div>
                    </td>
                    <td width="45%" class="input-group-xs">
                        <input class="form-control" type="text" id="starttime" name="logsEntity.starttime" style="width: 99%;" maxlength="10" value="${logsEntity.starttime}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                    <td width="75" bgcolor="#f4f9ff" align="right">
                        <div style="width:75px;">结束时间</div>
                    </td>
                    <td width="45%" class="input-group-xs">
                        <input class="form-control" type="text" id="endtime" name="logsEntity.endtime" style="width: 99%;" maxlength="10" value="${logsEntity.endtime}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                </tr>
                <tr>
                    <td width="75" bgcolor="#f4f9ff" align="right">
                        <div style="width:75px;">菜单编号</div>
                    </td>
                    <td width="45%" class="input-group-xs">
                        <input class="form-control" type="text" id="menuid" name="logsEntity.menuid" style="width: 99%;" maxlength="50" value="${logsEntity.menuid}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                    <td width="75" bgcolor="#f4f9ff" align="right">
                        <div style="width:75px;">方法</div>
                    </td>
                    <td width="45%" class="input-group-xs">
                        <input class="form-control" type="text" id="classes" name="logsEntity.classes" style="width: 99%;" maxlength="1000" value="${logsEntity.classes}" <c:if test="${method eq 'view'}">readonly</c:if> />
                    </td>
                </tr>
                <tr>
                    <td width="75" bgcolor="#f4f9ff" align="right">
                        <div style="width:75px;">被织入对象</div>
                    </td>
                    <td width="45%" class="input-group-xs">
                        <textarea id="aroundobject" name="logsEntity.aroundobject" style="width: 99%;" rows="3" cols="3" <c:if test="${method eq 'view'}">readonly</c:if> />${logsEntity.aroundobject}</textarea>
                    </td>
                    <td width="75" bgcolor="#f4f9ff" align="right">
                        <div style="width:75px;">参数</div>
                    </td>
                    <td width="45%" class="input-group-xs">
                        <textarea id="objectparam" name="logsEntity.objectparam" style="width: 99%;" rows="3" cols="3" <c:if test="${method eq 'view'}">readonly</c:if> />${logsEntity.objectparam}</textarea>
                    </td>
                </tr>
                <tr>
                    <td width="75" bgcolor="#f4f9ff" align="right">
                        <div style="width:75px;">HTTP参数</div>
                    </td>
                    <td width="45%" class="input-group-xs">
                        <textarea id="httpparam" name="logsEntity.httpparam" style="width: 99%;" rows="8" cols="3" <c:if test="${method eq 'view'}">readonly</c:if> />${logsEntity.httpparam}</textarea>
                    </td>
                    <td width="75" bgcolor="#f4f9ff" align="right">
                        <div style="width:75px;">返回值</div>
                    </td>
                    <td width="45%" class="input-group-xs">
                        <textarea id="returnparam" name="logsEntity.returnparam" style="width: 99%;" rows="8" cols="3" <c:if test="${method eq 'view'}">readonly</c:if> />${logsEntity.returnparam}</textarea>
                    </td>
                </tr>
            </table>
        </form>

        <div align="center" style="margin: 20px;">
            <button type="reset" class="btn btn-sm btn-default" data-rel="tooltip" data-placement="bottom" title="取消并返回" onclick="cancel('${menuid}', '${URI}')">
                <span class="glyphicon glyphicon-share-alt"></span> 返 回
            </button>
        </div>
