<%--
  Created by IntelliJ IDEA.
  User: zhengshuaibing
  Date: 2018/6/17
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
    <script src="../AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
</head>
<body>
<%
    // 如果用户名已经存在，说明已经登录，跳转到主页
    String username = (String) request.getSession().getAttribute("username");
    if (username != null && username.length() > 0) {
        response.sendRedirect("home3.jsp");
        return;
    }
%>
<dev style="text-align: center">
    <h3>
        购物商城首页-登录！
    </h3>
    <form action="<%=request.getContextPath()%>/home/login" method="post">
        用户：<input type="text" name="username" />
        密码: <input type="password" name="password" />
        <input type="submit" value="登录" /><br>
    </form>
</dev>

</body>
</html>
