<%-- 
    Document   : alterarMusicas
    Created on : 14/09/2019, 17:00:58
    Author     : MORDOR
--%>
<%@page import="br.com.fatecpg.web.Album"%>
<%@page import="br.com.fatecpg.web.Musica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
if (request.getParameter("set")!=null) {
       int cod = Integer.parseInt(request.getParameter("cod"));
       String nome = request.getParameter("musica");
       String album = request.getParameter("album");
       String banda = request.getParameter("Banda");
       int ano = Integer.parseInt(request.getParameter("Ano"));
       Album.getMusicas().set(cod, new Musica(nome,album,banda,ano));
       response.sendRedirect("/AlbunsMusicas/WEB-MUSICAS/listarMusicas.jsp");
   }
%>
<html>
    <head>
        <%@include file="../WEB-INF/links.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grupo 4 - Alterar Música</title>
    </head>
    <body style="padding-bottom: 30px;">
        <%@include  file="../WEB-INF/menu.jspf"%>
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4"> Alterar Música </h1>
        </div>
        
        <%int cod = Integer.parseInt(request.getParameter("cod"));%>
        <%Musica musica = Album.getMusicas().get(cod);%>     
      
        <form class="container">


            <div class="form-row"> 

                 <div class="form-row">                 
                <div class="form-group col-md-6">
                  <label for="inputNome">Nome da música</label>
                  <input type="text" class="form-control" value="<%= musica.getNome()%>" name="musica" placeholder="Nome do disco" />
                </div>
                     
                <div class="form-group col-md-6">
                  <label for="inputBanda">Disco</label>
                  <input type="text" class="form-control" name="album" placeholder="Disco" value="<%= musica.getAlbum()%>"/>
                </div>

                <div class="form-group col-md-6">
                  <label for="inputBanda">Banda</label>
                  <input type="text" class="form-control" name="Banda" placeholder="Banda" value="<%= musica.getBanda()%>"/>
                </div>
                <input type="hidden" name="set" value="1">
                <input type="hidden" name="cod" value="<%=cod%>">
                <div class="form-group col-md-6">
                  <label for="inputAno">Ano</label>
                  <input type="text" class="form-control" name="Ano" placeholder="Ano de lançamento" value="<%= musica.getAno()%>"/>
                </div>
            <center>
              <a href="/AlbunsMusicas/WEB-MUSICAS/listarMusicas.jsp"><button type="button" class="btn btn-dark">Cancelar</button></a>
                <input type="submit" class="btn btn-dark" name="alterar" value="Alterar" />
            </center> 
            <br>
        </form>
        <div>
            <%@include  file="../WEB-INF/footer.jspf"%>
        </div>
    </body>
</html>
