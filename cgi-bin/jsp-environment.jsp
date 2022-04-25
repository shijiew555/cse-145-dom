<%@ page language="java" import="java.util.*","java.text.SimpleDateFormat",
"java.util.Date"
  pageEncoding="UTF-8"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+
    ":"+request.getServerPort()+path+"/";
 Map<String, String> env = System.getenv();
 env.forEach((k, v) -> System.out.println(k + ":" + v));
  
%>

<!DOCTYPE html>
<html>
 <html><head><title>Environment Variables</title></head><body><h1 align=center>Environment Variables</h1><hr/>
</html>
