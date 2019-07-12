<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="org.hibernate.*, org.hibernate.boot.* ,org.hibernate.boot.registry.StandardServiceRegistryBuilder,
      org.hibernate.cfg.Configuration, java.util.*,com.lti.hiber.Question,  com.lti.hiber.Answer, javax.persistence.*"
     %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>One To Many </title>
</head>
<body>


<h2>Hibernate One-To-Many Annotation Example </h2>

<%
Configuration configuration= new Configuration();
configuration.configure("hibernate.cfg.xml");
SessionFactory factory=configuration.buildSessionFactory(new StandardServiceRegistryBuilder().configure().build());
Session sess=factory.openSession();
sess.beginTransaction();



Answer ans1= new Answer();
ans1.setAnswername("Java is a programming language");
ans1.setPostedBy("Raj Gs");

Answer ans2 = new Answer();
ans2.setAnswername("Java is a platform");
ans2.setPostedBy("Navin Kumar");

Answer ans3 = new Answer();
ans3.setAnswername("Servlet is an Interface ");
ans3.setPostedBy("Ram Kumar");

Answer ans4 = new Answer();
ans4.setAnswername("Servlet is an API");
ans4.setPostedBy("Nancy Kumar");

Answer ans5=new Answer();
ans5.setAnswername("JS is client/server Scripting language");
ans5.setPostedBy("Mike");

ArrayList<Answer> list1=new ArrayList<Answer>();
list1.add(ans1);
list1.add(ans2);

ArrayList<Answer> list2=new ArrayList<Answer>();
list2.add(ans3);
list2.add(ans4);

ArrayList<Answer> list4=new ArrayList<Answer>();
list4.add(ans5);

Question q1=new Question();
q1.setQname("What is Java? ");
q1.setAnswers(list1);

Question q2=new Question();
q2.setQname("What is Servlet? ");
q2.setAnswers(list2);

Question q3=new Question();
q3.setQname("What is JS? ");
q3.setAnswers(list4);

sess.persist(q1);
sess.persist(q2);
sess.persist(q3);

sess.getTransaction().commit();

//sess.close();
out.println("Table Created & Record Successfully Inserted");



out.println("<br>"+"***************Display Data******************"+ "<br>");

TypedQuery<Question>query =sess.createQuery("from Question", Question.class);
List<Question> list= query.getResultList();

Iterator<Question> itr= list.iterator();

while(itr.hasNext()){
	Question q= itr.next();
	out.println("<br>"+"Question Name: " + q.getQname());
	
	
List<Answer> list3=q.getAnswers();
Iterator<Answer> itr2=list3.iterator();

while(itr2.hasNext()){
	
	Answer a= itr2.next();
	out.println("<br>"+a.getAnswername()+" : " + a.getPostedBy());
}
  out.println("<br>");	
}

sess.close();
out.println("Success");
%>
</body>
</html>