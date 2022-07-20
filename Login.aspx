<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Mahder_.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MAHDER - Ethiopian Businesses Info Directory</title>
    <link href="~/src/css/common.css" rel="stylesheet" />
    <link href="~/src/css/nav.css" rel="stylesheet" />
    <link href="~/src/css/login.css" rel="stylesheet" />
    <link href="~/src/css/footer.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" />

    <style type="text/css">
        #profilePicture {
            width: 199px;
        }

        #about {
            width: 268px;
        }
    </style>
</head>

<body>
    <!-- #include file="~/templates/nav.html" -->

    <section class="container_s" runat="server">
        <div class="div_mp box_left">
            <img src="./src/img/ph.gif" alt="Coming soon" width="85%" />
        </div>

        <div id="signin" class="div_mp box_right login-back">

            <div class="login-box">
                <div class="lb-header">
                    <a href="#" class="active" id="login-box-link">Login</a>
                    <a href="#" id="signup-box-link">Sign Up</a>
                </div>
                <div class="social-login">
                    <a href="#" class="custom-btn btn-5 btn-flt-rt social-login-btn">
                        <i class="fa fa-facebook fa-lg"></i>
                        Login in with facebook
                    </a>
                    <a href="#" class="custom-btn btn-5 btn-flt-rt social-login-btn">
                        <i class="fa fa-google-plus fa-lg"></i>
                        log in with Google
                    </a>
                </div>
                <form class="email-login">
                    <div class="u-form-group">
                        <input type="email" placeholder="Email" class="inp_f" />
                    </div>
                    <div class="u-form-group">
                        <input type="password" placeholder="Password" class="inp_f" />
                    </div>
                    <div class="u-form-group">
                        <button class="custom-btn btn-5 btn-flt-rt">Log in</button>
                    </div>
                    <div class="u-form-group">
                        <a href="#" class="forgot-password">Forgot password?</a>
                    </div>
                </form>
                <form class="email-signup">
                    <div class="u-form-group">
                        <input type="email" placeholder="Name" class="inp_f" />
                    </div>
                    <div class="u-form-group">
                        <input type="email" placeholder="Email" class="inp_f" />
                    </div>
                    <div class="u-form-group">
                        <input type="password" placeholder="Password" class="inp_f" />
                    </div>
                    <div class="u-form-group">
                        <input type="password" placeholder="Confirm Password" class="inp_f" />
                    </div>
                    <div class="u-form-group">
                        <button class="custom-btn btn-5 btn-flt-rt">Sign Up</button>
                    </div>
                </form>
            </div>
        </div>
    </section>



    <!-- #include file="~/templates/footer.html" -->

    <script src="./src/js/nav.js"></script>
    <script src="./src/js/login.js"></script>

</body>
</html>
