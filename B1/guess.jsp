<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<HTML>
<BODY>
	<%
		String resString = (String) session.getAttribute("resString");
		Integer guessCount = (Integer) session.getAttribute("guessCount");
		Integer guessNumber = (Integer) session.getAttribute("guessNumber");
	%>
	<p align="center"><%=resString%></p>
	<BR>
	<div align="center"><br>这是第<%=guessCount%>猜</div>
	<div align="center"><BR>你给出的数是<%=guessNumber%></div>
	<div align="center"><Form action="GuessServlet" method=post>
		<BR>再输入你的猜测 <Input type=text name="guessNumber"> <Input
			type=submit value="送出">
	</FORM>
	<BR>
	<FORM action="SartServlet" method="post" name="f">
		<Input type="submit" value="重来">
	</FORM>
	</div>
</BODy>
</HTML>