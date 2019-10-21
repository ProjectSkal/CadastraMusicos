<%-- 
    Document   : MORDOR
    Created on : 14/09/2019, 17:34:14
    Author     : Positivo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.web.DB"%>
<%@page import="br.com.fatecpg.web.Disco"%>
<%@page import="br.com.fatecpg.web.Musica"%>

<%if (request.getParameter("salva") != null) {
    int salva = Integer.parseInt(request.getParameter("salva"));
    String nome = request.getParameter("musica");
    int album = Integer.parseInt(request.getParameter("Disco"));
    int duracao = Integer.parseInt(request.getParameter("duracao"));
    Disco disco = DB.getDiscos().get(album);
    disco.getMusicas().add(new Musica(nome,duracao));
    response.sendRedirect("/AlbunsMusicas/WEB-MUSICAS/listarMusicas.jsp");
}%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../WEB-INF/links.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grupo 4 - Cadastrar Músicas</title>
    </head>
    <body style="padding-bottom: 30px;">
        
        <%@include  file="../WEB-INF/menu.jspf"%>
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4"> Cadastrar Músicas </h1>
        </div>            
            
        <form class="container">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputNome">Nome da música</label>
                    <input type="text" class="form-control" name="musica" placeholder="Nome do disco" required/>
                </div>
                     
                <div class="form-group col-md-6">
                    <label for="inputBanda">Disco</label>
                    <select class="form-control" name="Disco" required>                            
                        <option selected>Selecione um album</option>
                        <%for (Disco disco: DB.getDiscos()) { %>
                        <option value="<%=DB.getDiscos().indexOf(disco)%>">
                            <%= disco.getNome() + " - " + disco.getArtista().getNome() %>
                        </option>
                        <%}%>
                    </select>
                </div>
                
                <div class="form-group col-md-6">
                    <label for="inputAno">Duração</label>
                    <input type="number" class="form-control" name="duracao" placeholder="Tempo de duração em segundos" required/>
                </div>                
            </div> 
            <center>
                <input type="hidden" name="salva" value="1">
                <a href="../home.jsp"><button type="button" class="btn btn-dark">Cancelar</button></a>
                <button type="submit" class="btn btn-dark" name="cadastrar">Cadastrar</button>
            </center>
            <br>
        </form>
        <div>
            <%@include  file="../WEB-INF/footer.jspf"%>
        </div>
    </body>
</html>
