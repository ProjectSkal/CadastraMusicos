<%-- 
    Document   : cadastrarBandas
    Created on : 14/09/2019, 16:09:25
    Author     : MORDOR
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.web.DB"%>
<%@page import="br.com.fatecpg.web.Artista"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../WEB-INF/links.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grupo  - Cadastrar Banda</title>
    </head>
    <body style="padding-bottom: 30px;">
        <%
        if (request.getParameter("salva") != null) {
            int salva = Integer.parseInt(request.getParameter("salva"));
            String nome = request.getParameter("nome");
            String genero = request.getParameter("genero");
            int ano = Integer.parseInt(request.getParameter("ano"));
            DB.getArtista().add(new Artista(nome,genero,ano));
            response.sendRedirect("/AlbunsMusicas/WEB-Artistas/listarArtistas.jsp");
        }
        %>
        <%@include  file="../WEB-INF/menu.jspf"%>
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4"> Cadastrar Banda </h1>
        </div>
           
            <form class="container">
            <div class="form-row">
                <div class="form-group col-md-6">
                  <label for="inputNome">Nome</label>
                  <input type="text" class="form-control" name="nome" placeholder="Nome da banda">
                </div>

                <div class="form-group col-md-6">
                  <label for="inputCPF">Gênero musical</label>
                  <input type="text" class="form-control" name="genero" placeholder="ex.: folk, punk, rock...">
                </div>
                
                <div class="form-group col-md-6">
                  <label for="inputNome">Ano</label>
                  <input type="number" class="form-control" name="ano" placeholder="Ano de Formação">
                </div>
                
                <input type="hidden" name="salva" value="1">
            </div> 
         <br>
            <center>
            
                <a href="/AlbunsMusicas/WEB-Artistas/listarArtistas.jsp"><button type="button" class="btn btn-dark">Cancelar</button></a>
                <button type="submit" class="btn btn-dark" name="cadastrar">Cadastrar</button>
            </center>       
                <br>
          </form>
        <div>
            <%@include  file="../WEB-INF/footer.jspf"%>
        </div>
    </body>
</html>
