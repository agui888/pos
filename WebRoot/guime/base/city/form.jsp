	<%@page language="java" contentType="text/html;charset=UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@taglib prefix="e" uri="/easyui"%>

	<script src="${path}/global/js/template-treegrid.js"></script>

    <script>
        var validForm = null;
        var grid = null;

        $(document).ready(function() {
            validForm = getAjaxValidFormTree();
        });

        window.onresize = function () {
            $("#cxGrid").datagrid("resize");
        }

        $(function() {
              grid = $("#cxGrid").treegrid({
                    url: "${URI}_list.action?menuid=${menuid}",
                    width: document.getElementById("gridPanel").width,
                    height: Number(document.documentElement.clientHeight) - 200,
                    animate: true,
                    rownumbers: true,
                    collapsible: true,
                    singleSelect: false,
                    border: true,
                    idField: "id",
    				treeField: "cityname",
                    columns:[[
							  {title:"ID", field:"id", width:100, hidden:true},
							  {field:"ck", checkbox:true},
                              {field:"cityname", title:"地区名称", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="cityname" initial="350"/>},
                              {field:"colid", title:"序列", sortable:true, width: <e:gridwidth list="${easyGrid}" gridtag="grid1" key="colid" initial="100"/>},
                              {title:"操作", field:"option", width:80, align:"center", resizable:false,
                            	  formatter:function(value, row) {
                                      <c:if test="${writePower ne true}">
                                          var str = "<div class='hidden-sm hidden-xs action-buttons'>" +
                                                         "<a class='green' href='#' onclick='ajaxModify(\"${menuid}\", \"${URI}\", \"" + row.id + "\", validForm , grid, $(\"#cityname\"), false)'>" +
                                                            "<i class='ace-icon fa fa-pencil bigger-130'></i>" +
                                                         "</a>" +
                                                         "<a class='red' href='#' onclick='ajaxDelete(\"${menuid}\", \"${URI}\", \"" + row.id + "\", grid)'>" +
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

              // 普通查询 Ajax
              $("#searchForm").form({
                  url: "${URI}_search.action?menuid=${menuid}",
                  onSubmit: function(){
  					 var root = grid.treegrid("getRoots");
  	        	     for (var i = 0; i < root.length; i++) 
  	        	    	grid.treegrid("remove", root[i].id); 
  		             return true;
  		          },
  		          
                  success: function(data) {
                     try {
                        var griddata = eval("(" + data + ")");
                        if(griddata.rows!=null)
                            grid.treegrid("loadData",griddata);
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
        	$("#pid").combotree("setValues", row.pid);
        	var data = {
                  	"cityEntity.id": row.id,
                  	"cityEntity.pid": row.pid,
                  	"cityEntity.cityname": row.cityname,
                  	"cityEntity.colid": row.colid
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
                                <td width="70" align="right">地区名称</td>
                                <td class="input-group-xs">
                                    <input name="cityEntity.cityname" class="form-control" size="50" type="text" onkeydown="if(event.keyCode==13){ajaxSearch();}"/>
                                </td>
                                <td width="180" align="center" rowspan="1">
                                    <button type="button" class="btn btn-sm btn-yellow" data-rel="tooltip" data-placement="bottom" title="根据输入条件进行查询" onclick="ajaxSearch()" >
                                        <span class="glyphicon glyphicon-search"></span> 查 询 
                                    </button>
                                    <button type="button" class="btn btn-sm btn-primary" data-rel="tooltip" data-placement="bottom" title="新建" onclick="ajaxAppend('${menuid}', '${URI}', validForm, null);">
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

    <%-- Edit Page Begin --%>
    <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <a class="close" onclick="$('#editModal').modal('hide')" href="#">×</a>
                    <div style="width:30px; text-align:center; valign:middle; float:left;">
                        <img src="${path}/global/images/base/node32.png"/>
                    </div>
                    <h4 class="modal-title" id="editModalLabel">系统角色</h4>
                </div>
                <div class="modal-body">
                    <form id="saveForm" method="post" action="${URI}_save.action?ajax=true&menuid=${menuid}" class="saveCalss form-horizontal" role="form">
                        <input type="hidden" name="cityEntity.id" />
                        <!-- 添加自己需要的 hidden 字段 -->

                        <table width="100%" class="table-xs" style="table-layout:fixed;">
                            <tr>
                                <td width="15%" height="30" align="right">上级地区</td>
                                <td width="53%" class="input-group-xs">
                                    <input class="easyui-combotree form-control" 
							               id="pid" 
							        	   name="cityEntity.pid" 
							        	   value="${cityEntity.pid}" 
							        	   style="width:300px;"
							        	   data-options="url:'${URI}_combobox.action?menuid=${menuid}', valueField:'id'"/>  <!-- 多选参数 multiple -->
                                </td>
                                <td>
                                    <span class="Validform_checktip">请选择上级地区</span>
                                </td>
                            </tr>
                            <tr>
                                <td height="30" align="right"><span class="RText">* </span>地区名称</td>
                                <td class="input-group-xs">
                                    <input class="form-control" type="text" id="cityname" name="cityEntity.cityname" style="width: 300px;" maxlength="50" sucmsg="当前地区名称验证通过!" nullmsg="请输入地区名称!" datatype="*1-50" errormsg="地区名称至少1个字符,最多50个字符!" ajaxurl=""  />
                                </td>
                                <td>
                                    <span class="Validform_checktip">地区名称为1~50个字符</span>
                                </td>
                            </tr>
                            <tr>
                                <td height="30" align="right"><span class="RText">* </span>序列</td>
                                <td class="input-group-xs">
                                    <input class="form-control" type="text" id="colid" name="cityEntity.colid" style="width: 300px;" maxlength="8" sucmsg="当前序列验证通过!" nullmsg="请输入序列!" datatype="*1-8" errormsg="序列至少1个字符,最多8个字符!"  />
                                </td>
                                <td>
                                    <span class="Validform_checktip">序列为1~8个字符</span>
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
            </div>
        </div>
    </div>
    <%-- Edit Page End --%>
