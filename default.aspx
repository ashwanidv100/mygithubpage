<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Revide.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <style>
        ol
        {
            display: block;
            list-style-type: decimal;
            margin-top: 0px;
            margin-bottom: 0px;
            margin-left: 0px;
            margin-right: 40px;
            padding-left: 40px;
        }
        body
        {
            position: relative;
        }
        .carousel
        {
            min-height: 500px;
            max-height: 500px;
            overflow: hidden;
        }
        
        .carousel img
        {
            min-height: 500px;
            min-width: 70%;
            max-width: 750px;
            max-height: 500px;
            margin: auto;
        }
        .affix
        {
            top: 190px;
            position: fixed;
        }
        div.col-sm-9 div
        {
            height: 400px;
            font-size: 28px;
        }
        #section1
        {
            color: #fff;
            background-color: white;
        }
        #section2
        {
            color: #fff;
            background-color: white;
        }
        #section3
        {
            color: #fff;
            background-color: white;
        }
        #section4
        {
            color: #fff;
            background-color: white;
        }
        
        
        @media screen and (max-width: 810px)
        {
            #section1, #section2, #section3, #section4
            {
                margin-left: 150px;
            }
        }
    </style>
</head>
<body data-spy="scroll" data-target="#myScrollspy" data-offset="15">
    <form id="form1" runat="server">
    <nav class="navbar navbar-inverse navbar-fixed-top" data-offset-top="197">
        <div class="container-fluid">

            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <a href="Homepage.aspx">
                    <img width="100px" height="50px" src="images/revide.png"></a>

            </div>

            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">

                    <li><a href="AllMovies.aspx">All movies</a></li>
                    <li><a href="VideoCategory.aspx">Movies by category</a></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Community <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">post question</a></li>
                            <li><a href="#">trending</a></li>

                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="UserLogin.aspx"><span class="glyphicon glyphicon-user"></span> Sign Up </a></li>
                    <li><a href="UserLogin.aspx"><span class="glyphicon glyphicon-log-in"></span> Login </a></li>
                </ul>
            </div>
        </div>
    </nav>
    </br> </br></br>
    <div>
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol id="olBanner" runat="server" class="carousel-indicators">
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <asp:Repeater ID="rptBanner" runat="server" OnItemDataBound="rptBanner_ItemDataBound">
                    <ItemTemplate>
                        <div id="divItem" runat="server" class="item">
                            <img runat="server" id="img4" src='<%# DataBinder.Eval(Container.DataItem,"PosterSrc") %>'
                                alt="EMMA" height="345" width="460">
                            <div class="carousel-caption">
                                <h3>
                                    '<%# DataBinder.Eval(Container.DataItem, "Title")%>'</h3>
                                <p>
                                    '<%# DataBinder.Eval(Container.DataItem, "ReleaseDate")%>'</p>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span><span class="sr-only">
                    Previous</span> </a><a class="right carousel-control" href="#myCarousel" role="button"
                        data-slide="next"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true">
                        </span><span class="sr-only">Next</span> </a>
        </div>
    </div>
    </br>
    <div>
        <div class="container">
            <div class="row">
                <nav class="col-sm-3" id="myScrollspy">
      <ul class="nav nav-pills nav-stacked" data-spy="affix" data-offset-top="500">
        <li><a href="#section1">Movies</a></li>
        <li><a href="#section2">TV Shows</a></li>
        <li><a href="#section3">Web Series</a></li>
        <li><a href="#section4">Recommended</a></li>

      </ul>
    </nav>
                <div class="col-sm-9">
                    <div id="section1">
                        <h1>
                            MOVIES
                        </h1>
                        <div class="row">
                            <div class="col-sm-6 col-md-3">
                                <a href="#" class="thumbnail">
                                    <img src="http://ia.media-imdb.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_UX182_CR0,0,182,268_AL_.jpg"
                                        alt="Generic placeholder thumbnail">
                                </a>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <a href="#" class="thumbnail">
                                    <img src="http://ia.media-imdb.com/images/M/MV5BNDc2NTM3MzU1Nl5BMl5BanBnXkFtZTcwMTA5Mzg3OA@@._V1_UX182_CR0,0,182,268_AL_.jpg"
                                        alt="Generic placeholder thumbnail">
                                </a>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <a href="#" class="thumbnail">
                                    <img src="http://ia.media-imdb.com/images/M/MV5BMjEyMjcyNDI4MF5BMl5BanBnXkFtZTcwMDA5Mzg3OA@@._V1_UX182_CR0,0,182,268_AL_.jpg"
                                        alt="Generic placeholder thumbnail">
                                </a>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <a href="#" class="thumbnail">
                                    <img src="http://ia.media-imdb.com/images/M/MV5BODU4MjU4NjIwNl5BMl5BanBnXkFtZTgwMDU2MjEyMDE@._V1_UX182_CR0,0,182,268_AL_.jpg"
                                        alt="Generic placeholder thumbnail">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div id="section2">
                        <h1>
                            TV Shows
                        </h1>
                        <div class="row">
                            <div class="col-sm-6 col-md-3">
                                <a href="#" class="thumbnail">
                                    <img src="http://ia.media-imdb.com/images/M/MV5BMTUxMTUxODg0MF5BMl5BanBnXkFtZTgwMTQzMjA3NzE@._V1_UY209_CR2,0,140,209_AL_.jpg"
                                        alt="Generic placeholder thumbnail">
                                </a>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <a href="#" class="thumbnail">
                                    <img src="http://ia.media-imdb.com/images/M/MV5BNjc1NzYwODEyMV5BMl5BanBnXkFtZTcwNTcxMzU1MQ@@._V1_UY268_CR7,0,182,268_AL_.jpg"
                                        alt="Generic placeholder thumbnail">
                                </a>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <a href="#" class="thumbnail">
                                    <img src="http://ia.media-imdb.com/images/M/MV5BMTQ0ODYzODc0OV5BMl5BanBnXkFtZTgwMDk3OTcyMDE@._V1_UX182_CR0,0,182,268_AL_.jpg"
                                        alt="Generic placeholder thumbnail">
                                </a>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <a href="#" class="thumbnail">
                                    <img src="http://ia.media-imdb.com/images/M/MV5BODU4MjU4NjIwNl5BMl5BanBnXkFtZTgwMDU2MjEyMDE@._V1_UX182_CR0,0,182,268_AL_.jpg"
                                        alt="Generic placeholder thumbnail">
                                </a>
                            </div>
                        </div>
                        <div id="section3">
                            <h1>
                                Web Series
                            </h1>
                            <div class="row">
                                <div class="col-sm-6 col-md-3">
                                    <a href="#" class="thumbnail">
                                        <img src="http://ia.media-imdb.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_UX182_CR0,0,182,268_AL_.jpg"
                                            alt="Generic placeholder thumbnail">
                                    </a>
                                </div>
                                <div class="col-sm-6 col-md-3">
                                    <a href="#" class="thumbnail">
                                        <img src="http://ia.media-imdb.com/images/M/MV5BNDc2NTM3MzU1Nl5BMl5BanBnXkFtZTcwMTA5Mzg3OA@@._V1_UX182_CR0,0,182,268_AL_.jpg"
                                            alt="Generic placeholder thumbnail">
                                    </a>
                                </div>
                                <div class="col-sm-6 col-md-3">
                                    <a href="#" class="thumbnail">
                                        <img src="http://ia.media-imdb.com/images/M/MV5BMjEyMjcyNDI4MF5BMl5BanBnXkFtZTcwMDA5Mzg3OA@@._V1_UX182_CR0,0,182,268_AL_.jpg"
                                            alt="Generic placeholder thumbnail">
                                    </a>
                                </div>
                                <div class="col-sm-6 col-md-3">
                                    <a href="#" class="thumbnail">
                                        <img src="http://ia.media-imdb.com/images/M/MV5BODU4MjU4NjIwNl5BMl5BanBnXkFtZTgwMDU2MjEyMDE@._V1_UX182_CR0,0,182,268_AL_.jpg"
                                            alt="Generic placeholder thumbnail">
                                    </a>
                                </div>
                            </div>
                            <div id="section4">
                                <h1>
                                    Recommended
                                </h1>
                                <div class="row">
                                    <div class="col-sm-6 col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://ia.media-imdb.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_UX182_CR0,0,182,268_AL_.jpg"
                                                alt="Generic placeholder thumbnail">
                                        </a>
                                    </div>
                                    <div class="col-sm-6 col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://ia.media-imdb.com/images/M/MV5BNDc2NTM3MzU1Nl5BMl5BanBnXkFtZTcwMTA5Mzg3OA@@._V1_UX182_CR0,0,182,268_AL_.jpg"
                                                alt="Generic placeholder thumbnail">
                                        </a>
                                    </div>
                                    <div class="col-sm-6 col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://ia.media-imdb.com/images/M/MV5BMjEyMjcyNDI4MF5BMl5BanBnXkFtZTcwMDA5Mzg3OA@@._V1_UX182_CR0,0,182,268_AL_.jpg"
                                                alt="Generic placeholder thumbnail">
                                        </a>
                                    </div>
                                    <div class="col-sm-6 col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://ia.media-imdb.com/images/M/MV5BODU4MjU4NjIwNl5BMl5BanBnXkFtZTgwMDU2MjEyMDE@._V1_UX182_CR0,0,182,268_AL_.jpg"
                                                alt="Generic placeholder thumbnail">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </form>
</body>
</html>
