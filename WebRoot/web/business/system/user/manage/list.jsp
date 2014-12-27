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
                                    {field:"ck", checkbox:true},
                                    {field:"userid", title:"帐号", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="userid" initial="100"/>,
                                          formatter:function(value, row) {
                                              return "<a href='${URI}_view.action?menuid=${menuid}&selectid=" + row.id + "&rowno=" + row.rowno + "'>" + value + "</a>";
                                          }
                                    },
                                    {field:"username", title:"姓名", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="username" initial="100"/>}
                                   ]],
                    columns:[[
                              {field:"sex", title:"性别", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="sex" initial="60"/>},
                              {field:"rolenames", title:"角色名称", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="rolenames" initial="120"/>},
                              {field:"email", title:"电子邮件", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="email" initial="140"/>},
                              {field:"officephone", title:"办公电话", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="officephone" initial="100"/>},
                              {field:"officeaddress", title:"办公地址", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="officeaddress" initial="150"/>},
                              {field:"homephone", title:"家庭电话", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="homephone" initial="100"/>},
                              {field:"homeaddress", title:"家庭地址", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="homeaddress" initial="150"/>},
                              {field:"mobilephone", title:"移动电话", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="mobilephone" initial="100"/>},
                              {field:"islock", title:"锁定帐号", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="islock" initial="60"/>},

                              {title:"操作", field:"option", width:100, align:"center", resizable:false,
                            	  formatter:function(value, row) {
                            		  <c:if test="${writePower ne true}">
	                                      var str = "<div class='hidden-sm hidden-xs action-buttons'>" +
	                                                     "<a class='green' href='#' onclick='modifyAction(\"${menuid}\", \"${URI}\",\"" + row.id + "\")'>" +
	                                                        "<i class='ace-icon fa fa-pencil bigger-130'></i>" +
	                                                     "</a>" +
	                                                     "<a class='red' href='#' onclick='deleteAction(\"${menuid}\", \"${URI}\", \"" + row.id + "\", grid)'>" +
	                                                        "<i class='ace-icon fa fa-trash-o bigger-130'></i>" +
	                                                     "</a>" +
	                                                     "<a class='red' href='#' onclick='setPassword(\"" + row.id + "\")'>" +
	                                                         "<i class='ace-icon fa fa-lock bigger-130'></i>" +
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
    
	<script>
		function setPassword(id) {
			openIframeBootstrap("强制修改密码", "${URI}_password.action?menuid=${menuid}&selectid=" + id, 500);
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
                                <td width="70" align="right">帐号</td>
                                <td class="input-group-xs">
                                    <input name="manageUserEntity.userid" class="form-control" size="50" type="text" onkeydown="if(event.keyCode==13){ajaxSearch();}"/>
                                </td>
                                <td width="180" align="center" rowspan="2">
                                    <button type="button" class="btn btn-sm btn-yellow" data-rel="tooltip" data-placement="bottom" title="根据输入条件进行查询" onclick="ajaxSearch()" >
                                        <span class="glyphicon glyphicon-search"></span> 查 询 
                                    </button>
                                    <button type="button" class="btn btn-sm btn-primary" data-rel="tooltip" data-placement="bottom" title="新建" onclick="appendAction('${menuid}', '${URI}');">
                                        <span class="glyphicon glyphicon-repeat"></span> 新 建
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">姓名</td>
                                <td class="input-group-xs">
                                    <input name="manageUserEntity.username" class="form-control" size="50" type="text" onkeydown="if(event.keyCode==13){ajaxSearch();}"/>
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
    