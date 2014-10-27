<%@page contentType="text/html;charset=utf-8" %> 
<html>
<head> 
 <title>My JSP 'larger.jsp' starting page</title> 
</head>
 <body> 
 <%  int max=((Integer)session.getAttribute("maxNumber")).intValue(); 
 int min=((Integer)session.getAttribute("minNumber")).intValue();%>      This is larger page. <br>  
<P>所猜的数比实际的数大，请再猜：</P> 
从<%=min%>到<%=max %>  
<FORM action="result.jsp"method="get"name=form> 
<INPUT type="text"name="guess"> 
 <INPUT type="submit"value="送出"name="submit"> 
</FORM> 
</body> 
</html>