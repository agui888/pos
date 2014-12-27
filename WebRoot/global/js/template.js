/**
 * 创建一个 validForm 验证对象
 * 用于 Bootstrap 方式
 * @returns
 */
function getAjaxValidForm() {
	debugger;
	var validForm = $(".saveCalss").Validform({
		tiptype: 2,
	    ajaxPost: true,
	    showAllError: true,
	    beforeSubmit: function(curform) {
	    	debugger;
	    	// 保存前改变按扭状态
	    	$("#saveButton").button("loading");
		},
	    callback: function(data){
	    	debugger;
	    	// 保存后恢复按扭状态
	    	$("#saveButton").button("reset");
	    	
            try {
        		if (data.status == "y") { 
        			$("#editModal").modal("hide");   // 保存成功后,关闭Bootstrap弹出窗口
        			grid.datagrid("reload");         // 重新加载 EasyUI Grid数据
        			alertBootstrap(data.info);       // 以Bootstrap弹出保存成功的消息
        		} else if (data.status == "n") {
        			// 以Bootstrap弹出保存失败的消息 (在JSP页面上发现定义相关的DIV)
        			$("#alertMessage")[0].innerHTML = data.info;
        	    	$(".alert").show();
        		} else {
        			$("#alertMessage")[0].innerHTML = "非法提交, 请与管理员联系! (原因可能您的操作权限不够)";
        	    	$(".alert").show();
        		}
        	} catch(e) {
                alertBootstrap("系统错误:" + e);     // 以Bootstrap弹出系统异常消息
        	}
	    }
	});
	return validForm;
};

/**
 * 创建一个 validForm 验证对象
 * 用于传统的Post方式
 * @param menuid
 * @param uri
 * @param tiptypeObject
 * @returns
 */
function getPostValidForm(menuid, uri, tiptypeObject) {
	debugger;
	var tip = tiptypeObject;
	if (! tiptypeObject)
		tip = 2;
	
	var validForm = $(".saveCalss").Validform({
		tiptype: tip,
	    postonce: true,
	    ajaxPost: false,
	    showAllError: true,
	    beforeSubmit: function(curform) {
	    	showProgressBootstrap("正在保存,请稍后......");
		}
	});
	return validForm;
}

/*************************** 传统 & Bootstrap公共方法 ***************************/

/**
 * 刷新模板
 * @param menuid
 * @param uri
 */
function refreshPage(menuid, uri) {
	debugger;
	var str = uri + "_enter.action?menuid=" + menuid;
	window.location.href = str;
}

/**
 * 导出  Action
 * @param menuid
 * @param uri
 */
function exportExcel(menuid, uri){
	debugger;
	var rows = $("#cxGrid").datagrid("getRows");  //得到选中的数据
	if (rows == "")
		rows = $("#cxGrid").datagrid("getRoots");
	if(rows.length == 0) {
       alertBootstrap("无数据记录可导出!");
       return;
	}
	
    var str = uri + "_exportexcel.action?menuid=" + menuid;
    window.location.href = str;
}

/**
 * 导入 Action
 * @param menuid
 * @param uri
 */
function importExcel(menuid, uri) {
	debugger;
	var url = uri + "_importexcel.action?menuid=" + menuid + "&step=1";
	openIframeBootstrap("数据导入", url);
}

/**
 * 返回动作
 * @param menuid
 * @param uri
 */
function cancel(menuid, uri) {
	debugger;
	window.location.href = uri + "_cancel.action?menuid=" + menuid;
}

/*************************** Bootstrap公共方法 ***************************/

/**
 * Ajax 新建
 * @param menuid     -  菜单ID
 * @param uri        -  URI路径
 * @param validForm   -  validForm验证对象
 * @param ajaxField   -  validForm在线验证字段对象
 */
function ajaxAppend(menuid, uri, validForm, ajaxField) {
	debugger;
	// 重置validForm验证对象
	validForm.resetForm();
	
	// 当有 validForm 在线验证表单时
	if (ajaxField)
		ajaxField.attr("ajaxurl", uri + "_validated.action?menuid=" + menuid);
	
	// 先隐藏Bootstrap弹出对话框中的警告
	$(".alert").hide();
	
	// 显示可提交按钮
	$("#footerBar").css("display","block");
	$("#footerCloseBar").css("display","none");
	
	// jQuery方式清空Form表单内容
	$("#saveForm").form("clear");
	
	// 显示Bootstrop对话框
	$("#editModal").modal("show");
}

