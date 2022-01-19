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
    <title>WELCOME</title>
    <script src="Js/nav.js"></script>


</head>
<body>
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
                        <div class="col-3"><img src="SVG_icons/login.svg"></div>
                        <div class="col-9"><p>LOG IN</p></div>
                      </div></a>
                  </div>
                  <div class="col sp_nv">
                    <a href="#" class="sp" >
                    <div class="row" data-bs-toggle="modal" data-bs-target="#myModal">
                      <div class="col-3"><img src="SVG_icons/signup.svg"></div>
                      <div class="col-9"><p>SIGN UP</p></div>
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
              <button id="btn_bn_nav" class="btn_bn_nav" data-bs-toggle="modal" data-bs-target="#myModal">BOOK NOW</button>
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
    <!--Login modal popup-->
    <!-- The Modal -->
    <div class="modal" id="myModal">
      <div class="modal-dialog">
        <div class="modal-content">
          
          <!-- Modal Header -->
          <div class="modal-header">
            <div class="container-fluid">
              <div class="row lgca_form_r1">
                <div id="lg_btn_col_mh" class="col-6 lg_btn_col_mh lg_btn_col_mh2" onclick="enablelg()">
                  <button id="lg_btn_mh" type="button" class="btn lg_btn_mh lg_btn_mh2" >LOG IN</button>
                </div>
                <div id="sp_btn_col_mh" class="col-6 sp_btn_col_mh2" onclick="enablesp()">
                  <button id="sp_btn_mh" type="button" class="btn ca_btn_mh2" >SIGN UP</button>
                </div>
                <div class="col-1 lgsp_form_close_col">
                  <button type="button" class="btn-close lgsp_form_close_btn" data-bs-dismiss="modal"></button>
                </div>
              </div>
            </div>
          </div>
          
          <!-- Modal body -->
          <!--Log in form-->
          <div id="form_lg" class="container-fluid form_lg">
            <form action="/customerlogin" class="needs-validation" method="POST">
            <div class="form-floating mb-3 mt-3">
              <input type="text" class="form-control" id="loginemail" placeholder="Enter email" name="email" required>
              <label for="email">Email</label>
              <div class="valid-feedback">Valid.</div>
              <div class="invalid-feedback">Please fill out this field.</div>
            </div>
            
            <div class="form-floating mt-3 mb-3">
              <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password" required>
              <label for="pwd">Password</label>
              <div class="valid-feedback">Valid.</div>
              <div class="invalid-feedback">Please fill out this field.</div>
            </div>
            <input type="submit" class="form-control lgform_s_btn" name="formLogin" value="Login">
          </form>
          </div>
          <!--Sign up form-->
          <div id="form_ca" class="container-fluid form_ca">
            <form:form action="/reg" class="needs-validation" method="POST">
              <div class="mb-3 mt-3">
                <input type="text" class="form-control" id="fname" placeholder="First Name" name="fName" required>
                <div class="valid-feedback">Valid.</div>
                <div class="invalid-feedback">Please fill out this field.</div>
              </div>
              <div class="mb-3 mt-3">
                <input type="text" class="form-control" id="lname" placeholder="Last Name" name="lName" required>
                <div class="valid-feedback">Valid.</div>
                <div class="invalid-feedback">Please fill out this field.</div>
              </div>
              <div class=" mb-3 mt-3">
                <input type="email" class="form-control" id="email" placeholder="Email" name="email" required>
                <div class="valid-feedback">Valid.</div>
                <div class="invalid-feedback">Please fill out this field.</div>
              </div>
              <div class=" mb-3 mt-3">
                <input type="password" class="form-control" id="pw" placeholder="Enter Password" name="password" required>
                <div class="valid-feedback">Valid.</div>
                <div class="invalid-feedback">Please fill out this field.</div>
              </div>
              <div class=" mb-3 mt-3">
                <input type="number" class="form-control" id="pno" placeholder="Phone Number" name="phonenum" required>
                <div class="valid-feedback">Valid.</div>
                <div class="invalid-feedback">Please fill out this field.</div>
              </div>     
              <div class=" mb-3 mt-3">
                <select class="form-select needs-validation" id="country" placeholder="Enter Country" aria-describedby="validationServer04Feedback" required name="country">
                    <option selected disabled value="">Select Your Country</option>
                    <option value="Afganistan">Afghanistan</option>
                    <option value="Albania">Albania</option>
                    <option value="Algeria">Algeria</option>
                    <option value="American Samoa">American Samoa</option>
                    <option value="Andorra">Andorra</option>
                    <option value="Angola">Angola</option>
                    <option value="Anguilla">Anguilla</option>
                    <option value="Antigua & Barbuda">Antigua & Barbuda</option>
                    <option value="Argentina">Argentina</option>
                    <option value="Armenia">Armenia</option>
                    <option value="Aruba">Aruba</option>
                    <option value="Australia">Australia</option>
                    <option value="China">China</option>
                    <option value="Christmas Island">Christmas Island</option>
                    <option value="Cocos Island">Cocos Island</option>
                    <option value="Colombia">Colombia</option>
                    <option value="Comoros">Comoros</option>
                    <option value="Congo">Congo</option>
                    <option value="Cook Islands">Cook Islands</option>
                    <option value="Costa Rica">Costa Rica</option>
                    <option value="Cote DIvoire">Cote DIvoire</option>
                    <option value="Croatia">Croatia</option>
                    <option value="Cuba">Cuba</option>
                    <option value="Curaco">Curacao</option>
                    <option value="Cyprus">Cyprus</option>
                    <option value="Czech Republic">Czech Republic</option>
                    <option value="Denmark">Denmark</option>
                </select>
              </div>         
              <div class=" mb-3 mt-3">
                <input type="text" class="form-control" id="cfr" placeholder="City of Residence" name="city" required>
                <div class="valid-feedback">Valid.</div>
                <div class="invalid-feedback">Please fill out this field.</div>
              </div>
              <input type="submit" class="form-control caform_s_btn" name="formca" value="Create an Account">
            </form:form>
          </div>
        </div>
      </div>
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
                <li>60 sqm</li>
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
            <h6 class="s3h6" >WEDDINGS</h6>
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
            <h6 class="s4h6">LOCATION</h6>
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
</body>
</html>