<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="modelo.Post, java.util.List, java.util.ArrayList"
	%>

<%
 	String titulo = request.getParameter("titulo");
	String foto = request.getParameter("foto");
	String conteudo = request.getParameter("conteudo");
	Post post = new Post();
	post.setConteudo(conteudo);
	post.setImagem(foto);
	post.setTitulo(titulo);
	
	List posts = (List) session.getAttribute("posts"); 
	if(posts == null){
		posts = new ArrayList();
	}
	posts.add(post);
	session.setAttribute("posts", posts);
	response.sendRedirect("blog.jsp"); 	
	
%>

