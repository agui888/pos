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
                url: "${path}/system/userpower_iswrite.action?id=" + id + "&value=" + value,
                success: function(result){
                },
                error: function(){
                	alert("保存配置失败!");
                }
            });
		}
		
		function setRuleChecked(userpowerid, ruleid, obj) {
			var value = "0";
			if (obj.checked)
			   value = "1";

			$.ajax({
                type: "post",
                url: "${path}/system/userpower_rulechecked.action?userpowerid=" + userpowerid + "&ruleid=" + ruleid + "&value=" + value,
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

	<c:if test="${managepowerwrite2 eq 1}">
		<table width="98%" border="0" cellpadding="4" cellspacing="1" bgcolor="#dddddd" class="BText" style="margin-left:10px;">
		  <tr bgcolor="#ffffff">
		  	<td width="85" height="20" align="center" bgcolor="#F0F4F7">
				模块改写权限
		    </td>
		    <td height="25" align="left">
				   <label <c:if test="${managepowerwrite2 eq 0}"> class="GText" </c:if>>
		           <input type="checkbox" onclick="setIswrite('${userpowerid}', this)"
		           	    <c:if test="${iswrite2 eq '1'}">
				              checked
				        </c:if>
				   />
				       改写 
				   </label>
		    </td>
	  	  </tr>
		</table>
	</c:if>
	
	<table width="98%" border="0" cellpadding="4" cellspacing="1" bgcolor="#dddddd" class="BText" style="margin-top:10px;margin-left:10px;">
	  <tr bgcolor="#F0F4F7">
	    <td width="10%" align="center" height="20">选择</td>
	    <td width="30%" align="center">规则名称</td>
	    <td width="15%" align="center">优先级</td>
	    <td align="center">备注</td>
  	  </tr>
  	  
  	  <c:forEach items="${userPowerRuleList}" var="ls" varStatus="row">
		  <tr bgcolor='<c:if test="${row.index%2 eq 0}">#FFFFFF</c:if><c:if test="${row.index%2 ne 0}">#FBFDFF</c:if>'>
		    <td height="18" align="center">
	           <input type="radio" name="${ls.userpowerid}" onclick="setRuleChecked('${ls.userpowerid}', '${ls.ruleid}', this)"
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

  </body>
</html>