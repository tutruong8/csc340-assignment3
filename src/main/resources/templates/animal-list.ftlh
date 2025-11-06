<!--Home screen for Animal Showcase web app-->
<!DOCTYPE html>
<html lang="en">

<!--Header of html for home page. Imports Bootstrap 5.3.8 CSS and local style.css-->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Home</title>
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
                <a class="nav-link active" aria-current="page" href="index.html">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="details.html">Details</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="update-animal-form.html">Update Animal</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="new-animal-form.html">Add Animal</a>
            </li>
        </ul>
    </ul>
  </div>
</nav>

<!--Search Bar-->
    <form class="form-inline my-2 my-lg-0">
      <input id="input" class="form-control mr-sm-2" type="search" onkeyup="searchBar()" placeholder="Search" aria-label="Search">
    </form>

<!--Animals showcased in cards. They have a URL image attached, a heading for the animal name, a small summary, and a button that leads them to the details page-->
    <ul id= "animalList" class="nav justify-content-center">
    <li>
        <div class="card" style="width: 18rem;">
            <img class="card-img-top" src="https://geographical.co.uk/wp-content/uploads/panda1200-1.jpg" alt="Card image cap">
            <div class="card-body">
            <h5 class="card-title">Red Panda</h5>
            <p class="card-text">A agile and smaller type of Panda</p>
            <a href="details.html#red panda" class="btn btn-primary">View Details</a>
            </div>
        </div>
    </li>
    <li>
        <div class="card" style="width: 18rem;">
            <img class="card-img-top" src="https://media.wired.com/photos/65e843205d34b6d79fd07761/master/w_1600%2Cc_limit/GettyImages-594359398.jpg" alt="Card image cap">
            <div class="card-body">
            <h5 class="card-title">Giant Panda</h5>
            <p class="card-text">A bigger, more bamboo loving, Panda</p>
            <a href="details.html#giant panda" class="btn btn-primary">View Details</a>
            </div>
        </div>
    </li>
    <li>
        <div class="card" style="width: 18rem;">
            <img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_HeeGnGbXC_YH5k0ewm150vD-JNp-IrMELo818mPlbTQMVmhaanU9JMTemfKdkiF0jac&usqp=CAU" alt="Card image cap">
            <div class="card-body">
            <h5 class="card-title">Shiba Inu</h5>
            <p class="card-text">The smallest Japanese dog breed</p>
            <a href="details.html#shiba inu" class="btn btn-primary">View Details</a>
            </div>
        </div>
    </li> 
    <li>
        <div class="card" style="width: 18rem;">
            <img class="card-img-top" src="https://i.ytimg.com/vi/ZatXH93eb34/maxresdefault.jpg" alt="Card image cap">
            <div class="card-body">
            <h5 class="card-title">Tuxedo Cat</h5>
            <p class="card-text">One of many bicolored cat combinations</p>
            <a href="details.html#tuxedo cat" class="btn btn-primary">View Details</a>
            </div>
        </div>
    </li> 
    <li> 
        <div class="card" style="width: 18rem;">
            <img class="card-img-top" src="https://i.redd.it/mr7zp4nicbd41.jpg" alt="Card image cap">
            <div class="card-body">
            <h5 class="card-title">Inland Taipan</h5>
            <p class="card-text">The most poisoneous snake on Earth</p>
            <a href="details.html#inland taipan" class="btn btn-primary">View Details</a>
            </div>
        </div>
    </li>
    </ul>

    <!--Enables search bar functionality.-->
    <script type="text/javascript">
        function searchBar() {
            var input,ul,li,h5,i,txtValue;
            input = document.getElementById("input")
            filter = input.value.toUpperCase();
            ul = document.getElementById("animalList")
            li = ul.getElementsByTagName("li")
            for(i=0; i<li.length; i++){
                h5 = li[i].getElementsByTagName("h5")[0];
                txtValue = h5.textContent || h5.innerText;
                if(txtValue.toUpperCase().indexOf(filter)>-1){
                    li[i].style.display="";
                } else{
                    li[i].style.display="none"
                }
            }
        }
    </script>
    
    <!--Imports Bootstrap 5.3.8 JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>

</html>