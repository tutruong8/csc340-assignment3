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
                <a class="nav-link" href="index.html">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="details.html">Details</a>
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

  <!--Animals showcased in cards. They have a URL image attached, a heading for the animal name, and a more detailed summary of each animal.-->
    <ul class="nav justify-content-center">
    <li>
        <div class="card" style="width: 18rem;">
          <img class="card-img-top" src="https://geographical.co.uk/wp-content/uploads/panda1200-1.jpg" alt="Red Panda">
          <div class="card-body">
          <h2 id="red panda">Red Panda</h2>
          <p class="card-text">
            A animal that is (sadly) illegal to keep as a pet, these are commonly found in eastern Himalayas and southwestern China. These mammals are very agile and skillful and are smaller in size compared to a giant panda.
          </p>
          </div>
        </div>
    </li>
    <li>
        <div class="card" style="width: 18rem;">
          <img class="card-img-top" src=https://media.wired.com/photos/65e843205d34b6d79fd07761/master/w_1600%2Cc_limit/GettyImages-594359398.jpg alt="Giant Panda">
          <div class="card-body">
          <h2 id="giant panda">Giant Panda</h2>
          <p class="card-text">
            A once endangered species, thanks to conservation efforts, they are still vulnerable but no longer endangered. These mammals are mainly in China. Very recognizable with their black and white colors and bear features. Big fans of bamboo too.
          </p>
          </div>
        </div>  
    </li>
    <li>
        <div class="card" style="width: 18rem;">
          <img class="card-img-top" src=https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_HeeGnGbXC_YH5k0ewm150vD-JNp-IrMELo818mPlbTQMVmhaanU9JMTemfKdkiF0jac&usqp=CAU alt="Shiba Inu"> 
          <div class="card-body">
          <h2 id="shiba inu">Shiba Inu</h2>
          <p class="card-text">
            A popular dog from Japan that is very agile. Out of all the dog breeds from Japan, the Shiba Inu is considered to be the smallest. A albino Shiba Inu can be seen in Persona 3, with the dog party member Koromaru.
          </p>
          </div>
        </div> 
    </li> 
    <li>
        <div class="card" style="width: 18rem;">
          <img class="card-img-top" src=https://i.ytimg.com/vi/ZatXH93eb34/maxresdefault.jpg alt="Tuxedo Cat"> 
          <div class="card-body">
          <h2 id="tuxedo cat">Tuxedo Cat</h2>
          <p class="card-text">
            A bicolored cat that's black and white. These cats are playful, inteligent, and are very quick on their feet. Morgana from the game Persona 5 is based on this animal. 
          </p>
          </div>
        </div>  
    </li> 
    <li> 
        <div class="card" style="width: 18rem;">
          <img class="card-img-top" src=https://i.redd.it/mr7zp4nicbd41.jpg alt="Inland Taipan">
          <div class="card-body">
          <h2 id="inland taipan">Inland Taipan</h2>
          <p class="card-text">
            The most poisoneous snake on Earth, where one bite can kill you within 45 minutes! However, you wouldn't have to worry since they won't really target you unless you directly provoke them. They'll most likely avoid you if anything. This snake is in Austrailia.
          </div>
        </div>  
    </li>
    </ul>
    
    <!--Button that takes user back to home page-->
    <p>
    <a href="index.html"class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Go Back</a> 
    </p>

    <!--Imports Bootstrap 5.3.8 JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>

</html>