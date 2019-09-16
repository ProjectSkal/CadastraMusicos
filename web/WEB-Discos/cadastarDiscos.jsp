<%-- 
    Document   : Home
    Created on : 14/09/2019, 16:30:52
    Author     : MORDOR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.web.Album"%>
<%@page import="br.com.fatecpg.web.Banda"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../WEB-INF/links.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grupo 4 - Cadastrar Disco</title>
    </head>
    <body style="padding-bottom: 30px;">
        <%
        if (request.getParameter("salva") != null) {
            int salva = Integer.parseInt(request.getParameter("salva"));
            String nome = request.getParameter("nomedodisco");
            String banda = request.getParameter("Banda");
            int ano = Integer.parseInt(request.getParameter("Ano"));
            Banda.getAlbuns().add(new Album(nome,banda,ano));
            response.sendRedirect("/AlbunsMusicas/WEB-Discos/listarDiscos.jsp");
        }
        %>
        <%@include  file="../WEB-INF/menu.jspf"%>
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4"> Cadastrar Disco </h1>
        </div>
        
               <form class="container">
           
            <div class="form-row">                 
                <div class="form-group col-md-6">
                  <label for="inputNome">Nome do disco</label>
                  <input type="text" class="form-control" name="nomedodisco" placeholder="Nome do disco" />
                </div>

                <div class="form-group col-md-6">
                  <label for="inputRazaoSocial">Banda</label>
                  <input type="text" class="form-control" name="Banda" placeholder="Banda" />
                </div>
                
                <div class="form-group col-md-6">
                  <label for="inputCNPJ">Ano</label>
                  <input type="text" class="form-control" name="Ano" placeholder="Ano de lançamento" />
                </div>
                
             
          </div>
            </div> 
            <div class="form-group">
                  <input type="hidden" class="form-control" name="i" />
            </div>
            <center>
                <br>
                <input type="hidden" name="salva" value="1">
                  <a href="../home.jsp"><button type="button" class="btn btn-dark">Cancelar</button></a>
                <input type="submit" class="btn btn-dark" name="alterar" value="Alterar" />
            </center>
            <br>            
          </form>
        <div>
            <%@include  file="../WEB-INF/footer.jspf"%>
        </div>
    </body>
</html>