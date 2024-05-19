<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catalog-Z Bootstrap 5.0 HTML Template</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="fontawesome/css/all.min.css">
    <link rel="stylesheet" href="css/templatemo-style.css">
<!--
    
TemplateMo 556 Catalog-Z

https://templatemo.com/tm-556-catalog-z

-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!-- Page Loader -->
    <div id="loader-wrapper">
        <div id="loader"></div>

        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>

    </div>
    <nav class="navbar navbar-expand-lg" style="background-color: #d1d6db;">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <i class="fas fa-shoe-prints mr-2"></i>
                THE SHOEBOX
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto mb-2 mb-lg-0">
               <li class="nav-item">
                    <a class="nav-link nav-link-1 active" aria-current="page" href="home.aspx">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link nav-link-2" href="category.aspx">Category</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link nav-link-2" href="subcategory.aspx">Sub Category</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link nav-link-3" href="Product.aspx">Product</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link nav-link-4" href="registration.aspx">Registration</a>
                </li>
                        
                </ul>
            </div>
        </div>
    </nav>
    <div class="container " style="margin-left: 50px;margin-bottom: 150px">
			 <p style="margin-left: 10px;margin-top: 150px;margin-bottom: 150px;text-align: center;" class="alert alert-success">
    </p>
    			<asp:Label ID="Label2" runat="server" Font-Size="29pt" Text="Welcome to Admin Panel" 
            Font-Bold="True"></asp:Label>
<br />
<br />
    </div>
    </div>
     <footer class="tm-bg-gray pt-5 pb-3 tm-text-gray tm-footer" style="background-color: #d1d6db;">
        <div class="container-fluid tm-container-small1">
            <div class="row">
                <div class="col-lg-3 col-md-12 col-12 px-5 mb-5">
                    <h3 class="tm-text-primary mb-4 tm-footer-title">THE SHOEBOX</h3>
                    <p style="color: black;">
                    We are largest shoes selling company in india, we provide all types of the shoes for girls,Boys,kids 
                    </p>
                   </div>
                   
                     <div class="col-lg-3 col-md-6 col-sm-6 col-12 px-5 mb-5">
                    <h3 class="tm-text-primary mb-4 tm-footer-title">contactinformation</h3>
                  <p class="lead">shoebox12@gmail.com </p>
                    <p class="lead"> 123 street,BOMBAY</p>
                    <p class="lead">90905050</p>
                    </div>
                   
                <div class="col-lg-3 col-md-6 col-sm-6 col-12 px-5 mb-5">
                    <h3 class="tm-text-primary mb-4 tm-footer-title">Our Links</h3>
                    <ul class="tm-footer-links pl-0">
                        <li><a href="#">Advertise</a></li>
                        <li><a href="#">Support</a></li>
                        <li><a href="#">Our Company</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-12 px-5 mb-5">
                    <ul class="tm-social-links d-flex justify-content-start pl-0 mb-5">
                        <li class="mb-2"><a href="https://facebook.com"><i class="fab fa-facebook"></i></a></li>
                        <li class="mb-2"><a href="https://twitter.com"><i class="fab fa-twitter"></i></a></li>
                        <li class="mb-2"><a href="https://instagram.com"><i class="fab fa-instagram"></i></a></li>
                        <li class="mb-2"><a href="https://pinterest.com"><i class="fab fa-pinterest"></i></a></li>
                    </ul>
                    <a href="#" class="tm-text-gray text-right1 d-block mb-2" style="color: black;">Terms of Use</a>
                    <a href="#" class="tm-text-gray text-right1 d-block" style="color: black;">Privacy Policy</a>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-md-7 col-12 px-5 mb-3" style="color: black;">
                    Copyright 2020 SHOEBOX Company. All rights reserved.
                </div>
                </div>
            </div>
    
    </footer>
    
        $(window).on("load", function() {
            $('body').addClass('loaded');
        });

    </form>
</body>
</html>