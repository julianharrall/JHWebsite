<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LeicsPolice.aspx.cs" Inherits="JMSHWebsite.LeicsPolice" %>

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
<body>
    <form id="form1" runat="server">
    <div>
         <img src="/images/LEICPOLICE.png" alt="Access FactoryMaster" 
        <%-- title=" Leicestershire Police
 St Johns
 Leicester 
 LE19 2BX"--%>/>
    </div>
    <div id="WorkSummary">  
        <div id="WorkSumm">Summary</div>        
         <div id="WorkSummText" style="text-shadow: 0 1px 0 #ccc, 0 2px 0 #c9c9c9, 0 3px 0 #bbb, 0 4px 0 #b9b9b9, 0 5px 0 #aaa, 0 6px 1px rgba(0,0,0,.1), 0 0 5px rgba(0,0,0,.1), 0 1px 3px rgba(0,0,0,.3), 0 3px 5px rgba(0,0,0,.2), 0 5px 10px rgba(0,0,0,.25), 0 10px 10px rgba(0,0,0,.2), 0 20px 20px rgba(0,0,0,.15);">
            <%-- I have worked at next plc for over 20 years in a variety of roles.
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
    var txt = 'The main function of this role was to support ';

    var j = 0;      
    var txt1 = 'the command and control system used by the force.';

    var k = 0;       
    var txt2 = 'Support business owners in maintaining and ';

    var l = 0;
    var txt3 = 'monitoring fault reports. Develop change requests,   ';

    var m = 0;
    var txt4 = 'testing and implementing software modules.';


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
            setTimeout(typeWriter4, 450);
        }
    }
</script>

         
         </div> 
    </div>

    <div id="WorkSummaryPoliceHq" >  
        <div id="WorkSumm2" >Company</div> 
        <div class="tooltip" style="color:transparent; text-align:left; top:80px; padding-left:235px; ">
           
           
  <p class="tooltiptext" style="top:40px; left:-110px;">Leicestershire Police <br />
                         St Johns <br />
                         Leicester <br />
                         LE19 2BX</p>
</div>
    </div>

    <%-- <div id="WorkSummary3">  
        <div id="WorkSumm3">Duties</div> 
          <div id="WorkSummText3">I have worked at next plc for over 20 years and had a varied career.
         I have primarily worked as a supervisor, moving to diffreent departments and 
         helping with the management of the department.<br />
         Supervising, managing and helping within the Administration and Courier departments. </div> 
    </div>    --%>     

    <div id="WorkSummary4">  
        <div id="WorkSumm4">Skills Developed</div>                  

      <%--  https://stackoverflow.com/questions/11450593/asp-net-chart-control-issue-background-not-transparent--%>        

        <asp:Chart ID="Chart1" runat="server" style="background-color: transparent " BackColor="transparent"  >
     
        <%--<ChartAreas >
            <asp:ChartArea Name="ChartArea1" BackColor="Transparent">             
            </asp:ChartArea>
        </ChartAreas>--%>

        </asp:Chart>
               
    </div>     
    </form> 
</body>
</html>

