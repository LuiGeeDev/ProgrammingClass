<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  request.setCharacterEncoding("UTF-8");
  String type = request.getParameter("type");
  String userid = request.getParameter("userid");
  String type2 = request.getParameter("type2");
  // out.print(type + " / " + userid);
  // http://localhost:8090/WebJSP/Ex14_include_param_main.jsp?type=A&userid=hong

  // include 되는 페이지에서는 request 객체를 공유할 수 있다.
%>
<html>
<head>
  <title>include(request 객체 공유) POINT</title>
</head>
<body>
  MAIN PAGE<br>
  <hr>
  <jsp:include page="Ex14_subparam.jsp">
    <jsp:param name="aaa" value="<%=type2%>"/>
    <jsp:param name="pwd" value="1004"/>
  </jsp:include>
  <hr>
  MAIN END
</body>
</html>
