<%-- 
    Document   : Home
    Created on : 14/09/2019, 16:30:40
    Author     : MORDOR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../WEB-INF/links.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grupo 4 - Excluir Disco</title>
    </head>
    <body style="padding-bottom: 30px;">
        <%@include  file="../WEB-INF/menu.jspf"%>
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4"> Excluir Disco </h1>
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