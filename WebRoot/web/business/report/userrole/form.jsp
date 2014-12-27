	<%@page language="java" contentType="text/html;charset=UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@taglib prefix="e" uri="/easyui" %> 

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
                pagination: false,
                border: true,
                frozenColumns:[[
 							   {title:"ID",field:"id",width:"100", hidden:true}
 						      ]],
 				columns:[[
 					{field:"createusername",title:"创建用户",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="menu" initial="80"/>,align:"center"},
 					{field:"usertype",title:"用户类型",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="menu" initial="80"/>,align:"center",
 						formatter: function(value,row,index){
                           	if (value == '1')
                           		return "管理用户";
                           	else
                           		return "应用用户";
 					    }
 					},
 					{field:"userid",title:"用户帐号",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="userid" initial="110"/>},
 					{field:"username",title:"用户名称",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="username" initial="90"/>},
 					{field:"rolenames",title:"用户角色",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="rolenames" initial="220"/>},
 					{field:"deptname",title:"部门名称",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="deptname" initial="90"/>},
 					{field:"positionname",title:"称职",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="positionname" initial="90"/>},
 					{field:"mobilephone",title:"手机号码",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="mobilephone" initial="90"/>},
 					{field:"islock",title:"用户状态",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="islock" initial="80"/>,align:"center",
 					      formatter: function(value,row,index) {
                            	if (value == '1')
                            		return "锁定";
                            	else
                            		return "未锁定";
 						  }
 					}
 				]],
				onResizeColumn: function(field, width) {
                    $.ajax({
                        type: "post",
                        url: "${path}/system/grid_width.action?formtag=${menuid}&gridtag=g1&userid=${LOGINSESSION.id}&columnname=" + field + "&width=" + width
                    });
                },
				onLoadSuccess:function(data) {
					if (data.rows.length>0) {
						//调用 mergeCellsByField() 合并单元格
		                mergeCellsByField("cxGrid","createusername");
		            }
		        },
		        onLoadError: function(none) {
		        	alertBootstrap(none.responseText);  // The bootstrap alert (loading EasyUI Grid Data errors).
		        }
			});
			
		});
	</script>

	<div id="gridPanel" style="margin-top: 10px;">
        <%-- Grid 对象 --%>
        <div id="cxGrid"></div>
        <%-- Grid End --%>
    </div>
