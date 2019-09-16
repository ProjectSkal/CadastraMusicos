<%-- 
    Document   : Home
    Created on : 14/09/2019, 15:30:21
    Author     : MORDOR
--%>
<%@page import="br.com.fatecpg.web.Gravadora"%>
<%@page import="br.com.fatecpg.web.Banda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
if(request.getParameter("cancelar")!=null){
    response.sendRedirect("/AlbunsMusicas/WEB-Bandas/listarBandas.jsp");
   }if(request.getParameter("set")!=null){
       int cont = Integer.parseInt(request.getParameter("cont"));
       String nome = request.getParameter("nome");
       String genero = request.getParameter("cpf");
       Gravadora.getBandas().set(cont, new Banda(nome, genero));
       response.sendRedirect("/AlbunsMusicas/WEB-Bandas/listarBandas.jsp");
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
        
            <form class="container">
                

                <div class="form-row"> 

                    <div class="form-group col-md-6">
                      <label for="inputNome">Nome</label>
                    </div>

                    <div class="form-group col-md-6">
                      <label for="inputGênero">Gênero</label>
                    </div>
                </div> 
                <div class="form-group">
                </div>
                <center>
                    <br>
                    <a href="../home.jsp"><button type="button" class="btn btn-dark">Cancelar</button></a>
                    <input type="submit" class="btn btn-dark" name="set" value="Alterar" />
                </center>           
          </form>
                <br>
        
        <div>
            <%@include  file="../WEB-INF/footer.jspf"%>
        </div>
    </body>
</html>
