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
    <title>Hello C CGI World</title>
  </head>
  <body>
    <h1 align=center>Hello HTML World!</h1><hr/>
    <p>Hello World</p>
    <p>This page was generated with the C programming langauge</p>
    <p>This program was run at: ${dataFormat.format(data)}</p>
    <p>Your current IP Address is: ${IP}</p>
  </body>
</html>
    
    
