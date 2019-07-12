<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="org.hibernate.*, org.hibernate.boot.* ,org.hibernate.boot.registry.StandardServiceRegistryBuilder,
      org.hibernate.cfg.Configuration, java.util.*,com.lti.hiber.Employee1,  com.lti.hiber.Department1, javax.persistence.*"
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

Employee1 e1=new Employee1();
e1.setEname("John");
e1.setDesignation("Manager");

Employee1 e2= new Employee1();
e2.setEname("Mike");
e2.setDesignation("Observer");


Employee1 e3=new Employee1();
e3.setEname("John");
e3.setDesignation(" Sales Manager");

Employee1 e4= new Employee1();
e4.setEname("Mike");
e4.setDesignation("Production Manager");


Employee1 e5=new Employee1();
e5.setEname("John");
e5.setDesignation("Growth Manager");



ArrayList<Employee1> list1= new ArrayList<Employee1>();
list1.add(e1);
list1.add(e2);

ArrayList<Employee1> list2= new ArrayList<Employee1>();
list2.add(e3);
list2.add(e4);
list2.add(e5);



Department1 d1= new Department1();
d1.setDname("Admin");
d1.setEmployee(list1);


Department1 d2= new Department1();
d2.setDname("Sales");
d2.setEmployee(list2);


sess.persist(d1);
sess.persist(d2);

sess.getTransaction().commit();


out.println("Table Created & Record Successfully Inserted");



out.println("<br>"+"***************Display Data******************"+ "<br>");

TypedQuery<Department1>query =sess.createQuery("from Department1", Department1.class);
List<Department1> list= query.getResultList();

Iterator<Department1> itr= list.iterator();

while(itr.hasNext()){
	Department1 d= itr.next();
	out.println("<br>"+"Department  ID: " + d.getDid());
	out.println("<br>"+"Department  Name: " + d.getDname());
	
	
List<Employee1> list3=d.getEmployee();
Iterator<Employee1> itr2=list3.iterator();

while(itr2.hasNext()){
	
	Employee1 e= itr2.next();
	out.println("<br>"+ e.getEid()+" | " + e.getEname()+" | " + e.getDesignation());
}
  out.println("<br>");	
}

sess.close();
out.println("Success");

%>
</body>
</html>