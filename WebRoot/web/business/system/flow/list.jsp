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
                                    {field:"rowno", title:"", width:35, align:"center"},
                                    {field:"ck", checkbox:true}
                                   ]],
                    columns:[[
                              {field:"nodename", title:"节点名称", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="nodename" initial="140"/>,                              
                                    formatter:function(value, row) {
                                        return "<a href='${URI}_view.action?menuid=${menuid}&selectid=" + row.id + "&rowno=" + row.rowno + "'>" + value + "</a>";
                                    }
                              },
                              {field:"colid", title:"排序", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="colid" initial="80"/>},
                              {field:"nodeflag", title:"节点状态", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="nodeflag" initial="120"/>,
                            	  formatter:function(value, row) {
                                      if (value == "singleprocess")
                                      	return "单人处理";
                                      else if (value == "multiprocess")
                                      	return "多人处理";
                                      else if (value == "end")
                                      	return "结束";
                                      else if (value == "cancel")
                                          return "作废";
                                      else
                                      	return value;
                                  }
                              },
                              {field:"condition", title:"条件", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="condition" initial="150"/>,
                            	  formatter:function(value, row) {
                                      if (value == "0")
                                      	return "显示所有人";
                                      else if (value == "1")
                                      	return "只限部门领导";
                                      else if (value == "2")
                                      	return "指定人员";
                                      else if (value == "3")
                                        return "不显示任何人";
                                      else if (value == "4")
                                        return "当前创建人";
                                      else if (value == "5")
                                        return "当前登录用户部门所有人";
                                      else if (value == "6")
                                        return "上一步处理人";
                                      else
                                      	return value;
                                  }
                              },
                              {field:"designateuserids", title:"指定用户", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="designateuserids" initial="80"/>,
                            	  formatter:function(value, row) {
		                      		if (value) {
		                      			return "已指定";
		                      		} else {
		                      			return "";
		                      		}
                            	  }
                              },

                              {title:"操作", field:"option", width:80, align:"center", resizable:false,
                                  formatter:function(value, row) {
                                      <c:if test="${writePower ne true}">
                                          var str = "<div class='hidden-sm hidden-xs action-buttons'>" +
                                                         "<a class='green' href='#' onclick='modifyAction(\"${menuid}\", \"${URI}\",\"" + row.id + "\")'>" +
                                                            "<i class='ace-icon fa fa-pencil bigger-130'></i>" +
                                                         "</a>" +
                                                         "<a class='red' href='#' onclick='deleteAction(\"${menuid}\", \"${URI}\", \"" + row.id + "\", grid)'>" +
                                                            "<i class='ace-icon fa fa-trash-o bigger-130'></i>" +
                                                         "</a>" +
                                                    "</div>";
                                      </c:if>
                                      <c:if test="${writePower eq true}">
                                          var str = "无操作权限";
                                      </c:if>
                                      return str;
                                  }
                              }
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
                                <td width="70" align="right">节点名称</td>
                                <td class="input-group-xs">
                                    <input name="flowEntity.nodename" class="form-control" size="50" type="text" onkeydown="if(event.keyCode==13){ajaxSearch();}"/>
                                </td>
                                <td width="180" align="center" rowspan="1">
                                    <button type="button" class="btn btn-sm btn-yellow" data-rel="tooltip" data-placement="bottom" title="根据输入条件进行查询" onclick="ajaxSearch()" >
                                        <span class="glyphicon glyphicon-search"></span> 查 询 
                                    </button>
                                    <button type="button" class="btn btn-sm btn-primary" data-rel="tooltip" data-placement="bottom" title="新建" onclick="appendAction('${menuid}', '${URI}');">
                                        <span class="glyphicon glyphicon-repeat"></span> 新 建
                                    </button>
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
                <button type="button" class="btn btn-xs btn-white btn-pink" data-rel="tooltip" data-placement="bottom" title="导出数据" onclick="exportExcel('${menuid}', '${URI}')" >
                    <span class="glyphicon glyphicon-export"></span> 导 出
                </button>
                <button type="button" class="btn btn-xs btn-white btn-purple" data-rel="tooltip" data-placement="bottom" title="导入数据" onclick="importExcel('${menuid}', '${URI}')" >
                    <span class="glyphicon glyphicon-import"></span> 导 入
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
    