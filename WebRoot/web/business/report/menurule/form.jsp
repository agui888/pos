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
							   {title:"ID",field:"id",width:"100", hidden:true},
							   {field:"ico",title:"ICO",width:1,hidden:true}
						      ]],
				columns:[[
					{field:"menu",title:"模块名称",rowspan:2,width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="menu" initial="250"/>,
						formatter: function(value,row,index){
							//return "<img src='" + row.ico + "' style='vertical-align: text-top; border-style: none; margin-right: 0px; margin-top: -1px;'>" + value;
							return value;
						}
					},
				    {title:"模块权限", colspan:2},
				    {title:"规则权限", colspan:3}
				],[					
					{field:"power",title:"模块访问权限",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="power" initial="80"/>,align:"center",
						formatter: function(value,row,index){
                          	if (value == '1')
                            	return "<img src='${path}/global/images/base/drop-yes.gif' style='vertical-align: text-top; border-style: none; margin-right: 0px; margin-top: -1px;'>";
                            else
                            	return "<img src='${path}/global/images/base/drop-no.gif' style='vertical-align: text-top; border-style: none; margin-right: 0px; margin-top: -1px;'>";
					   }
					},
					{field:"write",title:"模块是否可写",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="write" initial="80"/>,align:"center",
						formatter: function(value,row,index){
							if (value == '1')
                                return "<img src='${path}/global/images/base/drop-yes.gif' style='vertical-align: text-top; border-style: none; margin-right: 0px; margin-top: -1px;'>";
                            else
                                return "<img src='${path}/global/images/base/drop-no.gif' style='vertical-align: text-top; border-style: none; margin-right: 0px; margin-top: -1px;'>";
				    	}
				    },
					{field:"rulename",title:"业务规则名称",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="rulename" initial="120"/>},
					{field:"rulesql",title:"规则SQL脚本",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="rulesql" initial="280"/>},
					{field:"num",title:"优先级",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="num" initial="60"/>,align:"center"}
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
		                mergeCellsByField("cxGrid","menu");
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
