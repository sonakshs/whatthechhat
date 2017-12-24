<%@page import ="Chhat.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
String name = request.getParameter("sname");
name = name + " " + request.getParameter("slname");
String email = request.getParameter("semail");
String pass = request.getParameter("spass");

User user = new User();
user.setEmail(email);
user.setName(name);
user.setPassword(pass);
boolean status = DBManager.addUser(user);

if(status){
    response.sendRedirect("/");
}
else{
    response.sendRedirect("/WhatTheChhat/Login/index.jsp");
}

    
%>