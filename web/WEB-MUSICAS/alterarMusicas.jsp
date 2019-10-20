<%-- 
    Document   : alterarMusicas
    Created on : 14/09/2019, 17:00:58
    Author     : MORDOR
--%>
<%@page import="br.com.fatecpg.web.Banda"%>
<%@page import="br.com.fatecpg.web.Album"%>
<%@page import="br.com.fatecpg.web.Musica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
if (request.getParameter("set")!=null) {
       int cod = Integer.parseInt(request.getParameter("cod"));
       String nome = request.getParameter("musica");
       int album = Integer.parseInt(request.getParameter("album"));
       int ano = Integer.parseInt(request.getParameter("Ano"));
       Album.getMusicas().set(cod, new Musica(nome,album,ano));
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
                <div class="form-group col-md-6">
                    <label for="inputNome">Nome da música</label>
                    <input type="text" class="form-control" name="musica" placeholder="Nome do disco" required value="<%= musica.getNome()%>"/>
                </div>
                     
                <div class="form-group col-md-6">
                    <label for="inputBanda">Disco</label>
                    <select class="form-control" name="Disco" required>                            
                        <option selected>Selecione um album</option>
                        <%for (Album album: Banda.getAlbuns()) { %>
                        <option <%= (album.getNome() == musica.getAlbum()) ? "selected" : "" %> value="<%=Banda.getAlbuns().indexOf(album)%>">
                            <%= album.getNome() %>
                        </option>
                        <%}%>
                    </select>
                </div>
                
                <div class="form-group col-md-6">
                    <label for="inputAno">Ano</label>
                    <input type="number" class="form-control" name="Ano" value="<%= musica.getAno()%>" placeholder="Ano de lançamento" required/>
                </div>                
            </div> 
            <center>
                <input type="hidden" name="salva" value="1">
                <a href="/AlbunsMusicas/WEB-MUSICAS/listarMusicas.jsp"><button type="button" class="btn btn-dark">Cancelar</button></a>
                <button type="submit" class="btn btn-dark" name="cadastrar">Cadastrar</button>
            </center>
            <br>
        </form>
             
        <div>
            <%@include  file="../WEB-INF/footer.jspf"%>
        </div>
    </body>
</html>

