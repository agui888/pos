	<%@page language="java" contentType="text/html;charset=UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@taglib prefix="e" uri="/easyui"%>

    <script>
	    function confirmDelete(value) {
			if(value == '0') {
	            alertBootstrap("当前商用正在启用中,不能删除!");
		        return false;
			} else {
				return true;
			}
	    }
	    
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
                                    {field:"storename", title:"商家名称", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="storename" initial="180"/>,
                                    	formatter:function(value, row) {
                                           	return "<a href='${URI}_view.action?menuid=${menuid}&selectid=" + row.id + "&rowno=" + row.rowno + "'>" + value + "</a>";
                                        }
                                   	},
                                    {field:"serverEntity", title:"数据源", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="datasource" initial="180"/>,
                                    	formatter:function(value, row) {
	                                  		  if (value) {
	      	                            		  var str = value.servername + " (" + row.datasource + ")";
	      	                            		  if (row.state == 0)
		                                  				return "<span style='color: #000'>" + str + "</span>";
		                                  		  else
		                                  			  	return "<span style='color: #ccc'>" + str + "</span>";
	                                  		  }
                                  	  	}
                                    }
                                   ]],
                    columns:[[
							  {field:"cityEntity", title:"所属地区", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="cityid" initial="100"/>,
							      formatter:function(value, row) {
							  	     if (value) {
							        	var str = value.cityname;
							        	if (row.state == 0)
                              				return "<span style='color: #000'>" + str + "</span>";
                              		    else
                              			  	return "<span style='color: #ccc'>" + str + "</span>";
							  	     }
							      }
							  },
                              {field:"code", title:"营业执照编号", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="code" initial="180"/>,
								  formatter:function(value, row) {
						        	if (row.state == 0)
                           				return "<span style='color: #000'>" + value + "</span>";
                           		    else
                           			  	return "<span style='color: #ccc'>" + value + "</span>";
							      }
							  },
                              {field:"linkman", title:"负责人", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="linkman" initial="100"/>,
								  formatter:function(value, row) {
						        	if (row.state == 0)
                           				return "<span style='color: #000'>" + value + "</span>";
                           		    else
                           			  	return "<span style='color: #ccc'>" + value + "</span>";
							      }
							  },
                              {field:"tel", title:"电话号码", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="tel" initial="160"/>,
								  formatter:function(value, row) {
						        	if (row.state == 0)
                           				return "<span style='color: #000'>" + value + "</span>";
                           		    else
                           			  	return "<span style='color: #ccc'>" + value + "</span>";
							      }
							  },
                              {field:"phone", title:"手机号码", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="phone" initial="120"/>,
								  formatter:function(value, row) {
						        	if (row.state == 0)
                           				return "<span style='color: #000'>" + value + "</span>";
                           		    else
                           			  	return "<span style='color: #ccc'>" + value + "</span>";
								  }
							  },
                              {field:"email", title:"电子邮件", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="email" initial="150"/>,
								  formatter:function(value, row) {
						        	if (row.state == 0)
                           				return "<span style='color: #000'>" + value + "</span>";
                           		    else
                           			  	return "<span style='color: #ccc'>" + value + "</span>";
								  }
							  },
                              {field:"address", title:"地址", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="address" initial="200"/>,
								  formatter:function(value, row) {
						        	if (row.state == 0)
                           				return "<span style='color: #000'>" + value + "</span>";
                           		    else
                           			  	return "<span style='color: #ccc'>" + value + "</span>";
								  }
							  },
                              {field:"state", title:"状态", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="state" initial="100"/>,
                            	  formatter:function(value, row) {
                                  	  if (value == 0)
                                  		  return "<span style='color: #000'>启用</span>";
                               		  else 
                                  		  return "<span style='color: #ccc'>停用</span>";  
                                  }
                              },
                              {field:"maxconnection", title:"最大连接数", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="maxconnection" initial="100"/>,
								  formatter:function(value, row) {
						        	if (row.state == 0)
                           				return "<span style='color: #000'>" + value + "</span>";
                           		    else
                           			  	return "<span style='color: #ccc'>" + value + "</span>";
								  }
							  },

                              {title:"操作", field:"option", width:100, align:"center", resizable:false,
                                    formatter:function(value, row) {
                                        <c:if test="${writePower ne true}">
                                            var str = "<div class='hidden-sm hidden-xs action-buttons'>" +
                                                           "<a class='green' href='#' onclick='modifyAction(\"${menuid}\", \"${URI}\",\"" + row.id + "\")'>" +
                                                              "<i class='ace-icon fa fa-pencil bigger-130'></i>" +
                                                           "</a>" +
                                                           "<a class='red' href='#' onclick='if (confirmDelete(\"" + row.state + "\")) { deleteAction(\"${menuid}\", \"${URI}\", \"" + row.id + "\", grid); }'>" +
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
                                <td width="70" align="right">所属地区</td>
                                <td class="input-group-xs">
                                    <input class="easyui-combotree form-control" onkeydown="if(event.keyCode==13){ajaxSearch();}"
							               id="cityid" 
							        	   name="storeEntity.cityid" 
							        	   style="width:440px; height: 26px; line-height: 26px;"
							        	   data-options="url:'${path}/guime/base/city_combobox.action?menuid=5002', valueField:'id'"/>  <!-- 多选参数 multiple -->
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
                                <td align="right">商家名称</td>
                                <td class="input-group-xs">
                                    <input name="storeEntity.storename" class="form-control" size="50" type="text" onkeydown="if(event.keyCode==13){ajaxSearch();}"/>
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

