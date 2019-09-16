<%-- 
    Document   : excluirMusica
    Created on : 14/09/2018, 17:35:55
    Author     : MORDOR
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../WEB-INF/links.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grupo 1 - Excluir Música</title>
    </head>
    <body style="padding-bottom: 30px;">
        <%@include  file="../WEB-INF/menu.jspf"%>
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4"> Excluir Música </h1>

            <center>
                <input type="submit" class="btn btn-dark" name="excluir" value="Confirmar exclusão"/>
                <a href="../home.jsp"><button type="button" class="btn btn-dark">Cancelar</button></a>
            </center>
            <br>
        </form>
        <div>
            <%@include  file="../WEB-INF/footer.jspf"%>
        </div>
    </body>
</html>
