<%@page language="java" contentType="text/html;charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

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
	<link href="${path}/global/css/base.css" rel="stylesheet" />
	
	<style>
		body {
		   margin-left: 0px;
		   margin-top: 0px;
		   margin-right: 0px;
		   margin-bottom: 0px;
		}
	</style>
		
	<script>
	    function setIswrite(id, obj){
			var value = "0";
			if (obj.checked)
			   value = "1";

			$.ajax({
                type: "post",
                url: "${path}/system/managepower_iswrite.action?id=" + id + "&value=" + value,
                success: function(result){
                },
                error: function(){
                	alert("保存配置失败!");
                }
            });
		}
		
		function setRuleChecked(managepowerid, ruleid, obj) {
			var value = "0";
			if (obj.checked)
			   value = "1";
			
			$.ajax({
                type: "post",
                url: "${path}/system/managepower_rulechecked.action?managepowerid=" + managepowerid + "&ruleid=" + ruleid + "&value=" + value,
                success: function(result){
                },
                error: function(){
                	alert("保存配置失败!");
                }
            });
		}
	</script>
  </head>
  
  <body>

	<c:if test="${menuwrite eq 1}">
	    <table width="98%" border="0" cellpadding="4" cellspacing="1" bgcolor="#dddddd" class="BText" style="margin-left:10px;">
		  <tr bgcolor="#ffffff">
		  	<td width="85" height="20" align="center" bgcolor="#F0F4F7">
				模块改写权限
		    </td>
		    <td height="25" align="left">
				   <label <c:if test="${menuwrite eq 0}"> class="GText" </c:if>>
		           <input type="checkbox" onclick="setIswrite('${managepowerid}', this)"
		           	    <c:if test="${iswrite eq '1'}">
				              checked
				        </c:if>
				   />
				       改写 
				   </label>
		    </td>
	  	  </tr>
		</table>
		<div class="GText" style="width: 98%; line-height: 20px; margin-left:10px;">
			说明:取消“改写”设置时,将会将联动取消当前角色下的所有“改写”.为了安全,勾选时不会联动勾选.
		</div>
	</c:if>
	
	<table width="98%" border="0" cellpadding="4" cellspacing="1" bgcolor="#dddddd" class="BText" style="margin-top:10px;margin-left:10px;">
	  <tr bgcolor="#F0F4F7">
	    <td width="10%" align="center" height="20">选择</td>
	    <td width="30%" align="center">规则名称</td>
	    <td width="15%" align="center">优先级</td>
	    <td align="center">备注</td>
  	  </tr>
  	  
  	  <c:forEach items="${managePowerRuleList}" var="ls" varStatus="row">
		  <tr bgcolor='<c:if test="${row.index%2 eq 0}">#FFFFFF</c:if><c:if test="${row.index%2 ne 0}">#FBFDFF</c:if>'>
		    <td height="18" align="center">
	           <input type="checkbox" name="${ls.managepowerid}" onclick="setRuleChecked('${ls.managepowerid}', '${ls.ruleid}', this)"
					  <c:if test="${ls.checked eq '1'}">
			              checked
			          </c:if>
			   />
		    </td>
		    <td>&nbsp;${ls.rulename}</td>
		    <td align="center">${ls.num}</td>
		    <td>&nbsp;${ls.remark}</td>
		  </tr>
	  </c:forEach>
	</table>
	
	<div class="GText" style="width: 98%; line-height: 20px; margin-left:10px;">
		说明:取消“规则”设置时,将会将联动删除当前角色下的相应“规则”,诺当前取消的“规则”正被使用时,还需当前角色管理员人工重新设置所创建的角色所属“规则”.为了安全,勾选时不会联动勾选,同样需要当前角色管理员人工进入分配.
	</div>

  </body>
</html>