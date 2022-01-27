<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="CSS/home.css">
    <link rel="stylesheet" href="CSS/nav.css">
    <script src="Js/nav.js"></script>
    <title>CUSTOMER</title>
    
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
                  <a onclick="" href="mybookings.jsp" class="lg" >
                    <div class="row" data-bs-toggle="modal" data-bs-target="#myModal">
                      <div class="col-3"><img src="SVG_icons/profile.svg"></div>
                      <div class="col-9"><p style="text-transform:uppercase"> ${fName}</p></div>
                    </div></a>
                </div>
                <div class="col sp_nv">
                  <a href="/" class="sp" >
                  <div class="row" >
                    <div class="col-9"><p>LOGOUT</p></div>
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
            <a class="bnform_close"><h2 id="close_bnform" onclick="closeform()">X</h2></a>
          </div>
          <div class="col-12"></div>
        </div>
        <div class="row bnform_r2">
          <div id="logo" class="col-12">
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
            <h6>AUDLTS</h6>
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
<%--          <div class="col-8">--%>
<%--            <h6>HALLS</h6>--%>
<%--          </div>--%>
<%--          <div class="col-4 ">--%>
<%--            <div class="row">--%>
<%--              <div class="col">--%>
<%--                <input id="hallscb" class="form-check-input" type="checkbox" id="halls" name="halls" value="something" >--%>
<%--              </div>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--          <hr>--%>
<%--          <div class="col-8">--%>
<%--            <h6>MY DATES ARE FLEXIBLE</h6>--%>
<%--          </div>--%>
<%--          <div class="col-4">--%>
<%--            <div class="row">--%>
<%--              <div class="col">--%>
<%--                <input class="form-check-input" type="checkbox" id="mdaf" name="mdaf" value="something" onclick="return yousendit();" >--%>
<%--                <!-- REDIRECTING TO HOTEL&DATESPAGE -->--%>
<%--                <!-- <script>--%>
<%--                  function yousendit(){--%>
<%--                      if(document.getElementById('yousendit').checked){--%>
<%--                          window.location='file:///B:/OneDrive%20-%20NSBM/Iscole%20Wada/SEMESTER%204/SE%202/xyzhotel%20docs/WEB/Hotel&Dates.html';--%>
<%--                          return false;--%>
<%--                      }--%>
<%--                      return true;--%>
<%--                  --%>
<%--                  }--%>
<%--                  </script> -->--%>
<%--              </div>--%>
<%--            </div>--%>
<%--          </div>--%>
          <hr>
          <div class="col-12">
            <button class="btn_bn_nav"><a href="/availabledates">BOOK NOW</a></button>
          </div>
        </div>
      </div>
    </div>
    </form>  
    </div>
    <!--webpage content-->
    <!--hero-->
    <div class="container-fluid videodiv">
      
      <div class="row">
        <div class="w-100" >
          <video playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop">
            <source src="Video/bg_video.mp4" type="video/mp4">
          </video>
        </div>
      </div>
    </div>

    <!--section 1-->
    <div class="container-fluid bg1 section1">
      <div class="container">
        <div class="row s1r1">
          <div class="col-12">
            <h1 class="s1h1">A TROPICAL SANCTUARY OVERLOOKING THE INDIAN OCEAN</h1>
          </div>
        </div>
        <div class="row">
          <div class="col-12 col-sm-12 col-md-12 col-lg-5 col-xl-5 col-xxl-5">
            <img class="float-start img-fluid s1img1" src="Image/img1.jpg">
          </div>
          <div class="col-12 col-sm-12 col-md-12 col-lg-7 col-xl-7 col-xxl-7">
            <p>
              XYZ Galle Resort sits on a rocky outcrop on the southern coast of Sri Lanka near the old fort town of Tangalle. Golden-hued beach fringed by coconut palms overlooks the roaring Indian Ocean.
            <br><br><br>
            Explore the island's rainforests, pilgrimage sites and fishing ports. Dine cliffside, embark on surf adventures, or retreat to the sanctuary of Anantara Spa with award-winning Ayurvedic treatments.
            </p>
          </div>
          <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 col-xxl-6">
            <ul>
              <li>152 rooms and pool villas</li>
              <li>2.5-hour drive from Bandaranaike International Airport</li>
              <li>Ayurvedic treatments at Anantara Spa</li>
              <li>Spectacular cliffside dining</li>
              <li>Access to historical, natural and cultural highlights</li>
            </ul>
          </div>
          <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 col-xxl-6">
            <div class="ta">
              <h5 class="s1h5">TRAVEL ADVISORY</h5>
              <p>XYZ Galle Resort is a certified ‘Safe and Secure’ hotel.We look forward to welcoming you very soon. In the interests of protectingthe health and safety of all our guests, please see our booking requirementson the following link.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--Section 2-->
    <div class="container-fluid section2">
      <div class="container">
        <div class="row">
          <h6 class="s2h6">ACCOMMODATION</h6>
          <h1 class="s2h1">HERITAGE AND CHARM BY THE SEA</h1>
        </div>
        <div class="row">
          <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 col-xxl-6">

            <!-- Carousel -->
            <div id="demo" class="carousel slide" data-bs-ride="carousel">
              
            <!-- Indicators/dots -->
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
              <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
              <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
            </div>
            
            <!-- The slideshow/carousel -->
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="Image/room1.jpg" alt="room1" class="d-block w-100">
              </div>
              <div class="carousel-item">
                <img src="Image/1111.webp" alt="Chicago" class="d-block w-100">
              </div>
              <div class="carousel-item">
                <img src="Image/wedding1.jpg" alt="New York" class="d-block w-100">
              </div>
            </div>
            
            <!-- Left and right controls/icons -->
            <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
              <span class="carousel-control-prev-icon"></span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
              <span class="carousel-control-next-icon"></span>
            </button>
          </div>
          </div>

          <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 col-xxl-6">
            <p>
              Rooms
              <br>
              Choose your setting, garden with the beach beyond or overlooking the Indian Ocean. Sri Lankan motifs enhance light, airy spaces of contemporary comforts and signature Anantara amenities.
              <br>
              <ul>
                <li>56 – 60 sqm</li>
                <li>Balcony or terrace</li>
                <li>Rain shower and separate bathtub</li>
              </ul>

            </p>
          </div>
        </div>
      </div>
    </div>
    <!--img-->
    <div class="container-fluid">
      <div class="row imgsigiriya">
        <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 col-xxl-6"></div>
        <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 col-xxl-6 imgsigiriya_text">
          <h1>SOARING OVER SRI LANKA.</h1>
          <h6>Experience the island's beauty with XYZ hotel.</h6>
        </div>
      </div>
    </div>
    <!--Section 3-->
    <div class="container-fluid section3">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <h5 class="s3h5" >WEDDINGS</h5>
            <H1 class="s3h1" >OCEAN ROMANCE</H1>
          </div>
        </div>
        <div class="row">
          <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 col-xxl-6">
            <img class="float-start img-fluid" src="Image/wedding1.jpg">
          </div>
          <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 col-xxl-6">
            <p>
              Embark on a destination wedding of dreams at one of the most exclusive wedding venues in Sri Lanka.
              <br><br>
              Exchange vows on a cliffside overlooking the Indian Ocean. Celebrate afterwards with banqueting under open skies or contemporary yet 
              rustic domes. A beautiful coastal setting is your backdrop, to be enriched by details of your choice. Let our dedicated wedding planner conjure up your perfect day. 
            </p>
          </div>
        </div>
      </div>
    </div>
    <!--Section 5-->
    <div class="container-fluid bg1 section4">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <h5 class="s4h5">LOCATION</h5>
            <h1 class="s4h1">UNCOVER SRI LANKA'S HEART BEAT</h1>
          </div>
        </div>
        <div class="row">
          <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 col-xxl-6">
            <div class="mapouter"><div class="gmap_canvas"><iframe width="600" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=xyz%20hotel&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.embedgooglemap.net/blog/divi-discount-code-elegant-themes-coupon/">divi discount</a><br><style>.mapouter{position:relative;text-align:right;height:500px;width:600px;}</style><a href="https://www.embedgooglemap.net">custom google map for website</a><style>.gmap_canvas {overflow:hidden;background:none!important;height:400px;width:500px;}</style></div></div>
          </div>
          <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 col-xxl-6">
            <p>
              Anantara Peace Haven Tangalle Resort
  
              Goyambokka Estate, Tangalle
              
            </p>
          </div>
        </div>
      </div>
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