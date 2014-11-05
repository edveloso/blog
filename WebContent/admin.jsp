<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

    <h1>Página de criação de posts</h1>
    <br/>
    <form action="postService.jsp" method="post">
       
       <label>Título</label>
       <input type="text" name="titulo" > <br/>
       
       <label>Foto</label>
       <input type="text" name="foto"> <br/>
       
       <label>Conteúdo</label>
       <textarea rows="10" cols="80" name="conteudo" ></textarea> <br/>
       
       <input type="submit" value="Criar Post">   
       
    </form>
    
  


</body>
</html>