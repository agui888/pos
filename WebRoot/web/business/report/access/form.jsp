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
								{field:"id",title:"时间",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="sdname" initial="150"/>, align:"center"},
 						      ]],
 				columns:[[
 					{field:"sdname",title:"日期",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="sdname" initial="150"/>, align:"center"},
 					{field:"num",title:"访问次数",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="num" initial="200"/>, align:"center"},
 					{field:"userip",title:"IP数量",width:<e:gridwidth list="${easyGrid}" gridtag="g1" key="userip" initial="200"/>, align:"center"}
 				]],
				onResizeColumn: function(field, width) {
                    $.ajax({
                        type: "post",
                        url: "${path}/system/grid_width.action?formtag=${menuid}&gridtag=g1&userid=${LOGINSESSION.id}&columnname=" + field + "&width=" + width
                    });
                },
                onLoadSuccess: function(data) {
	                var xAxis = new Array();
	                var yNum = new Array();
	                var yUserIP = new Array();
	                
	            	for (var i = 0; i < data.rows.length; i ++) {
		            	var obj = data.rows[i];
		            	xAxis[i] = obj.id;
		            	yNum[i] = obj.num;
		            	yUserIP[i] = obj.userip;
		            }
		            
					var yJson = eval("[{name: '访问次数', data: [" + yNum.toString() + "]}, {name: 'IP数量', data: [" + yUserIP.toString() + "]}]");
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
	                text: "系统访问统计",
	                x: -20 //center
	            },
	            subtitle: {
	                text: "7天内访问统计报表",
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
    
    