/**
 * Ajax 修改
 * @param menuid     -  菜单ID
 * @param uri        -  URI路径
 * @param selectId   -  选择EasyUI Grid唯一ID数据值
 * @param validForm  -  validForm验证对象
 * @param grid       -  EasyUI对象
 * @param ajaxField  -  validForm在线验证字段对象
 * @param readOnly   -  介于 Modify / View 之间的切换
 */
function ajaxModify(menuid, uri, selectId, validForm, grid, ajaxField, readOnly) {
	debugger;
	// 重置validForm验证对象
	validForm.resetForm();        
	
	// 获取 EasyUI 所有数据
	var row = grid.datagrid("getSelected");   
	
	// 根据ID读取Grid的对应行数据
	if (selectId) {
		for (var i = grid.datagrid("getRows").length - 1; i >= 0; i--) {
	    	var data = grid.datagrid("getRows")[i];
			if (data.id == selectId) {
				row = data;
				break;
			}
		}
	}
	
    if (row) {
    	// 当有 validForm 在线验证表单时
    	if (ajaxField) {
    		ajaxField.attr("ajaxurl", uri + "_validated.action?menuid=" + menuid + "&idValue=" + row.id);
    	}
    	
    	/*
    	生产 formData 数据一个例子
    	var userid = "${LOGINSESSION.id}";
    	if (! row.createuserid)
    		userid = row.createuserid;
    	
    	var formData = {
           	"manageRoleEntity.id": row.id,
           	"manageRoleEntity.rolename": row.rolename,
           	"manageRoleEntity.remark": row.remark,
           	"manageRoleEntity.createuserid": userid
        };
    	 */
    	
    	// 先隐藏Bootstrap弹出对话框中的警告
    	$(".alert").hide();
    	
    	// 介于 Modify / View 之间的切换
    	if (readOnly) {
    		$("#footerBar").css("display","none");
    		$("#footerCloseBar").css("display","block");
    	} else {
    		$("#footerBar").css("display","block");
    		$("#footerCloseBar").css("display","none");
    	}
    	
    	// 将formData数据装载到Form对象中
        $("#saveForm").form("load", ajaxBindForm(row));
        
        // 显示Bottstrap对话框
        $("#editModal").modal("show");
    } else {
        alertBootstrap("请选择修改记录!");
    }
}

/**
 * Ajax Bind Form
 * @param row
 */
function ajaxBindForm(row) {
	// 子页面必须绑定的对象
}

/**
 * Ajax 删除
 * @param menuid     -  菜单ID
 * @param uri        -  URI路径
 * @param selectId   -  选择EasyUI Grid唯一ID数据值
 * @param grid       -  EasyUI对象
 */
function ajaxDelete(menuid, uri, selectId, grid) {
	debugger;
	var rowNum = 1;
	var selectids = null;

	if (! selectId) {  
		// 此判断块代码指删除多条记录
		var rows = grid.datagrid("getSelections");
		if(rows.length == 0) {
           alertBootstrap("请选择要删除的记录资料!");
	       return;
		}
		
        for(var i = 0; i < rows.length; i++) {
	        if (selectids == null)
	        	selectids = rows[i].id;
	        else   
	        	selectids = selectids + ',' + rows[i].id;
	    }
        
        rowNum = rows.length;
	} else {
		// 此判断块代码指Grid的 "操作" 中 "删除" 按扭事件, 即删除单条数据
		selectids = selectId;
	}
	
	confirmBootstrap("确定删除当前选择的 " + rowNum + " 条记录资料?", "ajaxDeleteEvent('" + menuid + "', '" + uri + "', '" + selectids + "')");
}

/**
 * Event 删除
 * @param menuid     -  菜单ID
 * @param uri        -  URI路径
 * @param selectId   -  选择EasyUI Grid唯一ID数据值
 */
