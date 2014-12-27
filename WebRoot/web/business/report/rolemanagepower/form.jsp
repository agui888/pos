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
							     {title:"基本信息", colspan:4}
							  ],[
							     {title:"ID",field:"id",width:"100", hidden:true},
							     {field:"rrolename",title:"角色名称",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="rrolename" initial="100"/>,align:"center"},
							     {field:"menu",title:"模块名称",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="menu" initial="200"/>}
						      ]],
				columns:[[
				    {title:"模块访问权限", colspan:2},   
				    {title:"模块可写权限", colspan:2},
				    {title:"模块规则权限", colspan:5}
				],[				
					{field:"mpower",title:"模块访问权限",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="mpower" initial="90"/>,align:"center",
						formatter: function(value,row,index){
                          	if (value == '1')
                            	return "<img src='${path}/global/images/base/drop-yes.gif' style='vertical-align: text-top; border-style: none; margin-right: 0px; margin-top: -1px;'>";
                            else
                            	return "<img src='${path}/global/images/base/drop-no.gif' style='vertical-align: text-top; border-style: none; margin-right: 0px; margin-top: -1px;'>";
					   }
					},
					{field:"pispower",title:"实际分配",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="pispower" initial="90"/>,align:"center",
						formatter: function(value,row,index){
                          	if (value == '1')
                            	return "<img src='${path}/global/images/base/drop-yes.gif' style='vertical-align: text-top; border-style: none; margin-right: 0px; margin-top: -1px;'>";
                            else
                            	return "<img src='${path}/global/images/base/drop-no.gif' style='vertical-align: text-top; border-style: none; margin-right: 0px; margin-top: -1px;'>";
					   }
					},
					{field:"mwrite",title:"模块是否可写",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="mwrite" initial="90"/>,align:"center",
						formatter: function(value,row,index){
                          	if (value == '1')
                            	return "<img src='${path}/global/images/base/drop-yes.gif' style='vertical-align: text-top; border-style: none; margin-right: 0px; margin-top: -1px;'>";
                            else
                            	return "<img src='${path}/global/images/base/drop-no.gif' style='vertical-align: text-top; border-style: none; margin-right: 0px; margin-top: -1px;'>";
					   }
					},
					{field:"piswrite",title:"实际分配",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="piswrite" initial="90"/>,align:"center",
						formatter: function(value,row,index){
                          	if (value == '1')
                            	return "<img src='${path}/global/images/base/drop-yes.gif' style='vertical-align: text-top; border-style: none; margin-right: 0px; margin-top: -1px;'>";
                            else
                            	return "<img src='${path}/global/images/base/drop-no.gif' style='vertical-align: text-top; border-style: none; margin-right: 0px; margin-top: -1px;'>";
					   }
					},
					{field:"rchecked",title:"规则选择",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="rchecked" initial="70"/>,align:"center",
						formatter: function(value,row,index){
                          	if (value == '1')
                            	return "<img src='${path}/global/images/base/drop-yes.gif' style='vertical-align: text-top; border-style: none; margin-right: 0px; margin-top: -1px;'>";
                            else
                            	return "";
					    }
					 },
					{field:"rrulename",title:"规则名称",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="rrulename" initial="110"/>},
					{field:"rrulesql",title:"规则SQL",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="rrulesql" initial="220"/>},
					{field:"rnum",title:"规则优先级",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="rnum" initial="90"/>,align:"center"},
					{field:"rremark",title:"规则备注",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="rremark" initial="90"/>}
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
		                mergeCellsByField("cxGrid","rrolename,menu");
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
