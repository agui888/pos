<%@page language="java" contentType="text/html;charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="e" uri="/easyui"%>

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

    <link href="${path}/global/css/base.css" rel="stylesheet" />
    <link rel="stylesheet" href="${path}/components/ace-1.3.1/assets/css/bootstrap.min.css" />
    
    <script src="${path}/components/jquery-easyui-1.3.6/jquery.min.js"></script> 
    <script src="${path}/global/js/bootstrap-extend.js"></script>
    
	<script>
		$(document).ready(function() {
			$("body").hide().fadeIn(500);
		});
	</script>
		
	<%-- 第一步 选择 Excel 文件. --%>
	<c:if test="${step eq 1}">	
		<script>
			$(function(){
				$("#importForm").submit(function() {
					try {
						var obj = document.getElementById("inputFile");
						if(obj.value == "") {
							alertBootstrap("请选择需要导入的 Excel 文档.");
				  			return false;
				 		}
				 		
				 		var suffix = obj.value.match(/^(.*)(\.)(.{1,8})$/)[3];
					    if(suffix != "xls") {
					  		alertBootstrap("文件格式不正确!请使用 Excel 文档.");
					  		return false;
					 	} else {
					 		showProgressBootstrap("请稍后,正在上传 Excel 文件"); 
					  		return true;
					 	}						
					} catch(e) {
						alert(e);
					}
				});
			});
		</script>
	</c:if>
	
	<%-- 第二步 选择  Column 列. --%>
	<c:if test="${step eq 2}">
		<script>
			closeProgressBootstrap();  // Close the Bootstrap process window
		</script>
	</c:if>
	
	<%-- 第三步 导入结果情况. --%>
	<c:if test="${step eq 3}">
		<script>
			function setMessage(t, s, e) {
				$("#outMessage")[0].innerHTML = "提示： 当前 Excel 文件共 [ " + t + " ] 行, 其中导入成功 [ " + s + " ] 行,失败 [ <span class='RText'>" + e + "</span> ] 行.";
				closeProgressBootstrap();  // Close the Bootstrap process window
			}
		</script>
	</c:if>
</head>

