<%-- 
    Document   : Home
    Created on : 14/09/2019, 16:30:32
    Author     : MORDOR
--%>


<%@page import="java.util.Arrays"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.web.DB"%>
<%@page import="br.com.fatecpg.web.Artista"%>
<%@page import="br.com.fatecpg.web.Disco"%>
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
                        <th>Ano</td>
                        <th>Banda</td>
                        <th></td>
                        <th></td>
                    </tr>
                </thead>
                <tbody>
                
                <%for (Disco disco: DB.getDiscos()) {%>
                <% int cont = DB.getDiscos().indexOf(disco) ;%>
                <tr>
                    <td><%= (cont + 1) %></td>
                    <td><%= disco.getNome() %></td>                    
                    <td><%= disco.getAno() %></td>
                    <td><%= disco.getArtista().getNome() %></td>
                    <td><a href="/AlbunsMusicas/WEB-Discos/alterarDiscos.jsp?cod=<%=cont%>">Alterar</a></td>
                    <td><a href="/AlbunsMusicas/WEB-Discos/excluirDiscos.jsp?i=<%=cont%>&artista=<%=DB.getArtista().indexOf(disco.getArtista())%>">Excluir</a></td>
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