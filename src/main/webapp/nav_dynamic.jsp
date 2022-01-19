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
<body onscroll="navbarstate()">
<!--Navigation Bar-->
    <nav class="navbar1 navbar-expand-sm fixed-top  navbar-dark">

        <div id="navcon1" class="container-fluid  dark1 cf1">
          <div class="row">
            <div class="col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4 col-xxl-4"></div>
            <div class="col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4 col-xxl-4"></div>
            <div class="col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4 col-xxl-4">
              <div class="row">
                <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 col-xxl-6"></div>
                <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 col-xxl-6">
                  <div class="row">
                    <div class="col"></div>
                  </div>
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
                <button id="btn_bn_nav" class="btn_bn_nav" onclick="openform()">BOOK NOW</button>
              </div>
              </div>
            </div>
          </div>
        </div>
          
        <div id="navcon2" class="container-fluid dark2">
          
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
      <!--Book Now Form-->
      <div id="bnform_cf" class="container-fluid bnform_cf">
        <form action="">
        <div class="row">
          <div class="col-12 col-sm-12 col-md-12 col-lg-4 col-xl-4 col-xxl-4"></div>
          <div class="col-12 col-sm-12 col-md-12 col-lg-4 col-xl-4 col-xxl-4"></div>
          <div class="col-12 col-sm-12 col-md-12 col-lg-4 col-xl-4 col-xxl-4">
            <div class="row bnform_r1">
              <div class="col-12"></div>
              <div class="col-12">
                <a href="" class="bnform_close"><h2 id="close_bnform" onclick="closeform()">X</h2></a>
              </div>
              <div class="col-12"></div>
            </div>
            <div class="row bnform_r2">
              <div id="Checkin" class="col-12">
                <h4>XYZ Hotel Galle</h4>
                <hr>
              </div>
            </div>
            <div class="row bnform_r3">
              <div class="col-6">
                <h6>Check In</h6>
                <div class="container bnform_datep">
                  <input type="date" id="checkin" onselect="oncheckout()">
                </div>
              </div>
              <div class="col-6 ">
                <h6>Check Out</h6>
                <div class="container bnform_datep">
                  <input type="date" id="checkout">
                </div>
              </div>
              <div class="col-12">
                <hr>
              </div>
            </div>
            <div class="row bnform_r4">
              <div class="col-8">
                <h6>ROOMS</h6>
              </div>
              <div class="col-4">
                <div class="row">
                  <div class="col">
                    <a id="roomsbtnp" onclick="plus('roomstxt')"><p>+</p></a>
                  </div>
                  <div class="col">
                    <input type="text" id="roomstxt" class=" roomstxt" value="0">
                  </div>
                  <div class="col">
                    <a id="roomsbtnr" onclick="minus('roomstxt')"><p>-</p></a>
                  </div>
                </div>
              </div>
              <hr>
              <div class="col-8">
                <h6>AUDLTES</h6>
              </div>
              <div class="col-4">
                <div class="row">
                  <div class="col">
                    <a id="audltesbtnp" onclick="plus('audltestxt')"><p>+</p></a>
                  </div>
                  <div class="col">
                    <input type="text" id="audltestxt" class="roomstxt" value="0">
                  </div>
                  <div class="col">
                    <a id="audltesbtnr" onclick="minus('audltestxt')"><p>-</p></a>
                  </div>
                </div>
              </div>
              <hr>
              <div class="col-8">
                <h6>CHILDREN</h6>
              </div>
              <div class="col-4">
                <div class="row">
                  <div class="col">
                    <a id="childrenbtnp" onclick="plus('childrentxt')"><p>+</p></a>
                  </div>
                  <div class="col">
                    <input type="text" id="childrentxt" class="roomstxt" value="0">
                  </div>
                  <div class="col">
                    <a id="childrenbtnr" onclick="minus('childrentxt')"><p>-</p></a>
                  </div>
                </div>
              </div>
              <hr>
              <div class="col-8">
                <h6>HALLS</h6>
              </div>
              <div class="col-4 ">
                <div class="row">
                  <div class="col">
                    <input id="hallscb" class="form-check-input" type="checkbox" id="halls" name="halls" value="something" >
                  </div>
                </div>
              </div>
              <hr>
              <div class="col-8">
                <h6>MY DATES ARE FLEXIBLE</h6>
              </div>
              <div class="col-4">
                <div class="row">
                  <div class="col">
                    <input class="form-check-input" type="checkbox" id="mdaf" name="mdaf" value="something" >
                  </div>
                </div>
              </div>
              <hr>
              <div class="col-12">
                <button class="btn_bn_nav">BOOK NOW</button>
              </div>
            </div>
          </div>
        </div>
        </form>  
        </div>
      <script>
        window.onscroll = function(){navbarscrollstate()};
        function navbarscrollstate() {
        if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
          document.getElementById("navcon1").classList.add("bg_gray");
          document.getElementById("navcon2").classList.add("bg_gray");
          document.getElementById("navcon2").classList.remove("dark1");
          document.getElementById("navcon2").classList.remove("dark2");
        } else {
          document.getElementById("navcon1").classList.remove("bg_gray");
          document.getElementById("navcon2").classList.remove("bg_gray");
          document.getElementById("navcon2").classList.add("dark1");
          document.getElementById("navcon2").classList.add("dark2");
        }
      }
      </script>

      <script>
        var date = new Date();
        var tdate = date.getDate();
        var month = date.getMonth() + 1;
        if(tdate<10){
        tdate = '0' + tdate;
        }
        if(month<10){
        month = '0' + month;
        }
        var year=date.getUTCFullYear();
        var minDate = year + "-" + month + "-" + tdate;
        document.getElementById("checkin").setAttribute('min',minDate);
        document.getElementById("checkout").setAttribute('min',minDate);
        
      </script>

</body>
</html>