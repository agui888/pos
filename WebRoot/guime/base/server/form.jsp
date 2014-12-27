	<%@page language="java" contentType="text/html;charset=UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@taglib prefix="e" uri="/easyui"%>

    <script>
	    function confirmDelete(value) {
    		if(value == '1') {
                alertBootstrap("当前服务器正在使用中,不能删除!");
    	        return false;
    		} else {
    			return true;
    		}
	    }
	    
        var validForm = null;
        var grid = null;

        $(document).ready(function() {
            validForm = getAjaxValidForm();
        });

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
                                    {field:"servername", title:"服务器名", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="servername" initial="150"/>,
                                          formatter:function(value, row) {
                                              return "<a href='###' onclick='ajaxModify(\"${menuid}\", \"${URI}\", \"" + row.id + "\", validForm , grid, $(\"#datasource\"), true)'>" + value + "</a>";
                                          }
                                    },
                                    {field:"datasource", title:"DataSource", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="datasource" initial="150"/>,
                                    	formatter:function(value, row) {
                                  		  if (row.use == 0) {
                                  				return "<span style='color: green'>" + value + "</span>";
                                  		  } else {
                                  			  	return "<span style='color: red'>" + value + "</span>";
                                  		  }
                                        }
                                    }
                                   ]],
                    columns:[[
							   {field:"ip", title:"IP地址", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="ip" initial="150"/>,
									formatter:function(value, row) {
										  if (row.use == 0) {
												return "<span style='color: green'>" + value + "</span>";
										  } else {
											  	return "<span style='color: red'>" + value + "</span>";
										  }
								    }
							  },
                              {field:"port", title:"端口", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="port" initial="100"/>,
                            	  formatter:function(value, row) {
                            		  if (row.use == 0) {
                            				return "<span style='color: green'>" + value + "</span>";
                            		  } else {
                            			  	return "<span style='color: red'>" + value + "</span>";
                            		  }
                                  }
                              },
                              {field:"sid", title:"实例", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="sid" initial="130"/>,
                            	  formatter:function(value, row) {
                            		  if (row.use == 0) {
                            				return "<span style='color: green'>" + value + "</span>";
                            		  } else {
                            			  	return "<span style='color: red'>" + value + "</span>";
                            		  }
                                  }
                              },
                              {field:"oracleuser", title:"用户", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="oracleuser" initial="150"/>,
                            	  formatter:function(value, row) {
                            		  if (row.use == 0) {
                            				return "<span style='color: green'>" + value + "</span>";
                            		  } else {
                            			  	return "<span style='color: red'>" + value + "</span>";
                            		  }
                                  }
                              },
                              {field:"use", title:"占用状态",align:"center",sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="oracleuser" initial="100"/>,
                            	  formatter:function(value, row) {
                            		  if (value == 0) {
                            				return "<span style='color: green'>" + "空闲" + "</span>";
                            		  } else {
                            			  	return "<span style='color: red'>" + "被占用" + "</span>";
                            		  }
                                  }
                              },

                              {title:"操作", field:"option", width:100, align:"center", resizable:false,
                                    formatter:function(value, row) {
                                        <c:if test="${writePower ne true}">
                                            var str = "<div class='hidden-sm hidden-xs action-buttons'>" +
                                                           "<a class='green' href='#' onclick='ajaxModify(\"${menuid}\", \"${URI}\", \"" + row.id + "\", validForm , grid, $(\"#datasource\"), false)'>" +
                                                              "<i class='ace-icon fa fa-pencil bigger-130'></i>" +
                                                           "</a>" +
                                                           "<a class='red' href='#' onclick='if (confirmDelete(\"" + row.use + "\")) { ajaxDelete(\"${menuid}\", \"${URI}\", \"" + row.id + "\", grid); }'>" +
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

        function ajaxBindForm(row) {
        	var data = {
               	"serverEntity.id": row.id,
               	"serverEntity.servername": row.servername,
               	"serverEntity.ip": row.ip,
               	"serverEntity.port": row.port,
               	"serverEntity.sid": row.sid,
               	"serverEntity.oracleuser": row.oracleuser,
               	"serverEntity.oraclepassword": row.oraclepassword
             };
           	return data;
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
                                <td width="70" align="right">服务器名</td>
                                <td class="input-group-xs">
                                    <input name="serverEntity.servername" class="form-control" size="50" type="text" onkeydown="if(event.keyCode==13){ajaxSearch();}"/>
                                </td>
                                <td width="180" align="center" rowspan="1">
                                    <button type="button" class="btn btn-sm btn-yellow" data-rel="tooltip" data-placement="bottom" title="根据输入条件进行查询" onclick="ajaxSearch()" >
                                        <span class="glyphicon glyphicon-search"></span> 查 询 
                                    </button>
                                    <button type="button" class="btn btn-sm btn-primary" data-rel="tooltip" data-placement="bottom" title="新建" onclick="ajaxAppend('${menuid}', '${URI}', validForm, $('#datasource'));">
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


    <%-- Edit Page Begin --%>
    <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
        <div class="modal-dialog">
           <div class="modal-content">
               <div class="modal-header">
                   <a class="close" onclick="$('#editModal').modal('hide')" href="#">×</a>
                   <div style="width:30px; text-align:center; valign:middle; float:left;">
                       <img src="${path}/global/images/base/node32.png"/>
                   </div>
                   <h4 class="modal-title" id="editModalLabel">数据源名</h4>
               </div>
               <div class="modal-body">
                   <form id="saveForm" method="post" action="${URI}_save.action?ajax=true&menuid=${menuid}" class="saveCalss form-horizontal" role="form">
                       <input type="hidden" name="serverEntity.id" />
                       
                       <table width="100%" class="table-xs" style="table-layout:fixed;">
                       <tr>
                           <td width="18%" height="30" align="right"><span class="RText">* </span>服务器名</td>
                           <td width="50%" class="input-group-xs">
                               <input class="form-control" type="text" id="servername" name="serverEntity.servername" style="width: 270px;" maxlength="255" sucmsg="当前服务器名验证通过!" nullmsg="请输入服务器名!" datatype="*1-255" errormsg="服务器名至少1个字符,最多255个字符!" />
                           </td>
                           <td>
                               <span class="Validform_checktip">服务器名为1~255个字符</span>
                           </td>
                       </tr>
                       <tr>
                           <td height="30" align="right"><span class="RText">* </span>DataSource</td>
                           <td class="input-group-xs">
                               <input class="form-control" type="text" id="datasource" name="serverEntity.datasource" style="width: 270px;" maxlength="50" sucmsg="当前DataSource验证通过!" nullmsg="请输入DataSource!" datatype="*1-255" errormsg="DataSource地址至少1个字符,最多255个字符!" ajaxurl="" />
                           </td>
                           <td>
                               <span class="Validform_checktip">DataSource为1~255个字符</span>
                           </td>
                       </tr>
                       <tr>
                           <td height="30" align="right"><span class="RText">* </span>IP地址</td>
                           <td class="input-group-xs">
                               <input class="form-control" type="text" id="ip" name="serverEntity.ip" style="width: 270px;" maxlength="50" sucmsg="当前IP地址验证通过!" nullmsg="请输入IP地址!" datatype="*1-50" errormsg="IP地址至少1个字符,最多50个字符!"  />
                           </td>
                           <td>
                               <span class="Validform_checktip">IP地址为1~50个字符</span>
                           </td>
                       </tr>
                       <tr>
                           <td height="30" align="right"><span class="RText">* </span>端口</td>
                           <td class="input-group-xs">
                               <input class="form-control" type="text" id="port" name="serverEntity.port" style="width: 270px;" maxlength="8" sucmsg="当前端口验证通过!" nullmsg="请输入端口!" datatype="*1-8" errormsg="端口至少1个字符,最多8个字符!"  />
                           </td>
                           <td>
                               <span class="Validform_checktip">端口为1~8个字符</span>
                           </td>
                       </tr>
                       <tr>
                           <td height="30" align="right"><span class="RText">* </span>实例</td>
                           <td class="input-group-xs">
                               <input class="form-control" type="text" id="sid" name="serverEntity.sid" style="width: 270px;" maxlength="255" sucmsg="当前实例验证通过!" nullmsg="请输入实例!" datatype="*1-255" errormsg="实例至少1个字符,最多255个字符!"  />
                           </td>
                           <td>
                               <span class="Validform_checktip">实例为1~255个字符</span>
                           </td>
                       </tr>
                       <tr>
                           <td height="30" align="right"><span class="RText">* </span>用户</td>
                           <td class="input-group-xs">
                               <input class="form-control" type="text" id="oracleuser" name="serverEntity.oracleuser" style="width: 270px;" maxlength="255" sucmsg="当前用户验证通过!" nullmsg="请输入用户!" datatype="*1-255" errormsg="用户至少1个字符,最多255个字符!"  />
                           </td>
                           <td>
                               <span class="Validform_checktip">用户为1~255个字符</span>
                           </td>
                       </tr>
                       <tr>
                           <td height="30" align="right"><span class="RText">* </span>密码</td>
                           <td class="input-group-xs">
                               <input class="form-control" type="password" id="oraclepassword" name="serverEntity.oraclepassword" style="width: 270px;" maxlength="255" sucmsg="当前密码验证通过!" nullmsg="请输入密码!" datatype="*1-255" errormsg="密码至少1个字符,最多255个字符!"  />
                           </td>
                           <td>
                               <span class="Validform_checktip">密码为1~255个字符</span>
                           </td>
                       </tr>

                       </table>
                   </form>

                   <!-- Alert Begin -->
                   <div class="alert alert-danger alert-dismissible fade in" style="margin-top: 10px;">
                       <a class="close" onclick="$('.alert').hide();" href="#">×</a>
                       <span id="alertMessage"></span>
                   </div>
                   <!-- Alert End -->
               </div>

               <div id="footerBar" class="modal-footer">
                   <button id="saveButton" type="button" class="btn btn-sm btn-primary" data-loading-text="处理中..." onclick="ajaxSave();"><span class="glyphicon glyphicon-ok"></span> 保 存</button>
                   <button type="button" class="btn btn-sm btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> 取 消</button>
               </div>

               <div id="footerCloseBar" class="modal-footer" style="display: none">
                   <button type="button" class="btn btn-sm btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> 关 闭</button>
               </div>
            </div>
        </div>
    </div>
    <%-- Edit Page End --%>
