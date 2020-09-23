<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutMe.aspx.cs" Inherits="KPWebsite.AboutMe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <script type="text/javascript" language="JavaScript" src="/Script/RightClickDisable.js"></script>        
     <link href="~/Styles/Main.css" rel="stylesheet" type="text/css" />
    <link href="~/Styles/AboutMe.css" rel="stylesheet" type="text/css" />
   
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDmufgKAUDcIuAKxHXE4R1LuHO0LmoIbDw&callback=initMap"></script>   
     <script type="text/javascript" src="/Script/Google.js" ></script>  
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js" ></script>


    <script type="text/javascript">

        $(function () {
            $('body').removeClass('fade-outAM');
        });

    //$(function () {
    //    $('iframe').removeClass('iframe-trans-fix');
    //});

    //$(function () {             
    //    $('#div_id_name').removeAttr('id');      
    //});



</script> 
    
</head>
<body class="fade-outAM"  onload="noRightClick()" ><%--class="iframe-trans-fix " class="fade-outAM"--%>

    <form id="form1" runat="server">
   <%-- <p align="center"><font face="verdana" size="5"><b>Julian Harrall</b></font></p>--%>

   <div id="AboutIFrameDivHeaderLive" style="margin-top: -7px;">Julian Harrall</div>
   
    <%--<div id="ParMeImage">
     <div id="ParMeImageHeader"> Photograph</div>         
    <img class="displayed" src="/images/rsc3.jpg" alt="Julian Harrall" />
    </div>--%>
    <div id="PersonalSummary">  
        <div id="PersonalSumm">My Location</div>  
        <div id="LeicesterMap"></div>
    </div>
        
    <div id="ParMeSummary">  
        <div id="ParaMeSumm">Introduction</div>  
        <div id="ParaMeSummParagraph">   
       <p id="demo" class="small" style="margin: 17px; "></p>
        <p id="demo1" class="small" style="margin: 17px;"></p>
        <p id="demo2" class="small" style="margin: 17px;"></p>
       <%-- <p id="demo3" class="small" style="margin: 9px;"></p>--%>
      <%--  <p id="demo4" class="small" style="margin: 7px;"></p>--%>

    <script type="text/javascript" language="JavaScript">   

    var i = 0;
        var txt = 'I have primarily worked in software support. I completed a 5 year part time Degree in Computer Science, gaining a 2nd class Honours Degree.' ;

    var j = 0;      
        var txt1 = 'I am continually looking to increase my knowledge and skills, studying and writing small applications.' 

    var k = 0;       
        var txt2 = 'I am very motivated, and with my experience and knowledge, I believe that I have the neccessary skills and ability to be a valued team member in any organisation.';

    //var l = 0;
    //    var txt3 = '';

    //var m = 0;
    //var txt4 = 'text messaging and emailing cababilities.';

    var speed = 400;
       
    typeWriter();            

    function typeWriter() {

        if (i < txt.length) {
            document.getElementById("demo").innerHTML += txt.charAt(i);
            i++;
            setTimeout(typeWriter, 100);
        }

        if (i == txt.length) {
            setTimeout(typeWriter1, 400);

        }
    }

    function typeWriter1() {       
       
        if (j < txt1.length) {
            document.getElementById("demo1").innerHTML += txt1.charAt(j);
            j++;
            setTimeout(typeWriter1, 150);
        }

        if (j == txt1.length) {
            setTimeout(typeWriter2, 400);
        }        
     }

     function typeWriter2() {

            if (k < txt2.length) {
                document.getElementById("demo2").innerHTML += txt2.charAt(k);
                k++;
                setTimeout(typeWriter2, 250);
            }

            //if (k == txt2.length) {
            //    setTimeout(typeWriter3, 400);
            //}
        }

   


</script>

        </div>   


          
    </div>

    
   
    </form>
</body>
</html>
