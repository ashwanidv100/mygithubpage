<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="Revide.UserLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/normalize.css" />
    <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src="js/index.js"></script>
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <meta name="google-signin-client_id" content="242561804985-ififnmfdl5ib3l9odb96on6vqhgqj4e3.apps.googleusercontent.com">
</head>
<body>
    <div id="fb-root">
    </div>
    <script>        
    function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.6";
            fjs.parentNode.insertBefore(js, fjs);
        } (document, 'script', 'facebook-jssdk'));</script>
    <form id="form1" runat="server">
    <asp:HiddenField ID="userNameFromFBGoogle" runat="server" />
    <asp:HiddenField ID="emailIDFromFBGoogle" runat="server" />
    <div>
        <div class="logmod">
            <div class="logmod__wrapper">
                <div class="logmod__container">
                    <ul class="logmod__tabs">
                        <li data-tabtar="lgm-2"><a href="#">Login</a></li>
                        <li data-tabtar="lgm-1"><a href="#">Sign Up</a></li>
                    </ul>
                    <div class="logmod__tab-wrapper">
                        <div class="logmod__tab lgm-1">
                            <div class="logmod__heading">
                                <span class="logmod__heading-subtitle">Enter your personal details <strong>to create
                                    an acount</strong></span>
                            </div>
                            <div class="logmod__form">
                            </div>
                            <div class="sminputs">
                                <div class="input full">
                                    <asp:TextBox ID="email" runat="server" class="string optional" type="email" placeholder="Email"></asp:TextBox>
                                </div>
                            </div>
                            <div class="sminputs">
                                <div class="input string optional">
                                    <asp:TextBox ID="password" runat="server" class="string optional" type="password"
                                        placeholder="Password"></asp:TextBox>
                                </div>
                                <div class="input string optional">
                                    <asp:TextBox ID="passwordRepeat" runat="server" class="string optional" type="password"
                                        placeholder="Repeat Password"></asp:TextBox>
                                </div>
                            </div>
                            <div class="simform__actions">
                                <asp:Button class="sumbit" ID="BtnSubmit" runat="server" OnClick="Button1_Click"
                                    Text="Sign Up" />
                            </div>
                        </div>
                    </div>
                    <div class="logmod__tab lgm-2">
                        <div class="logmod__heading">
                            <span class="logmod__heading-subtitle">Enter your email and password <strong>to sign
                                in</strong></span>
                        </div>
                        <div class="logmod__form">
                            <form accept-charset="utf-8" action="#" class="simform">
                            <div class="sminputs">
                                <div class="input full">
                                    <input class="string optional singininput" maxlength="255" id="user-email" placeholder="Email"
                                        type="email" size="50" />
                                </div>
                            </div>
                            <div class="sminputs">
                                <div class="input full">
                                    <input class="string optional singininput" maxlength="255" id="user-pw" placeholder="Password"
                                        type="password" size="50" />
                                </div>
                            </div>
                            <div class="simform__actions">
                                <asp:Button class="sumbit" ID="BtnSignIn" runat="server" OnClick="Button2_Click"
                                    Text="Sign in" />
                            </div>
                            </form>
                        </div>
                        <div>
                            <span id="OR">OR</span>
                        </div>
                        <div class="logmod__alter">
                            <div class="logmod__alter-container">
                                <asp:Button ID="btnLogin" runat="server" Text="Login with FaceBook" OnClick="Login" class="fblogin"/>
                                <div class="g-signin2 loginButton" data-onsuccess="onSignIn">
                                    <span id="text">Sign In</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
    <script>
        function onSignIn(googleUser) {
            var profile = googleUser.getBasicProfile();
            console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
            console.log('Name: ' + profile.getName());
            console.log('Image URL: ' + profile.getImageUrl());
            console.log('Email: ' + profile.getEmail());
            $('#<%= userNameFromFBGoogle.ClientID %>').val(profile.getName());
            $('#<%= emailIDFromFBGoogle.ClientID %>').val(profile.getEmail());
        }

        window.fbAsyncInit = function () {
            FB.init({
                appId: '1058520977576073',
                xfbml: true,
                version: 'v2.6'
            });
        };

        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) { return; }
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/en_US/sdk.js";
            fjs.parentNode.insertBefore(js, fjs);
        } (document, 'script', 'facebook-jssdk'));

        // This is called with the results from from FB.getLoginStatus().
        function statusChangeCallback(response) {
            console.log('statusChangeCallback');
            console.log(response);
            // The response object is returned with a status field that lets the
            // app know the current login status of the person.
            // Full docs on the response object can be found in the documentation
            // for FB.getLoginStatus().
            if (response.status === 'connected') {
                // Logged into your app and Facebook.
                testAPI();
            } else if (response.status === 'not_authorized') {
                // The person is logged into Facebook, but not your app.

            } else {
                // The person is not logged into Facebook, so we're not sure if
                // they are logged into this app or not.

            }
        }

        // This function is called when someone finishes with the Login
        // Button.  See the onlogin handler attached to it in the sample
        // code below.
        function checkLoginState() {
            FB.getLoginStatus(function (response) {
                statusChangeCallback(response);
            });
        }

        window.fbAsyncInit = function () {
            FB.init({
                appId: '1058520977576073',
                cookie: true,  // enable cookies to allow the server to access 
                // the session
                xfbml: true,  // parse social plugins on this page
                version: 'v2.5' // use graph api version 2.5
            });

            // Now that we've initialized the JavaScript SDK, we call 
            // FB.getLoginStatus().  This function gets the state of the
            // person visiting this page and can return one of three states to
            // the callback you provide.  They can be:
            //
            // 1. Logged into your app ('connected')
            // 2. Logged into Facebook, but not your app ('not_authorized')
            // 3. Not logged into Facebook and can't tell if they are logged into
            //    your app or not.
            //
            // These three cases are handled in the callback function.

            FB.getLoginStatus(function (response) {
                statusChangeCallback(response);
            });

        };

        // Load the SDK asynchronously
        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/en_US/sdk.js";
            fjs.parentNode.insertBefore(js, fjs);
        } (document, 'script', 'facebook-jssdk'));

        // Here we run a very simple test of the Graph API after login is
        // successful.  See statusChangeCallback() for when this call is made.
        function testAPI() {
            console.log('Welcome!  Fetching your information.... ');
            FB.api('/me', function (response) {
                console.log('Successful login for: ' + response.name);
            });
        }
    </script>
</body>
</html>
