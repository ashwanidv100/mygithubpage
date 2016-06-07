<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rating.aspx.cs" Inherits="Revide.Rating" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .rating
        {
            float: left;
        }
        
        .rating:not(:checked) > input
        {
            position: absolute;
            top: -9999px;
            clip: rect(0,0,0,0);
        }
        
        .rating:not(:checked) > label
        {
            float: right;
            width: 1em;
            padding: 0 .1em;
            overflow: hidden;
            white-space: nowrap;
            cursor: pointer;
            font-size: 200%;
            line-height: 1.2;
            color: #ddd;
            text-shadow: 1px 1px #bbb, 2px 2px #666, .1em .1em .2em rgba(0,0,0,.5);
        }
        
        .rating:not(:checked) > label:before
        {
            content: '★ ';
        }
        
        .rating > input:checked ~ label
        {
            color: #f70;
            text-shadow: 1px 1px #c60, 2px 2px #940, .1em .1em .2em rgba(0,0,0,.5);
        }
        
        .rating:not(:checked) > label:hover, .rating:not(:checked) > label:hover ~ label
        {
            color: gold;
            text-shadow: 1px 1px goldenrod, 2px 2px #B57340, .1em .1em .2em rgba(0,0,0,.5);
        }
        
        .rating > input:checked + label:hover, .rating > input:checked + label:hover ~ label, .rating > input:checked ~ label:hover, .rating > input:checked ~ label:hover ~ label, .rating > label:hover ~ input:checked ~ label
        {
            color: #ea0;
            text-shadow: 1px 1px goldenrod, 2px 2px #B57340, .1em .1em .2em rgba(0,0,0,.5);
        }
        
        .rating > label:active
        {
            position: relative;
            top: 2px;
            left: 2px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <fieldset class="rating">
            <legend>Rate the movie:</legend>
            <input type="radio" id="star5" name="rating" value="5" /><label for="star5" title="Rocks!">5
                stars</label>
            <input type="radio" id="star4" name="rating" value="4" /><label for="star4" title="Pretty good">4
                stars</label>
            <input type="radio" id="star3" name="rating" value="3" /><label for="star3" title="Meh">3
                stars</label>
            <input type="radio" id="star2" name="rating" value="2" /><label for="star2" title="Kinda bad">2
                stars</label>
            <input type="radio" id="star1" name="rating" value="1" /><label for="star1" title="Sucks big time">1
                star</label>
        </fieldset>
    </div>
    </form>
</body>
</html>
