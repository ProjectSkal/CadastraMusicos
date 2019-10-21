<%-- 
    Document   : excluirBandas
    Created on : 14/09/2019, 16:09:25
    Author     : MORDOR
--%>


<%@page import="br.com.fatecpg.web.DB"%>
<%@page import="br.com.fatecpg.web.Artista"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../WEB-INF/links.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grupo 4 - Excluir Banda</title>
    </head>
    <body style="padding-bottom: 30px;">
        <%@include  file="../WEB-INF/menu.jspf"%>
        <% int i = Integer.parseInt(request.getParameter("i")); %>
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4"> Excluir <%= DB.getArtista().get(i).getNome()%> </h1>
        </div>
        
             <%            
            if(request.getParameter("excluir")!=null){
             DB.getArtista().remove(i);
              response.sendRedirect("/AlbunsMusicas/WEB-Artistas/listarArtistas.jsp");
        }
        %>
           
            <form class="container">
                
               
                </div> 
                
                <center>
                <input type="hidden" class="btn btn-dark" name="i" value="<%=i%>" />   
                <input type="submit" class="btn btn-dark" name="excluir" value="Confirmar exclusão"/>
                
                    <a href="/AlbunsMusicas/WEB-Artistas/listarArtistas.jsp"><button type="button" class="btn btn-dark">Cancelar</button></a>
                </center>           
          </form>
                <br>
        <div>
            <%@include  file="../WEB-INF/footer.jspf"%>
        </div>
    </body>
</html>
