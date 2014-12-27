<%@page language="java" contentType="text/html;charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="m" uri="/menu"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>硅米 ERP 企业管理系统</title>

		<c:import url="/web/ace/head.jsp"></c:import>
	</head>

	<body class="no-skin">
	
		<c:import url="/web/ace/title.jsp"></c:import>

		<div class="main-container" id="main-container">
		
			<c:import url="/web/ace/menu.jsp"></c:import>

			<div class="main-content">
				<c:import url="/web/ace/navigation.jsp"></c:import>

				<%-- ACE 特色功能 Begin --%>
				<div class="page-content">
					<div class="ace-settings-container" id="ace-settings-container">
						<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
							<i class="ace-icon fa fa-cog bigger-150"></i>
						</div>

						<div class="ace-settings-box clearfix" id="ace-settings-box">
							<div class="pull-left width-50">
								<div class="ace-settings-item">
									<div class="pull-left">
										<select id="skin-colorpicker" class="hide">
											<option data-skin="no-skin" value="#438EB9">#438EB9</option>
											<option data-skin="skin-1" value="#222A2D">#222A2D</option>
											<option data-skin="skin-2" value="#C6487E">#C6487E</option>
											<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
										</select>
									</div>
									<span>&nbsp; 选择皮肤</span>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
									<label class="lbl" for="ace-settings-navbar">固定导航</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
									<label class="lbl" for="ace-settings-sidebar">固定菜单</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
									<label class="lbl" for="ace-settings-breadcrumbs">固定所有</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
									<label class="lbl" for="ace-settings-add-container"> 切换窄屏</label>
								</div>
							</div>

							<div class="pull-left width-50">
								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" />
									<label class="lbl" for="ace-settings-hover">弹出子菜单</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" />
									<label class="lbl" for="ace-settings-compact">紧凑的菜单</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" />
									<label class="lbl" for="ace-settings-highlight">菜单活动样式</label>
								</div>

							</div>
						</div>
					</div>

					<div class="page-content-area">
						<div class="page-header">
							<h1>
								<m:name menuid="${menuid}"/>
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									<m:description menuid="${menuid}"/>
								</small>
							</h1>
						</div>

						<div class="row">
							<div class="col-xs-12">
								
								<!-- JSP Import Begin -->
								<c:if test="${goJsp ne null}">
									<c:import url="${goJsp}"></c:import>
								</c:if>
								<c:if test="${goJsp eq null}">
									请指定goJsp页面!
								</c:if>
								<!-- JSP Import End -->
															
							</div>
						</div>
					</div>
				</div>
				<%-- ACE 特色功能 End --%>
				
			</div>

			<c:import url="/web/ace/footer.jsp"></c:import>
		</div>
		
		<c:import url="/web/ace/bottom.jsp"></c:import>
		
	</body>
</html>
		