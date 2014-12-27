	<%@page language="java" contentType="text/html;charset=UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@taglib prefix="e" uri="/easyui"%>
	
	<script src="${path}/components/my97/My97DatePicker/WdatePicker.js"></script>
		
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
                                    {field:"rowno", title:"", width:35, align:"center"},
                                    {field:"userip", title:"IP地址", align:"center", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="userip" initial="100"/>,
                                          formatter:function(value, row) {
                                              return "<a href='${URI}_view.action?menuid=${menuid}&selectid=" + row.id + "&rowno=" + row.rowno + "'>" + value + "</a>";
                                          }
                                    },
                                    {field:"username", title:"用户名", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="username" initial="100"/>}
                                   ]],
                    columns:[[
                              {field:"httpurl", title:"URL", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="httpurl" initial="460"/>},
                              {field:"starttime", title:"记录时间", align:"center", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="starttime" initial="140"/>},
                              {field:"endtime", title:"结束时间", align:"center", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="endtime" initial="140"/>},
                              {field:"usetime", title:"耗时", align:"center", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="usetime" initial="100"/>}
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
                                <td width="70" align="right">用户名</td>
                                <td class="input-group-xs">
                                    <input name="logsEntity.username" class="form-control" size="50" type="text" onkeydown="if(event.keyCode==13){ajaxSearch();}"/>
                                </td>
                                <td width="100" align="center" rowspan="2">
                                    <button type="button" class="btn btn-sm btn-yellow" data-rel="tooltip" data-placement="bottom" title="根据输入条件进行查询" onclick="ajaxSearch()" >
                                        <span class="glyphicon glyphicon-search"></span> 查 询 
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">记录时间</td>
                                <td>
                                	<table>
                                		<tr>
                                			<td>
                                				<input id="startDate" name="logsEntity.searchstarttime" class='Wdate' style="width: 162px; height: 26px;" onfocus="var endDate=$dp.$('endDate');WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',onpicked:function(){endDate.focus();},maxDate:'#F{$dp.$D(\'endDate\')}'})" />
                                			</td>
                                			<td>
                                				<input id="endDate" name="logsEntity.searchendtime" class='Wdate' style="width: 162px; height: 26px;" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',minDate:'#F{$dp.$D(\'startDate\')}'})"/>
                                			</td>
                                		</tr>
									</table>
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

