<%-- 
    Document   : Home
    Created on : 14/09/2019, 16:30:58
    Author     : MORDOR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.web.DB"%>
<%@page import="br.com.fatecpg.web.Artista"%>
<%@page import="br.com.fatecpg.web.Disco"%>
<!DOCTYPE html>
<%
    
int codigo = Integer.parseInt(request.getParameter("cod"));
if (request.getParameter("set")!=null) {
       String nome = request.getParameter("disco");
       int banda = Integer.parseInt(request.getParameter("Banda"));
       int ano = Integer.parseInt(request.getParameter("Ano"));
       Artista artista = DB.getArtista().get(banda);
       Disco disco = artista.getDiscos().get(codigo);
       disco.setNome(nome);
       disco.setAno(ano);
       
       response.sendRedirect("/AlbunsMusicas/WEB-Discos/listarDiscos.jsp");
   }

%>
<html>
    <head>
         <%@include file="../WEB-INF/links.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grupo 4 - Alterar Disco</title>
    </head>
    <body style="padding-bottom: 30px;">
        <%@include  file="../WEB-INF/menu.jspf"%>
        <%Disco album = DB.getDiscos().get(codigo);%>
        <%
            int cod = 0;
            String nome = "";
            for (Artista banda: DB.getArtista()) {
                if(banda == album.getArtista()) {
                    cod = DB.getArtista().indexOf(banda);
                    nome = banda.getNome();
                }
            }
        %>
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4"> Alterar Disco </h1>
            <h4 class="display-6"> Artista: <%=nome%></h4>
        </div>
        
        

        <form class="container">
           
            <div class="form-row">                 
                <div class="form-group col-md-6">
                  <label for="inputNome">Nome do disco</label>
                  <input type="text" class="form-control" name="disco" placeholder="Nome do disco" value="<%= album.getNome()%>" />
                </div>

                <input type='hidden' name="Banda" value='<%=cod%>'>

                <input type="hidden" name="set" value="1">
                <input type="number" style='display:none' name="cod" value="<%=codigo%>">
                <div class="form-group col-md-6">
                  <label for="inputAno">Ano</label>
                  <input type="text" class="form-control" name="Ano" placeholder="Ano de lançamento" value="<%= album.getAno()%>"/>
                </div>
                
             
          </div>
            </div> 
            <div class="form-group">
                  <input type="hidden" class="form-control" name="i" />
            </div>
            <center>
                <br>
                  <a href="/AlbunsMusicas/WEB-Discos/listarDiscos.jsp"><button type="button" class="btn btn-dark">Cancelar</button></a>
                <input type="submit" class="btn btn-dark" name="alterar" value="Alterar" />
            </center>
            <br>            
          </form>
        <div>
            <%@include  file="../WEB-INF/footer.jspf"%>
        </div>
    </body>
</html>
