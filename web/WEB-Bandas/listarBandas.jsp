<%-- 
    Document   : listarBandas
    Created on : 14/09/2019, 16:09:25
    Author     : MORDOR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.web.Gravadora"%>
<%@page import="br.com.fatecpg.web.Banda"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../WEB-INF/links.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grupo 4 - Listar Bandas</title>
    </head>
    <body style="padding-bottom: 30px;">
        <%@include  file="../WEB-INF/menu.jspf"%>
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4"> Listar Bandas </h1>
        </div>
        
        <div class="text-center">
            <table class="table">
                <thead>
                    <tr>
                        <th>Código</td>
                        <th>Nome</td>
                        <th>Genero</td>
                        <th></td>
                        <th></td>
                    </tr>
                </thead>
                <tbody>
                <%for (Banda banda: Gravadora.getBandas()) {%>
                <tr>
                    <td><%= Gravadora.getBandas().indexOf(banda) %></td>
                    <td><%= banda.getNome() %></td>
                    <td><%= banda.getGenero() %></td>
                    <td>Alterar</td>
                    <td><span class="apagar">Excluir</span></td>
                <tr>
                <%}%>
                </tbody>
            </table>
        </div>
 
        <div>
            <%@include  file="../WEB-INF/footer.jspf"%>
        </div>
    </body>
</html>
