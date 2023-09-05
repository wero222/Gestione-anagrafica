<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Passaggio Nomi</title>
</head>
<body>
    <div class="container my-5">
        <h1>Esercitazione <small class="text-muted">| stop and code 31/05</small></h1>
        <hr>
        <h5 class="mt-5">Seleziona il numero di persone</h5>
        <div class="row mt-4">
            <% for(int i=1; i<=4; i++){ %>
            <div class="col">
                <div class="d-grid">
                    <a href="nomi.jsp?persone=<%=i%>" class="btn btn-primary py-4 fs-2"><%=i%></a>
                </div>
            </div>
            <% } %>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
