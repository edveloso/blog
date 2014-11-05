<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.List, modelo.Post"
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>



  <link rel="stylesheet" href="./estilo.css" type="text/css" > 

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

   

	<h1>My Blogger</h1>
	<br />
	<a href="admin.jsp">Novo Post</a>
	<br/>
 
 	<%
        List posts = (List) session.getAttribute("posts");
    		if(posts != null)
    		for(Object obj  : posts){
    		    	Post post = (Post) obj;
    		
    %>

	<h2 class="" > <%= post.getTitulo() %>  </h2>
	
	<div  class="centralizar">
		<img alt="chaves" src="./<%= post.getImagem() %>">
	</div> 

	<p> <%= post.getConteudo() %>  </p>

  <%
    		}
    		else{ 
    		   out.print("não há posts a mostrar!");	
    		}
  %>



</body>
</html>