// Bootstrap Alert对话框
function alertBootstrap(msg) {
	$("#alertBootstrapMessage")[0].innerHTML = msg;
	$("#alertBootstrap").modal("show");
}

// Bootstrap Confirm对话框
function confirmBootstrap(msg, event) {
	$("#confirmBootstrapMessage")[0].innerHTML = msg;
	$("#confirmBootstrapButton").attr("onclick", "$('#confirmBootstrap').modal('hide'); " + event);
	$("#confirmBootstrap").modal("show");
}

// Bootstrap 显示进度条 (组合)
function showProgressBootstrap(msg) {
	$("#progressBootstrapMessage")[0].innerHTML = msg;
	$("#progressBootstrap").modal("show");
}

// Bootstrap 关闭进度条 (组合)
function closeProgressBootstrap() {
	$("#progressBootstrap").modal("hide");
}

//打开 Bootstrap iFrame对话框
function openIframeBootstrap(title, url, width) {
	var widthVal = Number(window.document.documentElement.clientWidth) - 200;
	if (width)
		widthVal = width;
	
	$("#modal-dialog").css("width", widthVal);
	$("#iframeBootstrapURL").attr("src", url);
	$("#iframeTitle")[0].innerHTML = title;
	$("#iframeBootstrap").modal("show");
}

// 关闭 Bootstrap iFrame对话框
function closeIframeBootstrap() {
	$("#iframeBootstrap").modal("hide");
}

// iframe 高度自适应
function iframeAutoHeight(obj) {
    var tempHeight = $(obj).contents().find("body").height();
    $(obj).height(tempHeight);
}