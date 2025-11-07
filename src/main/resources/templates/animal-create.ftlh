<!--New Animal Form screen for Animal Showcase web app-->
<!DOCTYPE html>
<html lang="en">

<!--New Animal Form of html for home page. Imports Bootstrap 5.3.8 CSS and local style.css-->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <title>New Animal Form</title>
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
                <a class="nav-link" href="/animal">Animal List</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="/animal/createForm">Add Animal</a>
            </li>
        </ul>
    </ul>
  </div>
</nav>

  <!--New Animal Form with inputs-->>
    <form id="new-animal" action="/animal" method="post"">
      <div class="form-group">
        <label for="animalName">Animal Name</label>
        <input type="text" class="form-control" id="name" name="name" placeholder="Enter Animal Name">
      </div>
      <div class="form-group">
        <label for="animalSummary">Animal Summary</label>
        <input type="text" class="form-control" id="description" name="description" placeholder="Enter Animal Summary">
      </div>
      <div class="form-group">
        <label for="animalDetails">Animal Species</label>
        <input type="text" class="form-control" id="species" name="species" placeholder="Enter Animal Species">
      </div>
      <div class="form-group">
        <label for="animalDetails">Animal Status</label>
        <input type="text" class="form-control" id="status" name="status" placeholder="Enter Animal Status">
      </div>
      <div class="form-group">
        <label for="animalImage">Animal Image</label>
        <input type="text" class="form-control" id="image" name="image" placeholder="Enter URL of image of Animal">
      </div>
      <button type="submit" class="btn btn-primary">Submit</button>
  </form>

  <!--Imports Bootstrap 5.3.8 JS-->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>

</html>