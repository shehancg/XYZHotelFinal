<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>

    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

    <link rel="stylesheet" href="CSS/nav.css">
    <script src="Js/nav.js"></script>
</head>
<body>
    <!--Navigation Bar-->
<nav class="navbar1 navbar-expand-sm fixed-top navbar-dark">

    <div id="navcon1" class="container-fluid  bg_gray cf1">
      
      <div class="row">
        <div class="col-4">
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
          </button>
        </div>
        <div class="col-4">
          <a class="navbar-brand" href="#">XYZ Hotel</a>
        </div>
        <div class="col-4">
          <div class="row">
          <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 col-xxl-6"></div>
          <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 col-xxl-6">
            <div class="row">
              <div class="col lg_nv">
                <a href="#" class="lg" >
                  <div class="row" data-bs-toggle="modal" data-bs-target="#myModal">
                    <div class="col-3"><img src="SVG_icons/profile.svg"></div>
                    <div class="col-9"><p>1stName</p></div>
                  </div></a>
              </div>
              <div class="col sp_nv">
                <a href="#" class="sp" >
                <div class="row" >
                  <div class="col-9"><p>LOG OUT</p></div>
                  <div class="col-3"><img src="SVG_icons/login.svg"></div>
                </div>
                </a>
              </div>
              
            </div>
          </div>
          </div>
        </div>
      </div>
    </div>
      
    <div id="navcon2" class="container-fluid bg_gray">
      
      <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <div id="sub_nav" class="container " style="display: flex; justify-content: center;">
            <ul class="navbar-nav ">
              <li class="nav-item">
                <a class="nav-link" href="#">ROOMS</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">DINING</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">FESTIVE</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">SPA</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">MEETING</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">WEDDINGS</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">CONTACT</a>
              </li>
            </ul>
        </div>
      </div>
    </div>
    
  </nav>

</body>
</html>