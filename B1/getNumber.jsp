<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<HTML>
<BODY>
	<%
		String resString = (String) session.getAttribute("resString");
	%>
	<div align="center">系统给你分配了1-100个数字
	
	<Form action="GuessServlet" method=post>
		<BR><center>你猜的数字是： <Input type=text name="guessNumber"> <Input
			type=submit value="送出"></center>
	</FORM>
	<div>
</BODy>
</html>