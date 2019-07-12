<%@page import="com.lti.hiber.Question"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="org.hibernate.*, org.hibernate.boot.* ,org.hibernate.boot.registry.StandardServiceRegistryBuilder,
      org.hibernate.cfg.Configuration, java.util.*,  com.lti.hiber.Employee, javax.persistence.*"
     %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Configuration configuration= new Configuration();
configuration.configure("hibernate.cfg.xml");
SessionFactory factory=configuration.buildSessionFactory(new StandardServiceRegistryBuilder().configure().build());
Session sess=factory.openSession();

sess.beginTransaction();

HashMap<String,String> map1=new HashMap<String,String>();
map1.put("Java is a Programming Language ", "Raj  ");
map1.put("Java is a Platform ", "John Mike  ");

HashMap<String,String> map2=new HashMap<String,String>();
map2.put("Servlet is a Server Side Programming  ", "Raj gs  ");
map1.put("Servlet is an Interface ", "John Mike  ");
map1.put("Servlet is a Package ", "Rahul kl  ");

Question q1 = new Question("What is Java?" , "Mohan", map1);
Question q2 = new Question("What is Servlet?" , "Panther", map2);

sess.persist(q1);
sess.persist(q2);

sess.getTransaction().commit();
sess.close();

out.println("Successfully Saved ");




%>
</body>
</html>