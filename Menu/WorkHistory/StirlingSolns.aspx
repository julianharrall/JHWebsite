<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StirlingSolns.aspx.cs" Inherits="JMSHWebsite.Menu.WorkHistory.StirlingSolns" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
<body>
    <form id="form1" runat="server">
    <div>
        <img src="/images/Stirling.JPG" alt="Stirling Solutions" />
    </div>
    
     <div id="WorkSummary">  
        <div id="WorkSumm">Summary</div>        
         <div id="WorkSummText" style=" text-shadow: 0 1px 0 #bab4b4, 0 2px 0 #8e8b8b, 0 3px 0 #bbb, 0 4px 0 #b9b9b9, 0 5px 0 #aaa, 0 6px 1px rgba(0,0,0,.1), 0 0 5px rgba(0,0,0,.1), 0 1px 3px rgba(0,0,0,.3), 0 3px 5px rgba(0,0,0,.2), 0 5px 10px rgba(0,0,0,.25), 0 10px 10px rgba(0,0,0,.2), 0 20px 20px rgba(0,0,0,.15);">
         <%--I have worked at next plc for over 20 years in a variety of roles.
         I primarily work as a support supervisor, moving to different departments and 
         helping with the management of the department.<br />
         Helping and covering for other supervisors, managing the Administration and Courier department areas.--%>
        
        <p id="demo" class="small" ></p>
        <p id="demo1" class="small"></p>
        <p id="demo2" class="small"></p>
        <p id="demo3" class="small"></p>
        <p id="demo4" class="small"></p>

    <script type="text/javascript" language="JavaScript">   

    var i = 0;
    var txt = 'I have worked for Stirling Solutions since 2015.';

    var j = 0;      
    var txt1 = 'I work primarily with all Sql Server functionality.';

    var k = 0;       
    var txt2 = 'I create Stored Procedures, Functions and Triggers.';

    var l = 0;
    var txt3 = 'Adding enhancements to applications, for example:';

    var m = 0;
    var txt4 = 'text messaging and emailing capabilities.';

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

            if (k == txt2.length) {
                setTimeout(typeWriter3, 400);
            }
        }

   function typeWriter3() {

            if (l < txt3.length) {
                document.getElementById("demo3").innerHTML += txt3.charAt(l);
                l++;
                setTimeout(typeWriter3, 350);
            }

            if (l == txt3.length) {
                setTimeout(typeWriter4, 400);
            }
        }

    function typeWriter4() {       
      
        if (m < txt4.length) {
            document.getElementById("demo4").innerHTML += txt4.charAt(m);
            m++;
            setTimeout(typeWriter4, 350);
        }
     }


</script>







         
         </div> 
    </div>

    <div id="WorkSummaryStirling2">  
        <div id="WorkSumm2">Company</div>          
    

     <div class="tooltip" style="color:transparent; text-align:left; top:80px; padding-left:235px; ">
           
           
  <p class="tooltiptext" style="top:40px; left:-110px;">Stirling Solutions <br />
                         8 Bakewell street <br />
                         Coalville <br />
                         LE67 3BA</p>

    </div> 
        </div>

    <div id="WorkSummary4">  
        <div id="WorkSumm4">Skills Developed</div>                  

      <%--  https://stackoverflow.com/questions/11450593/asp-net-chart-control-issue-background-not-transparent--%>        

        <asp:Chart ID="Chart1" runat="server" style="background-color: transparent " BackColor="Transparent" >
     
        <%--<ChartAreas >
            <asp:ChartArea Name="ChartArea1" BackColor="Transparent">             
            </asp:ChartArea>
        </ChartAreas>--%>

        </asp:Chart>
               
    </div>     
    </form> 
</body>
</html>
