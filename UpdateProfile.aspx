<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateProfile.aspx.cs" Inherits="WebApplication7.WebForm3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<nav class="navbar navbar-inverse navbar-fixed-top"  data-offset-top="197">
        <div class="container-fluid">
           <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <a href="nav.html">
                    <img width="100px" height="50px" src="revide.png"></a>

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
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span>Profile</a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-log-in"></span>Sign-Out </a></li>
                </ul>
            </div>


        </div>

    </nav>
    </br>
    </br>
    
    </br>
<div class="container">
    <h1>Update Profile</h1>
  	<hr>
	<div class="row">
      <!-- left column -->
      <div class="col-md-3">
        <div class="text-center">
          <img src="data:image/png;base64,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" class="avatar img-circle" alt="avatar">
          <h6>Upload your new profile picture...</h6>
          
          <input type="file" class="form-control">
        </div>
      </div>
      
      <!-- edit form column --> 
      <div class="col-md-9 personal-info">
       <form class="form-horizontal" runat = "server" role="form">
          <div class="form-group">
            <label class="col-lg-3 control-label">Name</label>
            <div class="col-lg-8">
              <asp:TextBox id="tb1" class="form-control" runat="server" visible="true" value=""/></asp:Textbox> 
            </div>
          </div>
           <div class="form-group">
            <label class="col-lg-3 control-label">EmailId</label>
            <div class="col-lg-8">
            <asp:TextBox id="tb2" class="form-control" runat="server" visible="true" value="gmail.com"/></asp:Textbox> 
            </div>
          </div>
 <div class="form-group">
            <label class="col-lg-3 control-label">Age</label>
            <div class="col-lg-8">
             <asp:TextBox id="tb3" class="form-control" runat="server" visible="true" 
                    /></asp:Textbox> 
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Phone</label>
            <div class="col-lg-8">
              <asp:TextBox id="tb4"  class="form-control" runat="server" visible="true"/></asp:Textbox> 
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Country</label>
            <div class="col-lg-8">
              <asp:TextBox id="tb5" class="form-control" runat="server" visible="true" value=""/></asp:Textbox> 
              
 </div>
   </div>
   <asp:Button ID="Save" runat="server" Text="Save" class="btn btn-primary" 
              onclick="Button1_Click"/>
         </form>
       </div>
  </div>
</div>
<hr>