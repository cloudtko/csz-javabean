<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<html>
<jsp:useBean id="number" class="classzz.NumberGuessBean" scope="session" />
<jsp:setProperty name="number" property="*" />
<%
if(number.getNumGuesses()==0)
{
%>
<B>快来猜我心 1-100当中的一个数字噢</B>
<br>

<br>

<form method=post>
<input type=text name="guess">
<input type=submit value="猜！">
</form>
<%
}
else if(number.getSuccess())
{ 
%>
好腻害，你只猜了 <%=number.getNumGuesses()%>次，打败了全宇宙90%的生物
要不要来 <a href=index.jsp>超越自己呀</a>? 
<%
number.reset();
}
else
{
%>
不行呀，再猜 <%=number.getHint()%>一点吧。你都猜了<%=number.getNumGuesses()%>次了，羞羞脸哦！
<br>猜猜我心里想的是几噢！
<br>

<form method=post><input type=text name="guess"> 
<input type=submit value=submit>
</form>
<%
}
%>
</html>