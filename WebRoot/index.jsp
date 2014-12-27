<%@page language="java" contentType="text/html;charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Load......</title>
    <script language="JavaScript"> 		
  		    var closeWin = function(){
  		       var v = parseFloat(navigator.appVersion.toLowerCase().split("msie")[1]);
  		       v = isNaN(v) ? -1 : v;
  		       if(v > 0) {
		 		  if(v < 7)
	 			     window.opener = self;
				  else 
				     window.open('', '_parent', '');
  		       }
  		       window.close();
			};

			function enterSystem(w) { 
			   if (w == 'open') {
				   var win=window.open("/erp/system/login_enter.action", "登录", "top=0,left=0,resize=yes,location=no,status=yes,toolbar=no,menubar=no, location=no,scrollbars=yes,resizable=yes");
				   win.resizeTo(screen.width,screen.height-29);
				   closeWin();
			   } else if (w == 'local') {
			       window.location = "/erp/system/login_enter.action";
			   }
			}
    </script>    
  </head>
  
  <body onload="enterSystem('local')">
    
  </body>
</html>


