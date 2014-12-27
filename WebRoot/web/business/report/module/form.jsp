	<%@page language="java" contentType="text/html;charset=UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@taglib prefix="e" uri="/easyui" %> 

	<script>
	    var grid = null;
        
	    window.onresize = function () {
            $("#cxGrid").datagrid("resize");
        }
	    
		$(document).ready(function() {
			var gridDiv = Number(document.documentElement.clientHeight) - 280;
			var charDiv = Number(document.documentElement.clientHeight) - gridDiv - 50;
			$("#container").height(charDiv); 
		});
		
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
								{field:"menu",title:"块模菜单",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="sdname" initial="150"/>, align:"center"},
						      ]],
				columns:[[
					{field:"enter",title:"访问次数",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="enter" initial="200"/>, align:"center"},
					{field:"save",title:"保存次数",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="save" initial="200"/>, align:"center"},
					{field:"del",title:"删除次数",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="del" initial="200"/>, align:"center"},
					{field:"exp",title:"导出次数",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="exp" initial="200"/>, align:"center"}
				]],
				onResizeColumn: function(field, width) {
                        $.ajax({
                            type: "post",
                            url: "${path}/system/grid_width.action?formtag=${menuid}&gridtag=g1&userid=${LOGINSESSION.id}&columnname=" + field + "&width=" + width
                        });
                },
                onLoadSuccess: function(data) {
	                var xAxis = new Array();
	                var yEnter = new Array();
	                var ySave = new Array();
	                var yDel = new Array();
	                var yExp = new Array();

	                var top = 5;
                	if (data.rows.length < top)
                	   top = data.rows.length;
                	   
	            	for (var i = 0; i < top; i ++) {
		            	var obj = data.rows[i];
		            	xAxis[i] = obj.menu;
		            	yEnter[i] = obj.enter;
		            	ySave[i] = obj.save;
		            	yDel[i] = obj.del;
		            	yExp[i] = obj.exp;
		            }
		            
					var yJson = eval("[{name: '访问次数', data: [" + yEnter.toString() + "]}," +
					                 " {name: '保存次数', data: [" + ySave.toString() + "]}," +
					                 " {name: '删除次数', data: [" + yDel.toString() + "]}," +
					                 " {name: '导出次数', data: [" + yExp.toString() + "]}]");
		            builderChar(xAxis, yJson);
		        },
		        onLoadError: function(none) {
		        	alertBootstrap(none.responseText);  // The bootstrap alert (loading EasyUI Grid Data errors).
		        }
			});
		});
	</script>
	
	<script>
		function builderChar(xArray, yArray) {
			$("#container").highcharts({
	            title: {
	                text: "今日模块访问统计",
	                x: -20 //center
	            },
	            subtitle: {
	                text: "前五名模块排行统计表",
	                x: -20
	            },
	            xAxis: {
	                categories: xArray
	            },
	            yAxis: {
	                title: {
	                    text: "数量"
	                },
	                plotLines: [{
	                    value: 0,
	                    width: 1,
	                    color: "#808080"
	                }]
	            },
	            tooltip: {
	                valueSuffix: "次(个)"
	            },
	            legend: {
	                layout: "vertical",
	                align: "right",
	                verticalAlign: "middle",
	                borderWidth: 0
	            },
	            series: yArray
	        });
		};
	</script>
	
	<div id="container" style="min-width: 310px; height: 200px; margin: 0 auto"></div>

	<div id="gridPanel" style="margin-top: 10px;">
        <%-- Grid 对象 --%>
        <div id="cxGrid"></div>
        <%-- Grid End --%>
    </div>
    
    <script src="${path}/components/highcharts-3.0.5/js/highcharts.js"></script>
