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
    <title>Hello JSP CGI World</title>
  </head>
  <body>
    <h1 align=center>Hello HTML World!</h1><hr/>
    <p>Hello World</p>
    <p>This page was generated with the JSP programming langauge</p>
    <p>This program was run at: <%= new java.util.Date() %></p>
    <p>Your current IP Address is: <%= request.getRemoteAddr %></p>
  </body>
</html>
    
    
