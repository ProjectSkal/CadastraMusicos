<%-- 
    Document   : Home
    Created on : 14/09/2019, 15:30:21
    Author     : MORDOR
--%>
<%@page import="br.com.fatecpg.web.DB"%>
<%@page import="br.com.fatecpg.web.Artista"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
int codigo = Integer.parseInt(request.getParameter("cod"));


if (request.getParameter("set")!=null) {       
       String nome = request.getParameter("nome");
       String genero = request.getParameter("genero");
       int ano = Integer.parseInt(request.getParameter("ano"));
       Artista artista = DB.getArtista().get(codigo);
       artista.setNome(nome);
       artista.setGenero(genero);
       artista.setAno(ano);
       response.sendRedirect("/AlbunsMusicas/WEB-Artistas/listarArtistas.jsp");
   }
%>
<html>
    <head>
        <%@include file="../WEB-INF/links.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grupo 4 - Alterar Bandas</title>
    </head>
    <body style="padding-bottom: 30px;">
        <%@include  file="../WEB-INF/menu.jspf"%>
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4"> Alterar Banda </h1>
        </div>
        <%int cod = Integer.parseInt(request.getParameter("cod"));%>
        <%Artista artista = DB.getArtista().get(codigo);%>
        
            <form class="container">
                

                <div class="form-row"> 

                    <div class="form-group col-md-6">
                      <label for="inputNome">Nome</label>
                      <input type="text" class="form-control" name="nome" placeholder="Banda" value="<%= artista.getNome()%>" />
                    </div>

                    <div class="form-group col-md-6">
                      <label for="inputGênero">Gênero</label>
                      <input type="text" class="form-control" name="genero" placeholder="Banda" value="<%= artista.getGenero()%>" />
                    </div>
                    
                    <div class="form-group col-md-6">
                      <label for="inputGênero">Ano</label>
                      <input type="number" class="form-control" name="ano" placeholder="Ano de Criação" value="<%= artista.getAno()%>" />
                    </div>
                    <input type="hidden" name="set" value="1">
                    <input type="hidden" name="cod" value="<%=codigo%>">
                </div> 
                <div class="form-group">
                </div>
                <center>
                    <br>
                    <a href="/AlbunsMusicas/WEB-Artistas/listarArtistas.jsp"><button type="button" class="btn btn-dark">Cancelar</button></a>
                    <input type="submit" class="btn btn-dark" name="set" value="Alterar" />
                </center>           
          </form>
                <br>
        
        <div>
            <%@include  file="../WEB-INF/footer.jspf"%>
        </div>
    </body>
</html>
