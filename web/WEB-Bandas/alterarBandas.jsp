<%-- 
    Document   : Home
    Created on : 14/09/2019, 15:30:21
    Author     : MORDOR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                    <input type="submit" class="btn btn-dark" name="alterar" value="Alterar" />
                </center>           
          </form>
                <br>
        <div>
            <%@include  file="../WEB-INF/footer.jspf"%>
        </div>
    </body>
</html>
