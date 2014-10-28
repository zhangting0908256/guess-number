<%@page contentType="text/html;charset=utf-8" %> 
<html>
<head>  
<title>My JSP 'result.jsp' starting page</title> 
</head> 
<body>  
<P>This is the result page(hidden). <br> 
<% 
String str=request.getParameter("guess");//从文本框中获取字符串 
int guessNumber=Integer.parseInt(str);//将字符串转换成整数  
int max=((Integer)session.getAttribute("maxNumber")).intValue(); 
int min=((Integer)session.getAttribute("minNumber")).intValue();        
int realnumber=((Integer)session.getAttribute("save")).intValue(); 
if(guessNumber==realnumber)     
{  
int n=((Integer)session.getAttribute("count")).intValue();       
n=n+1;     
 session.setAttribute("count",new Integer(n));
response.sendRedirect("success.jsp");    
 }  
else if(guessNumber>realnumber)      
{  
int n=((Integer)session.getAttribute("count")).intValue();      
 n=n+1;  
max=guessNumber;  
session.setAttribute("count",new Integer(n));  session.setAttribute("maxNumber",new Integer(max)); response.sendRedirect("larger.jsp");       
}  
else if(guessNumber<realnumber)       
{  
int n=((Integer)session.getAttribute("count")).intValue();        
n=n+1; 
min=guessNumber;  
session.setAttribute("count",new Integer(n));  session.setAttribute("minNumber",new Integer(min)); response.sendRedirect("smaller.jsp");       
}     
%> 
</body>
 </html> 