<%-- 
    Document   : Home
    Created on : 14/09/2019, 16:30:52
    Author     : MORDOR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.web.DB"%>
<%@page import="br.com.fatecpg.web.Disco"%>
<%@page import="br.com.fatecpg.web.Artista"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../WEB-INF/links.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grupo 4 - Cadastrar Disco</title>
    </head>
    <body style="padding-bottom: 30px;">
        <%
        if (request.getParameter("salva") != null) {
            String nome = request.getParameter("nomedodisco");
            int codigoBanda = Integer.parseInt(request.getParameter("Banda"));
            int ano = Integer.parseInt(request.getParameter("Ano"));
            Artista artista = DB.getArtista().get(codigoBanda);
            artista.getDiscos().add(new Disco(nome,ano));
            response.sendRedirect("/AlbunsMusicas/WEB-Discos/listarDiscos.jsp");
        }
        %>
        <%@include  file="../WEB-INF/menu.jspf"%>
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4"> Cadastrar Disco </h1>
        </div>
        
               <form class="container">
           
            <div class="form-row">                 
                <div class="form-group col-md-6">
                  <label for="inputNome">Nome do disco</label>
                  <input type="text" class="form-control" name="nomedodisco" placeholder="Nome do disco" />
                </div>

                <div class="form-group col-md-6">
                    <label for="inputRazaoSocial">Banda</label>
                    <select class="form-control" name="Banda" required>
                        <option selected>Selecione um album</option>
                        <%for (Artista artista: DB.getArtista()){%>
                        <option value="<%=DB.getArtista().indexOf(artista)%>">
                            <%= artista.getNome()%>
                        </option>
                        <%}%>
                    </select>
                </div>
                
                <div class="form-group col-md-6">
                  <label for="inputCNPJ">Ano</label>
                  <input type="number" class="form-control" name="Ano" placeholder="Ano de lançamento" />
                </div>                
             
          </div>
            </div> 
            <div class="form-group">
                  <input type="hidden" class="form-control" name="i" />
            </div>
            <center>
                <br>
                <input type="hidden" name="salva" value="1">
                  <a href="../home.jsp"><button type="button" class="btn btn-dark">Cancelar</button></a>
                <input type="submit" class="btn btn-dark" name="alterar" value="Cadastrar" />
            </center>
            <br>            
          </form>
        <div>
            <%@include  file="../WEB-INF/footer.jspf"%>
        </div>
    </body>
</html>