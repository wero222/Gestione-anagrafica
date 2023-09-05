<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<%
	String[] nomi = request.getParameterValues("nome[]");
	String[] cognomi = request.getParameterValues("cognome[]");
%>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Stop and code 12/05</title>
</head>
<body>
    <div class="container my-5">
        <h1>Esercitazione <small class="text-muted">| stop and code 31/05</small></h1>
        <hr>
        <h5 class="mt-5">Riepilogo dei dati inseriti</h5>
        <div class="row">
            <% 
            for (int i = 0; i < nomi.length; i++) {
            %>
            <div class="col-6">
                <div class="bg-light border p-4 mt-4">
                    <h6>Persona <%= i+1 %></h6>
                    <hr>
                    <dl>
                        <dt>Nome</dt>
                        <dd><%= nomi[i] %></dd>
                        <dt>Cognome</dt>
                        <dd><%= cognomi[i] %></dd>
                        <dt>Sesso</dt>
                        <dd><%= request.getParameter("sesso_" + (i+1)) %></dd>
                    </dl>
                </div>
            </div>
            <% } %>
        </div>
        <a href="index.jsp" class="btn btn-primary mt-3">Inizia da capo</a>
    </div>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
