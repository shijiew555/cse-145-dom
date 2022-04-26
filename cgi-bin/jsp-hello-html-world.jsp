<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
import="java.util.*","java.text.SimpleDateFormat",
"java.util.Date"
  pageEncoding="UTF-8"%>
<!DOCTYPE HTML html Public "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
  <meta http.equiv="Content-Type" content="text/html; charset=UTF-8" />
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
    
    
