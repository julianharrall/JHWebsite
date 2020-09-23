     <%@ Page Language="C#" AutoEventWireup="true" 
        MetaKeywords="Julian, Harrall, Development, Support"
        MetaDescription="Julian Harrall"
        CodeBehind="index.aspx.cs" Inherits="KPWebsite.Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <meta http-equiv="X-Frame-Options" content="allow"/>
    <title></title>

    <meta name="description" content="Julian Harrall" />
    <meta name="keywords" content="Julian Harrall, Development, Support, Application, Software" /> 

     <link href="~/Styles/Main.css" rel="stylesheet" type="text/css" />
     <link href="~/Styles/Test.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js" ></script>
   <%-- <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>--%>
    <script type="text/javascript" src="Script/Menu.js" ></script>  
     <script type="text/javascript" language="JavaScript" src="/Script/GraphScript.js"></script>  
     <script type="text/javascript" language="JavaScript" src="/Script/switchcolors.js"></script>  
     <script type="text/javascript" language="JavaScript" src="/Script/RightClickDisable.js"></script>  
     <script type="text/javascript" language="JavaScript" src="/Script/app.js"></script>  
     <script type='text/javascript' src="/Script/snow.js"></script>

     <link href="~/Styles/popup.css" rel="stylesheet" type="text/css" />
   <script src="Script/popup.js" type='text/javascript'></script>

   <%-- https://stackoverflow.com/questions/7042670/how-to-fade-in-an-entire-web-page-accessibly--%>
   <%-- <script type="text/javascript"> $("*").css({ position: 'relative', top: '-59px' });</script>

    <script type="text/css">
       
        position:relative;
    left:-9999px;
    </script>--%>


 
    <script type="text/javascript">
        function showDate() {
            var d = new Date();
            var curr_date = d.getDate();
            var curr_month = d.getMonth() + 1; //months are zero based
            var curr_year = d.getFullYear();
            document.write(curr_date + "-" + curr_month + "-" + curr_year);
        }
</script>

   

<script type="text/javascript">

    $(function () {
        $('body').removeClass('fade-out');
    });

    $(function () {
        $('div').removeClass('fade-out-MenuClass');
    });

    $(function () {
        $('div').removeClass('fade-out-FooterDiv');
    });

    $(function () {
        $('div').removeClass('fade-out-Titlediv');
    });

    //$(function () {
    //    $('div').removeClass('fade-out-linkedin');
    //});

    // stops white flash when iframe loads
    $(function () {
    parent.document.getElementById('imgbox').style.visibility = "hidden";
    });

   


    //$(function () {
    //    $('iframe').removeClass('iframe-trans-fix');
    //});

    //$(function () {             
    //    $('#div_id_name').removeAttr('id');      
    //});
        

      
</script>  

