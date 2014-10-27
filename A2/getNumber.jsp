<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="wangluo2.Guess" %> 
<HTML>
<BODY>
<% int n=(int)(Math.random()*100)+1;%>
<jsp:useBean id="guess" class="wangluo2.Guess" scope="session" >
</jsp:useBean>
<jsp:setProperty  name= "guess"  property="answer" value="<%=n%>" />
<p>随机给你一个1到100之间的数，请猜测这个数是多少？
<% String str=response.encodeRedirectURL("guess.jsp");
%>
<Form action="<%=str%>" method=post >
<BR>输入你的猜测 <Input type=text name="guessNumber">
<Input type=submit value="提交">
</FORM>
</BODy>
</html>