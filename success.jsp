<%@page contentType="text/html;charset=UTF-8" %> 
<html> 
<head>  
<title>My JSP 'success.jsp' starting page</title> 
</head> 
<body>     
 This is success page. <br> 
<%  
int count=((Integer)session.getAttribute("count")).intValue(); 
int num=((Integer)session.getAttribute("save")).intValue(); 
long startTime=session.getCreationTime(); 
long endTime=session.getLastAccessedTime();      %>  
<P>恭喜您，猜对了！</P>  
<P>您共猜了<%=count%>次</P> 
<P>用时<%=(endTime-startTime)/1000%>秒</P> 
<P>这个数字就是<%=num%></P> 
<P>您必须关掉浏览器才能获得新的数</P>
</body> 
</html>