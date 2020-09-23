<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="KPWebsite.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <link href="~/Styles/Main.css" rel="stylesheet" type="text/css" /> 
    <link href="~/Styles/Contact.css" rel="stylesheet" type="text/css" />
      <script type="text/javascript" src="/Script/RightClickDisable.js"></script>  
    
     
     
    <title></title>

     <script type="text/javascript">
         function zoom(type) {
             _targetsize = (type == 1) ? _targetsize * 1.2 : (type == 2) ? _targetsize * 0.8 : 1;
             $("#divGuide").animate({ zoom: _targetsize });
         }
</script>
</head>
<body onload="noRightClick()">

   <%-- <form id="form1" runat="server">
        <div id="AboutIFrameDivHeader2">Confirming Email Form</div>
    <div id="ConfirmationSummary2">  
        <p id="ConfirmationSummParagraph2" align="center">     
    
        </p>   
          
    </div>
     </form>--%>
      <div id="AboutIFrameDivHeaderLive" >Sending Email.........</div>


    <form id="form1" runat="server">
         <div style="background-image: url(/images/running3.gif); margin-left: 200px;background-size: cover;background-position:0px -30px; background-repeat:no-repeat; height: 450px; width: 500px; "/>
        </form>
</body>
</html>
