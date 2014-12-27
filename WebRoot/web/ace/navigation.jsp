				<%@page language="java" contentType="text/html;charset=UTF-8"%>
				<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
				<%@taglib prefix="m" uri="/menu"%>

				<!--  Navigation 布局 Begin  -->
				<div class="breadcrumbs" id="breadcrumbs" style="background-color: #f2f2f2; border-bottom: #d6d6d6 solid 1px;">
					<script>
						try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
					</script>

					<ul class="breadcrumb">
						<li>
							<i class="ace-icon fa fa-home home-icon"></i>
							<a href="#">首页</a>
						</li>
						<li class="active"><m:name menuid="${menuid}"/></li>
					</ul>

					<%-- 
					<div class="nav-search" id="nav-search">
						<form class="form-search">
							<span class="input-icon">
								<input type="text" placeholder="检索..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
								<i class="ace-icon fa fa-search nav-search-icon"></i>
							</span>
						</form>
					</div>
					--%>
					
				</div>
				<!--  Navigation 布局 Begin  -->