</head>
<body   class="fade-out" onload="noRightClick()">

 <%-- https://www.codeproject.com/Articles/762201/Adjusting-your-websites-to-fit-all-types-of-resolu--%>
  <%-- style=" background:url('/images/Computer-Technology-HD-Wallpaper.jpg'); background-repeat: no-repeat; "--%>
   <div class="Container"  >
       <div class="content">
  <%--  <form id="form1" runat="server" >--%>            
         
            <div class="Iframe"  id="IframeId">   
            <%--<div id="photoImage" align="left"></div> --%>  
            <div id="photoImage"><img src="/images/rsc.JPG" height="40px"; width="40px";  alt=""/></div>
            <div id="imagetext">Julian Harrall  </div>
            </div>
            
         
          
          
            <div class="Navigation" >
            <div class="fade-out-Titlediv"> 
             <div class="TitleDiv">
                <div id="divSection2" ><a href="/AboutMe.aspx" target="imgbox" onmousedown="switchColors(this, '#EB2626')">About Me</a></div> 
                 <div class="fade-out-linkedin"> 
                  <div class="linkedin" ><a href="https://www.linkedin.com/in/julianharrall/" target="_blank"><img src="/images/linkdin.png" alt=""/></a></div> 
                 </div> 
            </div> 
            </div>
                
       
          
            <div class="fade-out-MenuClass">          
            <div id="Menu" >
                     <p>SUMMARY</p>
                     <div class="section">
                        <div class="textalignSUMMARY">
                         <%--<a href="/Menu/Summary/Personal.aspx" target="imgbox" >Personal Details</a>     --%>                   
                       
                         <a href="/Menu/Summary/VerticalMenu.aspx" target="imgbox"  onmousedown="switchColors(this, '#EB2626')" >Experiences</a>                         
                         </div>                                          
                     </div>
                   <%-- <p>EDUCATION</p>
                    <div class="section">
                        <div class="textalignEDUCATION">
                        <a href="/Menu/Education/CharlesKeene.aspx" target="imgbox" onmousedown="switchColors(this, '#EB2626')">Charles Keene College</a>                      
                        </div>                   
                    </div>--%>
                    <p>WORK HISTORY</p>
                    <div class="section" >
                        <div class="textalignWORKHISTORY">               
                        <a href="/Menu/WorkHistory/StirlingSolns.aspx" target="imgbox" onmousedown="switchColors(this, '#EB2626')">Stirling Solutions</a> 
                        <a href="/Menu/WorkHistory/AccessFactMast.aspx" target="imgbox" onmousedown="switchColors(this, '#EB2626')">Access</a> 
                        <a href="/Menu/WorkHistory/LeicsPolice.aspx" target="imgbox" onmousedown="switchColors(this, '#EB2626')">Leicestershire Police</a>    
                        <a href="/Menu/WorkHistory/NextPlc.aspx" target="imgbox" onmousedown="switchColors(this, '#EB2626')">Next PLC</a> 
                        </div>                                          
                    </div>
                    <p>EDUCATION</p>
                    <div class="section" >
                        <div class="textalignWORKHISTORY">                        
                        <a href="/Menu/Education/DeMontUni.aspx" target="imgbox" onmousedown="switchColors(this, '#EB2626')">DeMont University</a> 
                        <a href="/Menu/Education/LoughTech.aspx" target="imgbox" onmousedown="switchColors(this, '#EB2626')">Loughborough College</a> 
                        <a href="/Menu/Education/NorfolkTech.aspx" target="imgbox" onmousedown="switchColors(this, '#EB2626')">Norfolk College</a>                          
                        </div>                                          
                    </div>
                    <p>MISCELLANEOUS</p>
                    <div class="section">
                        <div class="textalignMISCELLANEOUS">                       
                       <a href="/Menu/Miscelaneous/ContactNewForm.aspx" target="imgbox" onmousedown="switchColors(this, '#EB2626')">Contact</a>  
                      <%--<a href="/cv/KALAS CV.pdf#zoom=50,75,20" target="imgbox" onmousedown="switchColors(this, '#EB2626')">CV (PDF)</a> --%> 
                 <%--  <a href="/Test.aspx" target="imgbox" onmousedown="switchColors(this, '#EB2626')">Test</a>--%>
                          
                          
                            <%-- http://bashooka.com/coding/22-excellent-responsive-navigation-menu-examples/--%>    
                           
                        </div>
                    </div>

            </div>  
            </div>
        

      <%-- <div class="iframe-trans-fix-container">--%>
 <%--style="visibility:hidden;background-color: transparent;" onload="this.style.visibility = 'visible';"--%>
             
         <iframe frameborder="0" class="iframe-trans-fix" scrolling="no" onload="this.style.visibility='visible';" src="/AboutMe.aspx" name="imgbox" id="imgbox" >     <%-- --%>
          <%--  <p>iframes are not supported by your browser.</p>--%><%--style="visibility:hidden;"--%>
        </iframe><br />  

       <%-- <div class="fade-out-FooterDiv">  --%>
            
                  

    </div>   

           <div class="fade-out-FooterDiv"> 
            <div class="FooterDiv"  >           
                
                         
            <%--<script type="text/javascript" language="JavaScript"><!--
                if ((navigator.appName == "Microsoft Internet Explorer") && (parseInt(navigator.appVersion) >= 4)) {
                var url = "http://www.javascriptfreecode.com";
                var title = "Webloger - Web Authoring Tools";
                document.write('<A HREF="javascript:window.ext');
                document.write('ernal.AddFavorite(url,title);" ');
                document.write('onMouseOver=" window.status=');
                document.write("'Add our site to your favorites!'; return true ");
                document.write('"onMouseOut=" window.status=');
                document.write("' '; return true ");
                document.write('">Add our site to your favorites!</a>');
                }
                else {
                    var msg = "Bookmark ";
                    if (navigator.appName == "Netscape") msg += "  (Ctrl-D)";
                    document.write(msg);
                }    
            </script>           --%> 
             </div>
        </div>
      
    
            
      
   <%-- </form>--%>
    </div> 
    </div>
        </body>
    
      
</html>
