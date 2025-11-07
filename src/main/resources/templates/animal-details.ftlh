<!--Details screen for Animal Showcase web app-->
<!DOCTYPE html>
<html lang="en">

<!--Header of html for details page. Imports Bootstrap 5.3.8 CSS and local style.css-->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Details</title>
</head>

<body>
<!--All elements are stylized by Bootstrap 5.3.8, with some image editing from the style.css-->

<!--Navbar-->
  <nav class="navbar navbar-expand-lg bg-dark border-bottom border-body" data-bs-theme="dark">
  <a class="navbar-brand" href="#">Travis's Animal Showcase</a>
  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav mr-auto">
        <ul class="nav nav-underline">
            <li class="nav-item">
                <a class="nav-link active" href="/animal">Animal List</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/animal/createForm">Add Animal</a>
            </li>
        </ul>
    </ul>
  </div>
</nav>

  <!--Animals showcased in cards. They have a URL image attached, a heading for the animal name, and a more detailed summary of each animal.-->
    <ul class="nav justify-content-center">
    <li>
        <div class="card" style="width: 18rem;">
          <img class="card-img-top" src=${animal.image} alt="Red Panda">
          <div class="card-body">
          <h2">${animal.name}</h2>
          <p class="card-text">
            <b>Species:</b> ${animal.species}
          </p>
          <p class="card-text">
            <b>Status:</b> ${animal.status}
          </p>
          <p class="card-text">
            ${animal.description}
          </p>
          <a href="/animal/updateForm/${animal.animalId}" class="btn btn-primary">Update</a>
          </div>
        </div>
    </li>
    </ul>

    <!--Imports Bootstrap 5.3.8 JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>

</html>