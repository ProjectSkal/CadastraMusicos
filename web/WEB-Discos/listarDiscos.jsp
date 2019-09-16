<%-- 
    Document   : Home
    Created on : 14/09/2019, 16:30:32
    Author     : MORDOR
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.web.Banda"%>
<%@page import="br.com.fatecpg.web.Album"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../WEB-INF/links.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grupo 4 - Listar Discos</title>
    </head>
    <body style="padding-bottom: 30px;">
        <%@include  file="../WEB-INF/menu.jspf"%>
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4"> Listar Discos </h1>
        </div>
            
        <div class="text-center">
            <table class="table">
                <thead>
                    <tr>
                        <th>Código</td>
                        <th>Nome</td>
                        <th>Banda</td>
                        <th>Ano</td>
                        <th></td>
                        <th></td>
                    </tr>
                </thead>
                <tbody>
                <%for (Album album: Banda.getAlbuns()) {%>
                <tr>
                    <td><%= Banda.getAlbuns().indexOf(album) %></td>
                    <td><%= album.getNome() %></td>
                    <td><%= album.getBanda() %></td>
                    <td><%= album.getAno() %></td>
                    <td>Alterar</td>
                    <td><span class="apagar">Excluir</span></td>
                <tr>
                <%}%>
                <tbody>
            </table>
        </div>
 
        <div>
            <%@include  file="../WEB-INF/footer.jspf"%>
        </div>
    </body>
</html>