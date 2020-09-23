<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirming.aspx.cs" Inherits="KPWebsite.Menu.Miscelaneous.Confirming" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <link href="~/Styles/Main.css" rel="stylesheet" type="text/css" /> 
    <link href="~/Styles/Contact.css" rel="stylesheet" type="text/css" />
      <script type="text/javascript" language="JavaScript" src="/Script/RightClickDisable.js"></script>  
    
     
     
    <title></title>
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
     <div style="background-image: url(/images/running3.gif); margin-left: 200px;background-size: cover;background-position:center; background-repeat:no-repeat; height: 400px; width: 500px; "/>

     <%--<div  id="ConfirmingForm" > </div> --%>
   
   
    </form>
</body>
</html>
