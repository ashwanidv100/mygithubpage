<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VideoDetails.aspx.cs" Inherits="Revide.VideoDetails" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <style>
        
    </style>
</head>
<body>
<form id="form2" runat="server">
    <nav class="navbar navbar-inverse navbar-fixed-top" data-offset-top="197">
        <div class="container-fluid">

            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <a href="home.aspx">
                    <img width="100px" height="50px" src="images/revide.png"></a>

            </div>

            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">

                    <li><a href="#">All movies</a></li>
                    <li><a href="#">Movies by category</a></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Community <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">post question</a></li>
                            <li><a href="#">trending</a></li>

                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                   
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span> name </a></li>
                </ul>
            </div>


        </div>

    </nav>
    </br> </br> </br > </br>
    <div class="container-fluid" align="center">
        <h1>
            DARK KNIGHT RISES
         </h1>
    </div>
    </br> </br>
    <div class="row">
        <div class="col-md-6" align="center">
            <iframe height="350px" width="500px" src="http://www.youtube.com/embed/GokKUqLcvD8?autoplay=1">
            </iframe>
        </div>
        </br>
        <div class="col-md-5">
            
            <button type="button" class="btn btn-default btn-sm">
                <span class="glyphicon glyphicon-heart"></span>Add to Wishlist
            </button>

        <asp:LinkButton ID="btn_book" runat="server"  class="btn btn-default btn-sm" 
                onclick="btn_book_Click">
                <i class="glyphicon glyphicon-book"></i> Book Now</asp:LinkButton>
            
           </br>
           </br>
            <p >
                See more snippets like these online store reviews at <a target="_blank" href="http://bootsnipp.com">
                    Bootsnipp - http://bootsnipp.com</a>.</p>
            <p>
                Want to make these reviews work? Check out <strong><a href="http://maxoffsky.com/code-blog/laravel-shop-tutorial-1-building-a-review-system/">
                    this building a review system tutorial</a> </strong>over at maxoffsky.com!</p>
            <p >
                Dark knight rises is the most fdamous superhero film.
                </p>
        
        <div>
            
            <p >
                3 reviews</p>
            <p>
                <span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star">
                </span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star">
                </span><span class="glyphicon glyphicon-star-empty"></span>4.0 stars
            </p>
            </br> </br>
        </div>
        <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">
            Show More..</button>
        <div id="demo" class="collapse">
            </br>
            <a href="#">Show Full Cast.</a>
            <p>IMDB Rating :: </p>
            <p>Rotten Tomatoes:: </p>
          
        </div>
    </div>
    </div>
    </br> </br> </br>
    <div class="row">
        <div class="well col-md-6">
            
            <h3>
                Recommendaions</h3>
            </br>
            </br>
            <div class="col-md-6 col-md-3">
                <a href="#" class="thumbnail">
                    <img src="http://ia.media-imdb.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_UX182_CR0,0,182,268_AL_.jpg"
                        alt="Generic placeholder thumbnail">
                </a>
            </div>
            <div class="col-md-6 col-md-3">
                <a href="#" class="thumbnail">
                    <img src="http://ia.media-imdb.com/images/M/MV5BNDc2NTM3MzU1Nl5BMl5BanBnXkFtZTcwMTA5Mzg3OA@@._V1_UX182_CR0,0,182,268_AL_.jpg"
                        alt="Generic placeholder thumbnail">
                </a>
            </div>
            <div class="col-md-6 col-md-3">
                <a href="#" class="thumbnail">
                    <img src="http://ia.media-imdb.com/images/M/MV5BMjEyMjcyNDI4MF5BMl5BanBnXkFtZTcwMDA5Mzg3OA@@._V1_UX182_CR0,0,182,268_AL_.jpg"
                        alt="Generic placeholder thumbnail">
                </a>
            </div>
            <div class="col-md-6 col-md-3">
                <a href="#" class="thumbnail">
                    <img src="http://ia.media-imdb.com/images/M/MV5BODU4MjU4NjIwNl5BMl5BanBnXkFtZTgwMDU2MjEyMDE@._V1_UX182_CR0,0,182,268_AL_.jpg"
                        alt="Generic placeholder thumbnail">
                </a>
            </div>
        </div>
        
        <div class="well col-md-6">
            <div class="text-right">
                <a class="btn btn-success">Leave a Review</a>
            </div>
            <hr>
            <div class="row">
                <div class="col-md-12">
                    <span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star">
                    </span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star">
                    </span><span class="glyphicon glyphicon-star-empty"></span>Anonymous <span class="pull-right">
                        10 days ago</span>
                    <p>
                        This product was great in terms of quality. I would definitely buy another!</p>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-md-12">
                    <span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star">
                    </span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star">
                    </span><span class="glyphicon glyphicon-star-empty"></span>Anonymous <span class="pull-right">
                        12 days ago</span>
                    <p>
                        I've alredy ordered another one!</p>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-md-12">
                    <span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star">
                    </span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star">
                    </span><span class="glyphicon glyphicon-star-empty"></span>Anonymous <span class="pull-right">
                        15 days ago</span>
                    <p>
                        I've seen some better than this, but not at this price. I definitely recommend this
                        item.</p>
                </div>
            </div>
        </div>
    </div>

    <asp:Label ID="status" runat="server"></asp:Label>
    </form>
</body>
</html>
