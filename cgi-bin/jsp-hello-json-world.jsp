<%@ page language="java" import="java.util.*","java.text.SimpleDateFormat",
"java.util.Date"
  pageEncoding="UTF-8"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+
    ":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
  <head>
  </head>
  <body>
   

    <p>{\"message\":\"Hello World\",\"date\":\"<%= new java.util.Date() %>\",\"currentIP\":\"<%= request.getRemoteAddr() %>\"}</p>

  </body>
</html>