<body marginheight="0" leftmargin="0">
	
	<div style="width:100%; height:380px;">	
		<div style="width:100%; height:340px; overflow: auto;" align="center">
		
			<%-- 第一步 选择 Excel 文件. --%>
			<c:if test="${step eq 1}">
				<form id="importForm" method="post" action="${URI}_importexcel.action?step=2" enctype="multipart/form-data">
					<input type="hidden" name="menuid" value="${menuid}" /> 
					<table width="700" class="table-xs" style="margin-top: 60px;">
					  <tr>
					    <td width="120" height="35" align="right">
					    	请选择Excel文件:
					    </td>
					    <td class="control-group">
					    	<input type="file" id="inputFile" name="inputFile" class="form-control"/>
					    </td>
					  </tr>
					  <tr>
					    <td height="140" colspan="2">
							<ul>
								<li>
								注意:
								</li>
								<li style="margin-left: 20px;">
							   		1. 文件内容第一行必须为表头.
							   	</li>
							   	<li style="margin-left: 20px;">
							   		2. 导入只支持Excel文件格式.
							   	</li>
							</ul>					    
					    </td>
					  </tr>
					</table>
				</form>
			</c:if>
			
			<%-- 第二步 选择  Column 列. --%>
			<c:if test="${step eq 2}">
				<form id="importForm" method="post" action="${URI}_importexcel.action?step=3" enctype="multipart/form-data">
					<input type="hidden" name="menuid" value="${menuid}" />
					<table class="table table-condensed">
					  <tr>
					  	<td width="10%" align="center"><b>序列</b></td>
					    <td width="45%" align="center"><b>表格列头</b></td>
					    <td width="45%" align="center"><b>文件列头</b></td>
					  </tr>
					  <c:forEach items="${column}" var="ls" varStatus="row">
						  <tr>
						  	<td align="center">
						    	${row.index + 1}
						    </td>
						    <td>
						    	${ls.display}
						    	<input type="hidden" name="column" value="${ls.column}" />
						    </td>
						    <td>
							    <select name="cells" class="easyui-combobox easyui-validatebox" style="width: 350px;">
							    	<c:forEach items="${cells}" var="cls">
							    		<option value="${cls.row}" <c:if test="${ls.display eq cls.content}">selected="selected"</c:if>>${cls.content}</option>
							    	</c:forEach>
			      				</select>
						    </td>
						  </tr>
					  </c:forEach>
					</table>
				</form>
			</c:if>
			
			<%-- 第三步 导入结果情况. --%>
			<c:if test="${step eq 3}">
				<c:set var="successNum" value="0"/>
				<c:set var="errorNum" value="0"/>
				
				<div class="alert alert-success" role="alert" align="left" style="position:absolute; width:98%;">
					<span id="outMessage" ></span>
				</div>
				
				<table width="100%" class="table table-condensed" style="margin-top: 65px;">
				  <tr>
				    <td width="10%" align="center"><b>行号</b></td>
				    <td width="20%" align="center"><b>状态</b></td>
				    <td width="70%" align="center"><b>导入情况</b></td>
				  </tr>
				  
				  <c:forEach items="${error}" var="ls" varStatus="row">
					  <tr>
					    <td align="center" height="24"> 
					    	<span class="<c:if test="${ls.state eq 0}">RText</c:if><c:if test="${ls.state eq 1}">LText</c:if>">
							        第 ${ls.row} 行
							</span>
					    </td>
					    <td align="center">
					    	<span class="<c:if test="${ls.state eq 0}">RText</c:if><c:if test="${ls.state eq 1}">LText</c:if>">
					    		<c:if test="${ls.state eq 0}">
									<c:set var="errorNum" value="${errorNum + 1}"/>				    			
					    			失败
					    		</c:if>
					    		<c:if test="${ls.state eq 1}">
					    			<c:set var="successNum" value="${successNum + 1}"/>
					    			成功
					    		</c:if>
					    	</span>
					    </td>
					    <td>
					    	<span class="<c:if test="${ls.state eq 0}">RText</c:if><c:if test="${ls.state eq 1}">LText</c:if>">
						    	&nbsp;${ls.message}
						    </span>
					    </td>
					  </tr>
				  </c:forEach>
				</table>
				
				<c:set var="sumNum" value="${successNum + errorNum}"/>
			</c:if>
			
		</div>
		
		<%-- 工具栏. --%>
		<div style="position:absolute; bottom:0px; width: 100%">
			<div align="right">
				<c:if test="${step eq 2}">
					<a class="btn btn-sm btn-info" href="${URI}_importexcel.action?menuid=${menuid}&step=1">
						<span class="glyphicon glyphicon-chevron-left"></span> 上一步
					</a>
				</c:if>
				<c:if test="${step eq 1}">
					<a class="btn btn-sm btn-info" href="###" onclick="$('#importForm').submit();">
						<span class="glyphicon glyphicon-chevron-right"></span> 下一步
					</a>
				</c:if>
				<c:if test="${step eq 2}">
					<a class="btn btn-sm btn-danger" href="###" onclick="showProgressBootstrap('请稍后,正在导入资料'); $('#importForm').submit();">
						<span class="glyphicon glyphicon-saved"></span> 开始导入
					</a>
				</c:if>
				<a class="btn btn-sm btn-default" href="###" onclick="parent.closeIframeBootstrap();">
					<span class="glyphicon glyphicon-share-alt"></span> 关  闭
				</a>
			</div>
		</div>
	</div>
		
	<script>
		if (setMessage) {
			setMessage("${sumNum}", "${successNum}", "${errorNum}");
		}
	</script>
	
	<c:import url="/global/import/bootstrap-extend.jsp"></c:import>
	<script src="${path}/components/ace-1.3.1/assets/js/bootstrap.min.js"></script>
    	
</body>
</html>
