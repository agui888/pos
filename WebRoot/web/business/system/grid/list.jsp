	<%@page language="java" contentType="text/html;charset=UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@taglib prefix="e" uri="/easyui"%>

    <script>
        var grid = null;

        window.onresize = function () {
            $("#cxGrid").datagrid("resize");
        }

        $(function() {
              grid = $("#cxGrid").datagrid({
                    url: "${URI}_list.action?menuid=${menuid}",
                    width: document.getElementById("gridPanel").width,
                    height: Number(document.documentElement.clientHeight) - 200,
                    fitColumns: false,
                    rownumbers: false,
                    singleSelect: false,
                    pagination: true,
                    border: true,
                    frozenColumns:[[
                                    {title:"ID", field:"id", width:100, hidden:true},
                                    {field:"rowno", title:"", width:35, align:"center"}
                                   ]],
                    columns:[[
                              {field:"userid", title:"用户", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="userid" initial="140"/>},
                              {field:"formtag", title:"窗口", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="formtag" initial="100"/>},
                              {field:"gridtag", title:"表格", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="gridtag" initial="100"/>},
                              {field:"columnname", title:"列名", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="columnname" initial="120"/>},
                              {field:"width", title:"宽度", align:"right", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="width" initial="100"/>}
                             ]],
                    onResizeColumn: function(field, width) {
                        $.ajax({
                            type: "post",
                            url: "${path}/system/grid_width.action?formtag=${menuid}&gridtag=grid1&userid=${LOGINSESSION.id}&columnname=" + field + "&width=" + width
                        });
                    },
                    onLoadError: function(none) {
                        alertBootstrap(none.responseText);  // The bootstrap alert (loading EasyUI Grid Data errors).
                    }
              });

              // 分页事件
              var page = grid.datagrid("getPager");
              page.pagination({
                   showPageList:false,
                   pageSize:${pageSize},
                   onSelectPage:function(pageNum, pageSize) {
                       var pageURL = "${URI}_page.action?menuid=${menuid}&pageParam.page=" + pageNum;  // + "&pageParam.sizePage=" + pageSize;
                       $.ajax({
                           type: "post",
                           url: pageURL,
                           success: function(data){
                               try {
                                   var griddata = eval("(" + data + ")");
                                   if(griddata.rows!=null)
                                       grid.datagrid("loadData",griddata);
                                } catch(e) {
                                   alertBootstrap("分页错误:" + e);  // The bootstrap alert (loading EasyUI Grid Page errors).
                                }
                           },
                           error: function(){
                                alertBootstrap("发生系统故障,请与系统管理员联系!");  // The bootstrap alert (system errors).
                           }
                       });
                   }
              });

              // 普通查询 Ajax
              $("#searchForm").form({
                  url: "${URI}_search.action?menuid=${menuid}",
                  success: function(data) {
                     try {
                        var griddata = eval("(" + data + ")");
                        if(griddata.rows!=null)
                            grid.datagrid("loadData",griddata);
                     } catch(e) {
                        closeProgressBootstrap();  // Close the Bootstrap process window
                        alertBootstrap("查询错误,错误原因:" + e);  // The bootstrap alert (search errors).
                     }

                     window.setTimeout(function() {
                        closeProgressBootstrap();  // Close the Bootstrap process window
                     }, 500);
                  }
              });

        });

    </script>
    
    <script>
	    /**
	     * Ajax 删除
	     */
	    function ajaxTruncate() {
	    	confirmBootstrap("确定清空所有资料?", "ajaxTruncateEvent()");
	    }
	
	    /**
	     * Event 删除
	     */
	    function ajaxTruncateEvent() {
        	$.ajax({
                type: "post",
                url: "${URI}_truncate.action?menuid=${menuid}",
                success: function(data){
                	alertBootstrap("清空成功!");
                	grid.datagrid("reload");
                },
                error: function(){
                	alertBootstrap("清空失败!");
               	}
            });
	    }    
    </script>

	<div id="searchPanel" class="widget-box">
        <div class="widget-header widget-header-small">
            <h4 class="widget-title">
                <i class="ace-icon fa fa-search"></i>查询条件
            </h4>
        </div>

        <div class="widget-body" style="background-color: #fff">
            <div class="widget-main">
                <div class="clearfix">
                    <%-- Search Begin --%>
                    <form id="searchForm" method="post">
                        <table class="table-xs">
                            <tr>
                                <td width="70" align="right">用户:</td>
                                <td class="input-group-xs">
                                    <input name="gridEntity.userid" class="form-control" size="50" type="text" onkeydown="if(event.keyCode==13){ajaxSearch();}"/>
                                </td>
                                <td width="180" align="center" rowspan="2">
                                    <button type="button" class="btn btn-sm btn-yellow" data-rel="tooltip" data-placement="bottom" title="根据输入条件进行查询" onclick="ajaxSearch()" >
                                        <span class="glyphicon glyphicon-search"></span> 查 询 
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">窗口:</td>
                                <td class="input-group-xs">
                                    <input name="gridEntity.formtag" class="form-control" size="50" type="text" onkeydown="if(event.keyCode==13){ajaxSearch();}"/>
                                </td>
                            </tr>

                        </table>
                    </form>
                    <%-- Search End --%>
                </div>
            </div>
        </div>
    </div>
    
    <div id="gridPanel" class="widget-box" style="margin-top: 10px;">
        <div class="widget-header">
            <h4 class="widget-title">
                <i class="ace-icon fa fa-table"></i>查询列表
            </h4>
            <span class="widget-toolbar">
                <button type="button" class="btn btn-xs btn-white btn-pink" data-rel="tooltip" data-placement="bottom" title="清空所有数据" onclick="ajaxTruncate();">
                    <span class="glyphicon glyphicon-repeat"></span> 清 空
                </button>
                <button type="button" class="btn btn-xs btn-white btn-success" data-rel="tooltip" data-placement="bottom" title="刷新数据" onclick="refreshPage('${menuid}', '${URI}')" >
                    <span class="glyphicon glyphicon-refresh"></span> 刷 新
                </button>
            </span>
        </div>

        <div class="widget-body">
            <div class="widget-main">
                <%-- Grid 对象 --%>
                <div style="margin: -14px -13px -13px -13px">
                    <div id="cxGrid"></div>
                </div>
                <%-- Grid End --%>
            </div>
        </div>
    </div>
    