<%-- 
    Document   : Home
    Created on : 14/09/2019, 16:30:40
    Author     : MORDOR
--%>

<%@page import="br.com.fatecpg.web.Artista"%>
<%@page import="br.com.fatecpg.web.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
       <head>
        <%@include file="../WEB-INF/links.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grupo 4 - Excluir Pessoa</title>
    </head>
    <body style="padding-bottom: 30px;">
        <%@include  file="../WEB-INF/menu.jspf"%>        
        
        <%
            int i = Integer.parseInt(request.getParameter("i"));
            int artista = Integer.parseInt(request.getParameter("artista"));
            if(request.getParameter("excluir")!=null){
             DB.getArtista().get(artista).getDiscos().remove(i);
              response.sendRedirect("/AlbunsMusicas/WEB-Discos/listarDiscos.jsp");
        }
        %>
        
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4"> Excluir <%= DB.getArtista().get(artista).getDiscos().get(i).getNome()%> </h1>
        </div>
           
            <form class="container">
                
               
                </div> 
                
                <center>
                <input type="hidden" class="btn btn-dark" name="i" value="<%=i%>" />
                <input type="hidden" class="btn btn-dark" name="artista" value="<%=artista%>" />  
                <input type="submit" class="btn btn-dark" name="excluir" value="Confirmar exclusão"/>
                
                    <a href="../home.jsp"><button type="button" class="btn btn-dark">Cancelar</button></a>
                </center>           
          </form>
                <br>
        <div>
            <%@include  file="../WEB-INF/footer.jspf"%>
        </div>
    </body>
</html>