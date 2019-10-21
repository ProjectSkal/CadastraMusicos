<%-- 
    Document   : alterarMusicas
    Created on : 14/09/2019, 17:00:58
    Author     : MORDOR
--%>
<%@page import="br.com.fatecpg.web.DB"%>
<%@page import="br.com.fatecpg.web.Disco"%>
<%@page import="br.com.fatecpg.web.Musica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
int cod = Integer.parseInt(request.getParameter("cod"));
if (request.getParameter("set")!=null) {
       
       String nome = request.getParameter("musica");
       int album = Integer.parseInt(request.getParameter("album"));
       int duracao = Integer.parseInt(request.getParameter("duracao"));
       
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
        <%Musica musica = DB.getMusicas().get(cod);%>
        
        <%
            int codigo = 0;
            String nome = "";
            for (Disco disco: DB.getDiscos()) {
                if (disco == musica.getDisco()) {
                    codigo = DB.getDiscos().indexOf(disco);
                    nome = disco.getNome();
                }
            }
        %>
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4"> Alterar Música </h1>
            <h4 class="display-6"> Disco: <%= nome %></h4>
        </div>
        
        
      
        <form class="container">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputNome">Nome da música</label>
                    <input type="text" class="form-control" name="musica" placeholder="Nome do disco" required value="<%= musica.getNome()%>"/>
                </div>

                <input type='hidden' name="Banda" value="<%= codigo %>">
                
                <div class="form-group col-md-6">
                    <label for="inputAno">Duração</label>
                    <input type="number" class="form-control" name="duracao" value="<%= musica.getDuracao()%>" placeholder="Ano de lançamento" required/>
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

