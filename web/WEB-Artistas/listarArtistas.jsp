<%-- 
    Document   : listarBandas
    Created on : 14/09/2019, 16:09:25
    Author     : MORDOR
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.web.DB"%>
<%@page import="br.com.fatecpg.web.Artista"%>
<%@page import="br.com.fatecpg.web.Disco"%>
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
                        <th>#</th>
                        <th>Banda</td>
                        <th>Genero</td>
                        <th>Ano</td>
                        <th></td>
                        <th></td>
                    </tr>
                </thead>
                <% for (Artista artista: DB.getArtista()) {%>
                <tbody>                
                <% int count = DB.getArtistaIndex(artista);%>
                <td><%= (count + 1)%></td>
                <td><%= artista.getNome()%></td>
                <td><%= artista.getGenero()%></td>
                <td><%= artista.getAno()%></td>
                <td><a href="/AlbunsMusicas/WEB-Artistas/alterarArtista.jsp?cod=<%=count%>">Alterar</a></td>                    
                <td><a href="/AlbunsMusicas/WEB-Artistas/excluirArtista.jsp?i=<%=count%>">Excluir</a></td>
                </tbody>
                <%}%>
            </table>
        </div>
 
        <div>
            <%@include  file="../WEB-INF/footer.jspf"%>
        </div>
    </body>
</html>
