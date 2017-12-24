<%@page import ="Chhat.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String email = request.getParameter("lemail");
String pass = request.getParameter("lpass");
String name = DBManager.getName(email);
boolean error = false;
session.setAttribute("sessionEmail",email);
session.setAttribute("sessionName",name);

boolean flag = DBManager.authenticateUser(email,pass);
if(flag)
{   
   
    String url = "../index.jsp";
    response.sendRedirect(url);
    /*request.setAttribute("flag", "true");
    RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
    rd.forward(request, response);
            */
}
else
{   
    error = true;
    response.sendRedirect("index.jsp");
}    
%>