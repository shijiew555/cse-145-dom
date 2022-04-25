<%@ page language="java" import="java.util.*","java.text.SimpleDateFormat",
"java.util.Date"
  pageEncoding="UTF-8"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+
    ":"+request.getServerPort()+path+"/";
  String IP = request.getRemoteAddr();
  SimpleDateFormat formatter = new SimpleDateFormat("EEEE, MMM dd, yyyy HH:mm:ss a");  
  Date date = new Date(); 
  
%>
<!DOCTYPE HTML>
<html>
  <head>
  </head>
  <body>
   

    <p>{\"message\":\"Hello World\",\"date\":\"${dataFormat.format(data)}\",\"currentIP\":\"${ip}\"}</p>

  </body>
</html>
