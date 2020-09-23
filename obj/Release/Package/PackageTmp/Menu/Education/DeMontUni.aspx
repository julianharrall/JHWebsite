<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeMontUni.aspx.cs" Inherits="JMSHWebsite.DeMontUni" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
     <link href="~/Styles/Main.css" rel="stylesheet" type="text/css" />
     <link href="~/Styles/Work.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" language="JavaScript" src="/Script/RightClickDisable.js"></script> 

    


    <style type="text/css">


.glidetext{
position: relative;
/*Set initial position of your text. Make it just enough to hide the text from view:*/
left: -450px;
line-height: 1.7;
 font-size: 17px;
    font-family: "font-family: verdana";
text-shadow: 0 1px 0 #bab4b4, 0 2px 0 #8e8b8b, 0 3px 0 #bbb, 0 4px 0 #b9b9b9, 0 5px 0 #aaa, 0 6px 1px rgba(0,0,0,.1), 0 0 5px rgba(0,0,0,.1), 0 1px 3px rgba(0,0,0,.3), 0 3px 5px rgba(0,0,0,.2), 0 5px 10px rgba(0,0,0,.25), 0 10px 10px rgba(0,0,0,.2), 0 20px 20px rgba(0,0,0,.15);
}

</style>

<script type="text/javascript">

    //Sequential fly-in text script- by JavaScriptKit.com
    //For this script and 400+ more, visit http://www.javascriptkit.com
    //This notice must stay intact for use

    var pausebetweenmsg = 10 //customize pause in miliseconds between each message showing up (3000=3 seconds)
    var glidespeed = 50 //customize glide speed in pixels per frame.

    var curobjindex = 0

    function actualstyle(el, cssproperty) {
        if (el.currentStyle)
            return el.currentStyle[cssproperty]
        else if (window.getComputedStyle) {
            var elstyle = window.getComputedStyle(el, "")
            return elstyle.getPropertyValue(cssproperty)
        }
    }

    function collectElementbyClass() {
        var classname = "glidetext"
        glidearray = new Array()
        var inc = 0
        var alltags = document.all ? document.all : document.getElementsByTagName("*")
        for (i = 0; i < alltags.length; i++) {
            if (alltags[i].className == classname)
                glidearray[inc++] = alltags[i]
        }
        if (glidearray.length > 0)
            onebyoneglide()
    }

    function onebyoneglide() {
        if (curobjindex < glidearray.length)
            glidetimer = setInterval("glideroutine()", 50)
    }

    function glideroutine() {
        if (parseInt(actualstyle(glidearray[curobjindex], "left")) < 0)
            glidearray[curobjindex].style.left = parseInt(actualstyle(glidearray[curobjindex], "left")) + 50 + "px"
        else {
            glidearray[curobjindex].style.left = 0
            curobjindex++
            clearInterval(glidetimer)
            setTimeout("onebyoneglide()", pausebetweenmsg)
        }
    }

    if (window.addEventListener)
        window.addEventListener("load", collectElementbyClass, false)
    else if (window.attachEvent)
        window.attachEvent("onload", collectElementbyClass)
    else if (document.getElementById)
        window.onload = collectElementbyClass

</script>

     <style type="text/css">
/* Tooltip container */
.tooltip {
    position:  center;
    display: inline-block;
    border: 1px grey; /* If you want dots under the hoverable text */
    height:270px;
}

/* Tooltip text */
.tooltip .tooltiptext {
    visibility: hidden;
    width: 150px;
    background-color: #f0f0f5;
    color: GrayText;
    text-align: left;
    padding-left: 10px ;
    padding-top: 5px ;
    padding-bottom: 5px ;
    border-radius: 10px;
    font-size: 15px;
    
 border: 1px solid;
    /* Position the tooltip text - see examples below! */
    position: relative;
    z-index: 1;
}

/* Show the tooltip text when you mouse over the tooltip container */
.tooltip:hover .tooltiptext {
    visibility: visible;
}
</style>


</head>
<body>
    <form id="form1" runat="server">
    <div>
        <img src="/images/DMU2.png" alt="De Montfort University" />

    </div>
     <div id="WorkSummaryDMU1">  
        <div id="WorkSummDMU1">Summary</div>        
          <div id="WorkSummQualifications" style=" background-color: white; opacity: 0.8;">
       <%--  I have worked at next plc for over 20 years in a variety of roles.
         I primarily work as a support supervisor, moving to different departments and 
         helping with the management of the department.<br />
         Helping and covering for other supervisors, managing the Administration and Courier department areas.--%>

             <div class="glidetext"> <b><u>   Qualifications </u></b></div>           
              <br /> 
              
             <p class="glidetext">    BSC (Hons) Computer Science 2:1</p> 
         </div> 
    </div>

    <div id="WorkSummaryDMU">  
        <div id="WorkSummDMU2">Company

            <img src="imageToPreload.png" style="display:none;" alt="" />


             <div class="tooltip" style="color:transparent; text-align:left; top:80px; padding-left:235px; ">
     <p class="tooltiptext" style="top:90px; left:-110px;">De Montfort University <br />Gateway House <br />
                            Leicester<br />
                            LE1 9BH</p>
</div>
        











        </div>          
    </div>

    
    </form> 
</body>
</html>
