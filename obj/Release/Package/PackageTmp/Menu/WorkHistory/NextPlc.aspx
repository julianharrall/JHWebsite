<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NextPlc.aspx.cs" Inherits="KPWebsite.NextPlc" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/Styles/Main.css" rel="stylesheet" type="text/css" />
     <link href="~/Styles/Work.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" language="JavaScript" src="/Script/RightClickDisable.js"></script> 

      <style type="text/css">
        p.small {
            line-height: 30%;
        }

        
    </style>

     <style type="text/css">
/* Tooltip container */
.tooltip {
    position:  center;
    display: inline-block;
    border: 1px grey; /* If you want dots under the hoverable text */
    height:160px;
}

/* Tooltip text */
.tooltip .tooltiptext {
    visibility: hidden;
    width: 140px;
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
<body onload="noRightClick()">
        
    <form id="form1" runat="server">
    <div>
        <img src="/images/Next.jpg" alt="Next Head Office"/>
    </div>   
  
    <div id="WorkSummary">  
        <div id="WorkSumm">Summary</div>        
         <div id="WorkSummText" style=" text-shadow: 0 1px 0 #bab4b4, 0 2px 0 #8e8b8b, 0 3px 0 #bbb, 0 4px 0 #b9b9b9, 0 5px 0 #aaa, 0 6px 1px rgba(0,0,0,.1), 0 0 5px rgba(0,0,0,.1), 0 1px 3px rgba(0,0,0,.3), 0 3px 5px rgba(0,0,0,.2), 0 5px 10px rgba(0,0,0,.25), 0 10px 10px rgba(0,0,0,.2), 0 20px 20px rgba(0,0,0,.15); ">
             <%--I have worked at next plc for over 20 years in a variety of roles.
         I primarily work as a support supervisor, moving to different departments and 
         helping with the management of the department.<br />
         Helping and covering for other supervisors, managing the Administration and Courier department areas.--%>

        <p id="demo" class="small"></p>
        <p id="demo1" class="small"></p>
        <p id="demo2" class="small"></p>
        <p id="demo3" class="small"></p>
        <p id="demo4" class="small"></p>

        <script type="text/javascript" language="JavaScript">   

    var i = 0;
    var txt = 'My responsibilities were to provide effective ';

    var j = 0;      
    var txt1 = 'support to bespoke software applications, resolving';

    var k = 0;       
    var txt2 = 'issues and bugs. The applications were written in ';

    var l = 0;
    var txt3 = '.NET but also entailed exposure to 4GL and shell ';

    var m = 0;
    var txt4 = 'scripts. Adhering to strict release procedures.'

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

                if (k < txt1.length) {
                    document.getElementById("demo2").innerHTML += txt2.charAt(k);
                    k++;
                    setTimeout(typeWriter2, 150);
                }

                if (k == txt2.length) {
                    setTimeout(typeWriter3, 400);
                }
            }

            function typeWriter3() {

                if (l < txt3.length) {
                    document.getElementById("demo3").innerHTML += txt3.charAt(l);
                    l++;
                    setTimeout(typeWriter3, 150);
                }

                if (l == txt3.length) {
                    setTimeout(typeWriter4, 400);
                }
            }




    function typeWriter4() {       
      
        if (m < txt4.length) {
            document.getElementById("demo4").innerHTML += txt4.charAt(m);
            m++;
            setTimeout(typeWriter4, 250);
        }
    }
</script>
         
         </div> 
    </div>

    <div id="WorkSummary2">  
        <div id="WorkSumm2">Company</div>          
  
<div class="tooltip" style="color:transparent; text-align:left; top:80px; padding-left:235px; ">
     <p class="tooltiptext" style="top:30px; left:-110px;">Next Retail Ltd. <br />
                    Desford Road,<br />
                    Enderby,<br />
                    Leicester.<br />
                    LE19 4AT</p>
        </div>
            </div>  

    <div id="WorkSummary4">  
        <div id="WorkSumm4">Skills Developed</div>                  

      <%--  https://stackoverflow.com/questions/11450593/asp-net-chart-control-issue-background-not-transparent--%>        

        <asp:Chart ID="Chart1" runat="server" style="background-color: transparent " BackColor="Transparent" Height="173px" >
     
        <%--<ChartAreas >
            <asp:ChartArea Name="ChartArea1" BackColor="Transparent">             
            </asp:ChartArea>
        </ChartAreas>--%>

        </asp:Chart>
               
    </div>     
    </form> 
</body>
</html>