function ajaxDeleteEvent(menuid, uri, selectId) {
	debugger;
    if (selectId) {
    	$.ajax({
            type: "post",
            url: uri + "_delete.action?menuid=" + menuid + "&selectid=" + selectId,
            success: function(data){
            	alertBootstrap("删除成功!");
            	grid.datagrid("reload");
            },
            error: function(XMLHttpRequest, textStatus, errorThrown) {
            	alertBootstrap("删除失败!");
           	}
        });
    }
}

/**
 * Ajax 保存
 */
function ajaxSave() {
	debugger;
	try {
		$("#saveForm").submit();
	} catch(e) {
		alert("AjaxSave Error:" + e);
	}
}

/**
 * 查询
 */
function ajaxSearch() {
	debugger;
	showProgressBootstrap("正在查询,请稍后......");
	$("#searchForm").submit();
}


/*************************** 传统公共方法 ***************************/

/**
 * 新建模板
 * @param menuid
 * @param uri
 */
function appendAction(menuid, uri) {
	debugger;
	var str = uri + "_append.action?menuid=" + menuid;
	window.location.href = str;
}

/**
 * 传统 - 修改 Action
 * @param menuid 
 * @param uri
 */
function modifyAction(menuid, uri, selectId) {
	debugger;
    var id = null;
    var rowno = null;

    if (selectId) {
		id = selectId;
	} else {
		var rows=$("#cxGrid").datagrid("getSelections");  //得到选中的数据 
		
		if(rows.length == 0) {
	       alertBootstrap("请选择修改记录!");
	       return;
		}
		
		for(var i=0; i < rows.length; i++) {
	        if (id == null) {
	        	id = rows[i].id;
	    	    rowno = rows[i].rowno;
	    	    break;
		    }
		}
	}
	if (id) {
		window.location.href = uri + "_modify.action?menuid=" + menuid + "&selectid=" + id + "&rowno=" + rowno;
	}
}

/**
 * 传统 删除
 * @param menuid     -  菜单ID
 * @param uri        -  URI路径
 * @param selectId   -  选择EasyUI Grid唯一ID数据值
 */
function deleteAction(menuid, uri, selectId) {
	debugger;
	var rowNum = 1;
	var selectids = null;

	if (! selectId) {  
		// 此判断块代码指删除多条记录
		var rows =  $("#cxGrid").datagrid("getSelections");
		if(rows.length == 0) {
           alertBootstrap("请选择要删除的记录资料!");
	       return;
		}
		
        for(var i = 0; i < rows.length; i++) {
	        if (selectids == null)
	        	selectids = rows[i].id;
	        else   
	        	selectids = selectids + ',' + rows[i].id;
	    }
        
        rowNum = rows.length;
	} else {
		// 此判断块代码指Grid的 "操作" 中 "删除" 按扭事件, 即删除单条数据
		selectids = selectId;
	}

	confirmBootstrap("确定删除当前选择的 " + rowNum + " 条记录资料?", "deleteActionEvent('" + menuid + "', '" + uri + "', '" + selectids + "')");
}

/**
 * Event 删除
 * @param menuid     -  菜单ID
 * @param uri        -  URI路径 
 * @param selectId   -  选择EasyUI Grid唯一ID数据值
 */
function deleteActionEvent(menuid, uri, selectId) {
	debugger;
    if (selectId) {
    	$.ajax({
            type: "post",
            url: uri + "_delete.action?menuid=" + menuid + "&selectid=" + selectId,
            success: function(data){
            	alertBootstrap("删除成功!");
            	$("#cxGrid").datagrid("reload");
            },
            error: function(XMLHttpRequest, textStatus, errorThrown) {
            	alertBootstrap("删除失败!");
           	}
        });
    }
}

/**
 * 传统保存
 */
function saveAction(method) {
	debugger;
	var action = $("#saveForm").attr("action");
	if (action.indexOf("?") == -1) {
		action = action + "?gotoAction=" + method;
	} else {
		action = action + "&gotoAction=" + method;
	}
	
	try {
		$("#saveForm").attr("action", action);
		$("#saveForm").submit();
	} catch(e) {
		alert("SaveAction Error:" + e);
	}
}