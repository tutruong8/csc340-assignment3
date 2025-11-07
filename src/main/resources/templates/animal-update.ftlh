<!--New Animal Form screen for Animal Showcase web app-->
<!DOCTYPE html>
<html lang="en">

<!--New Animal Form of html for home page. Imports Bootstrap 5.3.8 CSS and local style.css-->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <title>Update Animal Form</title>
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
                <a class="nav-link active" href="animal-list.ftlh">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" aria-current="page" href="/animal/createForm">Add Animal</a>
            </li>
        </ul>
    </ul>
  </div>
</nav>

  <!--Update Animal Form with inputs-->>
    <form id="new-animal" action="/animal/${animal.animalId}" method="post">
      <div class="form-group">
        <label for="animalID">Animal ID</label>
        <input type="text" class="form-control" id="animalid" aria-describedby="idHelp" name="animalid" value="${animal.animalId}" placeholder="Enter Animal ID">
        <small id="idHelp" class="form-text text-muted">What is the ID of the animal?</small>
      </div>
      <div class="form-group">
        <label for="animalName">Animal Name</label>
        <input type="text" class="form-control" id="name" aria-describedby="nameHelp" name="name" value="${animal.name}" placeholder="Enter Animal Name">
        <small id="nameHelp" class="form-text text-muted">What is the name of the animal?</small>
      </div>
      <div class="form-group">
        <label for="animalSummary">Animal Summary</label>
        <input type="text" class="form-control" id="description" aria-describedby="summaryHelp" name="description" value="${animal.description}" placeholder="Enter Animal Summary">
        <small id="summaryHelp" class="form-text text-muted">Enter a brief summary for the animal.</small>
      </div>
      <div class="form-group">
        <label for="animalDetails">Animal Species</label>
        <input type="text" class="form-control" id="species" aria-describedby="speciesHelp" name="species" value="${animal.species}" placeholder="Enter Animal Species">
        <small id="speciesHelp" class="form-text text-muted">Enter animal species.</small>
      </div>
      <div class="form-group">
        <label for="animalDetails">Animal Status</label>
        <input type="text" class="form-control" id="status" aria-describedby="statusHelp" name="status" value="${animal.status}" placeholder="Enter Animal Status">
        <small id="statusHelp" class="form-text text-muted">Enter animal status.</small>
      </div>
      <div class="form-group">
        <label for="animalImage">Animal Image</label>
        <input type="text" class="form-control" id="image" aria-describedby="imageHelp" name="image" value="${animal.image}" placeholder="Enter URL of image of Animal">
        <small id="imageHelp" class="form-text text-muted">Enter a URL of the image of the animal you want to add.</small>
      </div>
      <button type="submit" class="btn btn-primary">Submit</button>
      <a href="/animal/delete/${animal.animalId}" class="btn btn-danger">Delete</a>
  </form>

  <!--Imports Bootstrap 5.3.8 JS-->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>

</html>