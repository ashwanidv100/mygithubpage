<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfileShow.aspx.cs"
    Inherits="Revide.UserProfileShow" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    
</head>
<body>
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
                   
                    <li><a href="UpdateProfile.aspx"><span class="glyphicon glyphicon-edit"></span> Edit Information </a></li>
                </ul>
            </div>


        </div>

    </nav>
    </br> </br> </br > </br>
    <form id="form1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-12 lead">
                                User profile<hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 text-center">
                                <img class="img-circle avatar avatar-original" style="-webkit-user-select: none;
                                    display: block; margin: auto;" src="https://plus.google.com/u/0/_/focus/photos/public/AIbEiAIAAABECIuJ28bnlo3B7gEiC3ZjYXJkX3Bob3RvKihlNDAyYWY0MTkwMzU3Mjg1NWM1MDJkNzEwMTA0MTRjYmRmMmI3OTNhMAE8GIBH583UIwWR2FWjZ_ynZRvujg?sz=64"
                                    height="150px" width="150px">
                            </div>
                            <div class="col-md-8">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h1 class="only-bottom-margin">
                                            NAME</h1>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <span class="text-muted">Email:</span> email@test.com<br>
                                        <span class="text-muted">Country:</span> India<br>
                                        <span class="text-muted">Age:</span> 18<br>
                                        <span class="text-muted">Phone:</span>8901909321<br>
                                        <span class="text-muted">Birth date:</span> 01.01.2001<br>
                                        <span class="text-muted">Gender:</span> male<br>
                                        <br>
                                        <small class="text-muted">Created: 01.01.2015</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <hr>
                                <asp:LinkButton ID="btn_edit" class="btn btn-default pull-right" runat="server" 
                                    onclick="btn_edit_Click" ><i class="glyphicon glyphicon-pencil"></i> Edit </asp:LinkButton>
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
