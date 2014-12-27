		<%@page language="java" contentType="text/html;charset=UTF-8"%>
		<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
			
		<!-- Javascript Begin -->
		<script>
			if('ontouchstart' in document.documentElement) document.write("<script src='${path}/components/ace-1.3.1/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		
		<script src="${path}/components/ace-1.3.1/assets/js/bootstrap.min.js"></script>

		<script src="${path}/components/ace-1.3.1/assets/js/jquery-ui.custom.min.js"></script>
		<script src="${path}/components/ace-1.3.1/assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="${path}/components/ace-1.3.1/assets/js/jquery.easypiechart.min.js"></script>
		<script src="${path}/components/ace-1.3.1/assets/js/jquery.sparkline.min.js"></script>
		<script src="${path}/components/ace-1.3.1/assets/js/fuelux/fuelux.spinner.min.js"></script>
		
		<script src="${path}/components/ace-1.3.1/assets/js/bootbox.min.js"></script>
		<script src="${path}/components/ace-1.3.1/assets/js/jquery.gritter.min.js"></script>
		<script src="${path}/components/ace-1.3.1/assets/js/spin.min.js"></script>
		
		<script src="${path}/components/ace-1.3.1/assets/js/flot/jquery.flot.min.js"></script>
		<script src="${path}/components/ace-1.3.1/assets/js/flot/jquery.flot.pie.min.js"></script>
		<script src="${path}/components/ace-1.3.1/assets/js/flot/jquery.flot.resize.min.js"></script>

		<script src="${path}/components/ace-1.3.1/assets/js/ace-elements.min.js"></script>
		<script src="${path}/components/ace-1.3.1/assets/js/ace.min.js"></script>

		<script>
			jQuery(function($) {
				$('[data-rel=tooltip]').tooltip();
			});
		</script>
		<!-- Javascript End -->

		<c:import url="/global/import/bootstrap-extend.jsp"></c:import>