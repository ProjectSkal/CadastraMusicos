<%-- 
    Document   : Home
    Created on : 14/09/2019, 16:10:32
    Author     : MORDOR
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.web.DB"%>
<%@page import="br.com.fatecpg.web.Disco"%>
<%@page import="br.com.fatecpg.web.Musica"%>

<!DOCTYPE html>
<html>
    <head>
        <%@include file="../WEB-INF/links.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grupo 4 - Listar Músicas</title>
    </head>
    <body style="padding-bottom: 30px;">
        <%@include  file="../WEB-INF/menu.jspf"%>
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4"> Listar Músicas </h1>
        </div>
        
        <div class="text-center">
            <table class="table">
                <thead>
                <tr>
                    <th>Código</td>
                    <th>Nome</td>
                    <th>Album</td>
                    <th>Banda</td>
                    <th>Ano</td>
                    <th></td>
                    <th></td>
                </tr>
                </thead>
                <tbody>
                <%for (Musica musica: DB.getMusicas()) {                
                    int cont = DB.getMusicas().indexOf(musica);
                %>
                <tr>
                    <td><%= (cont + 1) %></td>
                    <td><%= musica.getNome() %></td>
                    <td><%= musica.getDisco().getNome() %></td>
                    <td><%= musica.getDisco().getArtista().getNome() %></td>
                    <td><a href="/AlbunsMusicas/WEB-MUSICAS/alterarMusicas.jsp?cod=<%=cont%>">Alterar</a></td>
                    <td><a href="/AlbunsMusicas/WEB-MUSICAS/excluirMusicas.jsp?i=<%=cont%>&disco=<%=DB.getDiscos().indexOf(musica.getDisco())%>">Excluir</a></td>                    
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