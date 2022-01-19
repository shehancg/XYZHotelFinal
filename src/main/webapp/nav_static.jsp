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
              <form action="" class="needs-validation">
              <div class="form-floating mb-3 mt-3">
                <input type="text" class="form-control" id="email" placeholder="Enter email" name="email" required>
                <label for="email">Email</label>
                <div class="valid-feedback">Valid.</div>
                <div class="invalid-feedback">Please fill out this field.</div>
              </div>
              
              <div class="form-floating mt-3 mb-3">
                <input type="text" class="form-control" id="pwd" placeholder="Enter password" name="pswd" required>
                <label for="pwd">Password</label>
                <div class="valid-feedback">Valid.</div>
                <div class="invalid-feedback">Please fill out this field.</div>
              </div>
              <input type="submit" class="form-control lgform_s_btn" name="formLogin" value="Login">
            </form>
            </div>
            <!--Sign up form-->
            <div id="form_ca" class="container-fluid form_ca">
              <form action="" class="needs-validation">
                <div class="form-floating mb-3 mt-3">
                  <select class="form-select" id="sel1" name="sellist">
                    <option>Mr.</option>
                    <option>Ms.</option>
                    <option>Miss.</option>
                    <option>Mrs.</option>
                  </select>
                  <label for="sel1" class="form-label">Title:</label>
                </div>
                <div class="mb-3 mt-3">
                  <input type="text" class="form-control" id="fname" placeholder="First Name" name="fname" required>
                  <div class="valid-feedback">Valid.</div>
                  <div class="invalid-feedback">Please fill out this field.</div>
                </div>
                <div class="mb-3 mt-3">
                  <input type="text" class="form-control" id="lname" placeholder="Last Name" name="lname" required>
                  <div class="valid-feedback">Valid.</div>
                  <div class="invalid-feedback">Please fill out this field.</div>
                </div>
                <div class=" mb-3 mt-3">
                  <input type="text" class="form-control" id="email" placeholder="Email" name="email" required>
                  <div class="valid-feedback">Valid.</div>
                  <div class="invalid-feedback">Please fill out this field.</div>
                </div>
                <div class=" mb-3 mt-3">
                  <input type="text" class="form-control" id="pno" placeholder="Phone Number" name="pno" required>
                  <div class="valid-feedback">Valid.</div>
                  <div class="invalid-feedback">Please fill out this field.</div>
                </div>
                <div class=" mb-3 mt-3">
                  <input type="text" class="form-control" id="pw" placeholder="Password" name="pw" required>
                  <div class="valid-feedback">Valid.</div>
                  <div class="invalid-feedback">Please fill out this field.</div>
                </div>
                <div class=" mb-3 mt-3">
                  <input type="text" class="form-control" id="cpw" placeholder="Confirm Password" name="cpw" required>
                  <div class="valid-feedback">Valid.</div>
                  <div class="invalid-feedback">Please fill out this field.</div>
                </div>
                <div class=" mb-3 mt-3">
                  <input type="text" class="form-control" id="cofr" placeholder="Country of Residence*" name="cofr" required>
                  <div class="valid-feedback">Valid.</div>
                  <div class="invalid-feedback">Please fill out this field.</div>
                </div>
                <div class=" mb-3 mt-3">
                  <input type="text" class="form-control" id="cfr" placeholder="City of Residence*" name="cfr" required>
                  <div class="valid-feedback">Valid.</div>
                  <div class="invalid-feedback">Please fill out this field.</div>
                </div>
                <div class=" mb-3 mt-3">
                  <input type="text" class="form-control" id="pc" placeholder="Postal Code" name="pc" required>
                  <div class="valid-feedback">Valid.</div>
                  <div class="invalid-feedback">Please fill out this field.</div>
                </div>
                <input type="submit" class="form-control caform_s_btn" name="formca" value="Create a new Account">
              </form>
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