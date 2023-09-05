<!doctype html>
<html lang="en">
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
        <h5 class="mt-5">Inserisci i dettagli di ogni persona</h5>
        <form action="riepilogo.jsp" method="get">
                <div class="row">
	                <% 
		            	int persone = Integer.parseInt(request.getParameter("persone"));
		            	for (int i = 0; i < persone; i++) {
		            %>
                    <div class="col-6">
                        <div class="bg-light border p-4 mt-4">
                            <div class="mb-3">
                                <label for="nome_<%= i+1 %>" class="form-label">Nome</label>
                                <input type="text" class="form-control" id="nome_<%= i+1 %>" name="nome[]">
                            </div>
                            <div class="mb-3">
                                <label for="cognome_<%= i+1 %>" class="form-label">Cognome</label>
                                <input type="text" class="form-control" id="cognome_<%= i+1 %>" name="cognome[]">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Sesso</label><br>
                                <div class="btn-group" role="group">
                                    <input type="radio" class="btn-check" name="sesso_<%= i+1 %>" id="sesso_<%= i+1 %>_m" value="Uomo" checked>
                                    <label class="btn btn-outline-secondary" for="sesso_<%= i+1 %>_m">Uomo</label>
                                    <input type="radio" class="btn-check" name="sesso_<%= i+1 %>" id="sesso_<%= i+1 %>_f" value="Donna">
                                    <label class="btn btn-outline-secondary" for="sesso_<%= i+1 %>_f">Donna</label>
                                </div>
                            </div>
                        </div>
                    </div>
            		<% } %>
                </div>
            <input type="submit" class="btn btn-primary mt-3" value="Avanti" />
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
