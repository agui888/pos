	<%@page language="java" contentType="text/html;charset=UTF-8"%>
	
	<!-- Bootstrap Extend File (Begin) -->
	
	<div id="alertBootstrap" class="modal fade bs-example-modal-sm">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<a class="close" onclick="$('#alertBootstrap').modal('hide')" href="#">×</a>
					<h4 class="modal-title" id="editModalLabel"><span class="glyphicon glyphicon-info-sign"></span> 提示</h4>
				</div>
				<div class="modal-body">
					<p id="alertBootstrapMessage">提示内容!</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-sm btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> 关 闭</button>
				</div>
			</div>
		</div>
	</div>
	
	
	<div id="confirmBootstrap" class="modal fade bs-example-modal-sm">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<a class="close" onclick="$('#confirmBootstrap').modal('hide')" href="#">×</a>
					<h4 class="modal-title" id="editModalLabel"><span class="glyphicon glyphicon-info-sign"></span> 提示</h4>
				</div>
				<div class="modal-body">
					<p id="confirmBootstrapMessage">提示内容?</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-sm btn-danger" id="confirmBootstrapButton"><span class="glyphicon glyphicon-ok"></span> 确 定</button>
					<button type="button" class="btn btn-sm btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> 取 消</button>
				</div>
			</div>
		</div>
	</div>
	
	<div id="progressBootstrap" class="modal fade bs-example-modal-sm" data-backdrop="">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="editModalLabel"><span class="glyphicon glyphicon-info-sign"></span> 提示</h4>
				</div>
				<div class="modal-body">
					<p id="progressBootstrapMessage">正在查询,请稍后......</p>
					<div class="progress">
					  <div class="progress-bar progress-bar-warning progress-bar-striped active" style="width: 100%"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div id="iframeBootstrap" class="modal fade">
		<div id="modal-dialog" class="modal-dialog" style="width:800px;">
			<div class="modal-content">
				<div class="modal-header">
					<a class="close" onclick="$('#iframeBootstrap').modal('hide')" href="#">×</a>
					<h4 class="modal-title" id="editModalLabel"><span class="glyphicon glyphicon-info-sign"></span> <span id="iframeTitle">提示</span></h4>
				</div>
				<div class="modal-body">
					<iframe id="iframeBootstrapURL" src="" frameborder="0" scrolling="yes" width="100%" height="100%" onload="iframeAutoHeight(this);"></iframe>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Bootstrap Extend File (End) -->
	
