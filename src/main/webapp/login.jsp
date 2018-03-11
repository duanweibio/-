<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>验证码</title>
<script type="text/javascript">
	function reloadVerifyCode() {
		var time = new Date().getTime();
		document.getElementById("imageCode");
		document.getElementById("imageCode").src="<%=request.getContextPath()%>/ImageServlet?d="+time;
		//添加time传递参数是为了区分请求链接，重新获取验证码
	}
</script>
</head>
<%
  String path = request.getContextPath();
%>
<body>
 <form action="<%=path %>/LoginServlet" method="get">
    验证码:<input type="text" name="checkCode" id="checkCode">
    <img alt="验证码" src="<%=path%>/ImageServlet" id="imageCode"/>
    <a href="javascript:reloadVerifyCode();">看不清楚，重新获取</a><br/>
    <input type="submit" name="submit" value="确定">&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="reset" name="submit" value="重置">
    
 </form>
</body>
</html>