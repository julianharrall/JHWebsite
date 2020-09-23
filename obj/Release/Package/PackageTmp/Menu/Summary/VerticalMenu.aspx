<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerticalMenu.aspx.cs" Inherits="KPWebsite.Menu.Summary.VerticalMenu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%-- <link href="~/Styles/GraphImageStyle.css" rel="stylesheet" type="text/css" />--%>
     <link href="~/Styles/Main.css" rel="stylesheet" type="text/css" />
   <%-- <script type="text/javascript" language="JavaScript" src="/Script/GraphScript.js"></script>--%>   
     <link rel="stylesheet" type="text/css" href="/Styles/cssverticalmenu.css" />
    <script type="text/javascript" language="JavaScript" src="/Script/RightClickDisable.js"></script> 
    <script type="text/javascript" src="/Script/cssverticalmenu.js"></script>
    <script type="text/javascript" language="JavaScript" src="/Script/switchcolors.js"></script> 
     <script type="text/javascript" src="/script/Draggable.js"></script>
    <link rel="stylesheet" type="text/css" href="/styles/Draggable.css"/>

      

    <script type="text/javascript">

        //function myfunctionAlert(x) {
        //    alert(x); //Alerts 2  
        //}
        var my_index = 100; //global var on page
        function myfunctionAlert(div_id) {
            //if (typeOf(div_id) == "string") {
                div_id = document.getElementById(div_id);
            //}
            div_id.style.zIndex = my_index++;
        }


    </script>


    <script type="text/javascript">
        function moreLess(divContentID, aMoreLessID) {
            //
            // The div whose height is to be minimized or maximized.
            //
            var divCont = document.getElementById(divContentID);
            //
            // The anchor which is used to perform more/less operation (maximize/minimize).
            //
            var aMoreLess = document.getElementById(aMoreLessID);

            //
            // Check to see if the content div is hidden.
            //
            if (divCont.style.overflow == 'hidden') {
                //
                // As the content div is HIDDEN, So make it visible.
                //
                divCont.style.overflow = 'visible';
                //
                // Remove height as we want to see all the text.
                //
                divCont.style.height = 'auto';
                //
                // Change the text of anchor.
                //
                aMoreLess.innerHTML = '-';
                aMoreLess.style.color = 'white'
            }
            else {
                //
                // As the content div is VISIBLE, So make it hidden to clip the text.
                //
                divCont.style.overflow = 'hidden';
                //
                // Again add the height so that we can see only few lines of text, rest of the text will be clipped as we set overflow to hidden.
                //
                divCont.style.height = '25px';
                //
                // Change the text of anchor.
                //
                aMoreLess.innerHTML = '+';
                aMoreLess.style.fontSize = 'large';
                aMoreLess.style.color = 'white'
                //document.getElementById(aMoreLessID).style.height = "500px";
            }
        }
    </script>

    
     
</head>
<body onload="noRightClick()">
    <form id="form1" runat="server">
         <div id="AboutIFrameDivHeaderLive" style="margin-top: -8px;">Experiences</div>  
         <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>   
    </form>
     <div align="left" style="width:7%; position: absolute;top: 75px; left:30px" runat="server" id="divMain" > 
          <%-- right controls the distance text box is from right i.e. moves horizontally --%>
        <ul id="verticalmenu" class="glossymenu">
                <li><a href="#">Decision making</a>
                <ul>
                   <%-- <li><a href="javascript:GenerateLinks(Leadership1)" onmousedown="switchColors(this, '#EB2626')">Example1a</a></li>--%>
                   <li><a <%--onmousedown="switchColors(this, '#EB2626')"--%>><button type="button" style="height:20px; width:63px; border: none;padding: 0px 0px; text-align: center;  
            position: absolute; right: 0px; top: 0px; font-size: 12px; color:white; background-color:#707177"    onclick="myFunctiondisplay('mydiv')" value="Example" >Example</button></a></li>
                                 
                </ul>
                </li>
                <li><a href="#">Resourcefulness</a>
                <ul>
                   <%-- <li><a href="javascript:GenerateLinks(IT1)" onmousedown="switchColors(this, '#EB2626')">Example1</a></li>--%>
                    <li><a <%--onmousedown="switchColors(this, '#EB2626')"--%>><button type="button" style="height:20px; width:63px; border: none;padding: 0px 0px; text-align: center;  
            position: absolute;    right: 0px;    top: 0px; font-size: 12px; color:white; background-color:#707177"   onclick="myFunctiondisplay('mydiv2')"  >Example</button></a></li>
                
                  
                </ul>
                </li>
                <li><a href="#">Flexibility</a>
                <ul>
                   <%-- <li><a href="javascript:GenerateLinks(Administration1)" onmousedown="switchColors(this, '#EB2626')">Example1</a></li>--%>
                    <li><a <%--onmousedown ="switchColors(this, '#EB2626')"--%>><button type="button" style="height:20px; width:63px; border: none;padding: 0px 0px; text-align: center;  
            position: absolute;    right: 0px;    top: 0px; font-size: 12px; color:white; background-color:#707177"   onclick="myFunctiondisplay('mydiv3')"  >Example</button></a></li>
                
                   
                </ul>
                
                </li>
            <li><a href="#">Technical</a>
                <ul>
                   <%-- <li><a href="javascript:GenerateLinks(Administration1)" onmousedown="switchColors(this, '#EB2626')">Example1</a></li>--%>
                    <li><a <%--onmousedown="switchColors(this, '#EB2626')"--%>><button type="button" style="height:20px; width:62px; border: none;padding: 0px 0px; text-align: center;  
            position: absolute;    right: 0px;    top: 0px; font-size: 12px; color:white; background-color:#707177"   onclick="myFunctiondisplay('mydiv4')" >Example</button></a></li>
                
                   
                </ul>
                
                </li>
            <li><a href="#">Communication</a>
                <ul>
                    <%--<li><a href="javascript:GenerateLinks(People1)" onmousedown="switchColors(this, '#EB2626')">Example1</a></li>--%>
                     <li><a <%--onmousedown="switchColors(this, '#EB2626')"--%>><button type="button" style="height:20px; width:63px; border: none;padding: 0px 0px; text-align: center;  
            position: absolute;    right: 0px;    top: 0px; font-size: 12px; color:white; background-color:#707177"   onclick="myFunctiondisplay('mydiv5')"  >Example</button></a></li>
                
                   
                    
                </ul>
            </li>            
            <li><a href="#">Teamwork</a>
                <ul>
                   <%-- <li><a href="javascript:GenerateLinks(Administration1)" onmousedown="switchColors(this, '#EB2626')">Example1</a></li>--%>
                    <li><a <%--onmousedown="switchColors(this, '#EB2626')"--%>><button type="button" style="height:20px; width:63px; border: none;padding: 0px 0px; text-align: center;  
            position: absolute;    right: 0px;    top: 0px; font-size: 12px; color:white; background-color:#707177"   onclick="myFunctiondisplay('mydiv6')" >Example</button></a></li>
                
                   
                </ul>
                
                </li>
            <li><a href="#">Analytical</a>
                <ul>
                    <%--<li><a href="javascript:GenerateLinks(People1)" onmousedown="switchColors(this, '#EB2626')">Example1</a></li>--%>
                     <li><a <%--onmousedown="switchColors(this, '#EB2626')"--%>><button type="button" style="height:20px; width:63px; border: none;padding: 0px 0px; text-align: center;  
            position: absolute;    right: 0px;    top: 0px; font-size: 12px; color:white; background-color:#707177"   onclick="myFunctiondisplay('mydiv7')" >Example</button></a></li>
                
                   
                    
                </ul>
            </li>  
            <%--<li><a href="#">Manage Performance</a>
                <ul>                  
                    <li><a onmousedown="switchColors(this, '#EB2626')"><button type="button" style="height:20px; width:63px; border: none;padding: 0px 0px; text-align: center;  
            position: absolute;    right: 0px;    top: 0px; font-size: 12px; color:white; background-color:#707177"   onclick="myFunctiondisplay('mydiv8')"  >Example</button></a></li>
                                   
                </ul>                
                </li>--%>
           <%-- <li><a href="#">Planning</a>
                <ul>                  
                     <li><a onmousedown="switchColors(this, '#EB2626')"><button type="button" style="height:20px; width:63px; border: none;padding: 0px 0px; text-align: center;  
            position: absolute;    right: 0px;    top: 0px; font-size: 12px; color:white; background-color:#707177"   onclick="myFunctiondisplay('mydiv9')" >Example</button></a></li>
                                 
                </ul>
            </li>  --%> 
             <li><a href="#">Problem Solving</a>
                <ul>
                    <%--<li><a href="javascript:GenerateLinks(People1)" onmousedown="switchColors(this, '#EB2626')">Example1</a></li>--%>
                     <li><a <%--onmousedown="switchColors(this, '#EB2626')"--%>><button type="button" style="height:20px; width:63px; border: none;padding: 0px 0px; text-align: center;  
            position: absolute;    right: 0px;    top: 0px; font-size: 12px; color:white; background-color:#707177"   onclick="myFunctiondisplay('mydiv10')" >Example</button></a></li>
                                 
                </ul>
            </li>   
            </ul> 

    
    </div>

    
    
    <div id="mydiv" onclick="myfunctionAlert('mydiv')" style="height:250px; position: absolute;">       
        <div id="mydivheader" onclick="myfunctionAlert('mydivheader')"><p style="font-size:18px; font-family: verdana; text-align: left; vertical-align:text-top; position: absolute; top: -15px; left: 5px; " >Decision making</p> 
            <button type="button" style="height:25px; width:22px; border: none;padding: 0px 0px; text-align: center; background-color: tomato; 
            position: absolute;    right: 0px;    top: 0px; font-size: 16px; color:white"   onclick="myFunction('mydiv');">×</button>
            <div style="left:224px; text-decoration:none; background-color:#6F7078; width:25px; height:25px; position: absolute; text-align:center; top:0; float: right;"> <a id="anchorMoreLess1" onclick="moreLess('mydiv','anchorMoreLess1'); return false;" style="text-decoration:none;" href="#"><font color="white" size="5" >-</font></a></div>
        </div>
       <div id="decdiv" style="height:200px;" runat="server"> 

       <%-- <p>Move</p>
        <p>this</p>
        <p>DIV</p>--%>

       </div>
       
       
    </div>

     <script type="text/javascript" language="JavaScript">dragElement(document.getElementById(("mydiv")));</script>
    <%--<script type="text/javascript" language="JavaScript">dragElement2(document.getElementById(("mydivheader")));</script>--%>

    <div id="mydiv2" onclick="myfunctionAlert('mydiv2')" style="height:250px;">       
        <div id="mydivheader2" onclick="myfunctionAlert('mydivheader2')"><p style="font-size:18px; font-family: verdana; text-align: left; vertical-align:text-top; position: absolute; top: -15px; left: 5px; " >Resourcefulness</p> 
            <button type="button" style="height:25px; width:22px; border: none;padding: 0px 0px; text-align: center; background-color: tomato; 
            position: absolute;    right: 0px;    top: 0px; font-size: 16px; color:white"   onclick="myFunction('mydiv2');">×</button>
            <div style="left:224px; text-decoration:none; background-color:#6F7078; width:25px; height:25px; position: absolute; text-align:center; top:0; float: right;"> <a id="anchorMoreLess2" onclick="moreLess('mydiv2','anchorMoreLess2'); return false;" style="text-decoration:none;" href="#"><font color="white" size="5" >-</font></a></div>
        </div>
       <div id="resdiv" style="height:200px;" runat="server">

        <%--<p>Move</p>
        <p>this</p>
        <p>DIV</p>--%>

       </div>
       
       
    </div>    

     <script type="text/javascript" language="JavaScript">dragElement(document.getElementById(("mydiv2")));</script>

     <div id="mydiv3" onclick="myfunctionAlert('mydiv3')" style="height:250px;">       
        <div id="mydivheader3" onclick="myfunctionAlert('mydivheader3')"><p style="font-size:18px; font-family: verdana; text-align: left; vertical-align:text-top; position: absolute; top: -15px; left: 5px; " >Flexibility</p> 
            <button type="button" style="height:25px; width:22px; border: none;padding: 0px 0px; text-align: center; background-color: tomato; 
            position: absolute;    right: 0px;    top: 0px; font-size: 16px; color:white"   onclick="myFunction('mydiv3');">×</button>
            <div style="left:224px; text-decoration:none; background-color:#6F7078; width:25px; height:25px; position: absolute; text-align:center; top:0; float: right;"> <a id="anchorMoreLess3" onclick="moreLess('mydiv3','anchorMoreLess3'); return false;" style="text-decoration:none;" href="#"><font color="white" size="5" >-</font></a></div>
        </div>
       <div id="flexdiv" style="height:200px;" runat="server"> 

       <%-- <p>Move</p>
        <p>this</p>
        <p>DIV</p>--%>

       </div>
       
       
    </div>    

     <script type="text/javascript" language="JavaScript">dragElement(document.getElementById(("mydiv3")));</script>

     <div id="mydiv4" onclick="myfunctionAlert('mydiv4')" style="height:250px;">       
        <div id="mydivheader4" onclick="myfunctionAlert('mydivheader4')"><p style="font-size:18px; font-family: verdana; text-align: left; vertical-align:text-top; position: absolute; top: -15px; left: 5px; " >Technical</p> 
            <button type="button" style="height:25px; width:22px; border: none;padding: 0px 0px; text-align: center; background-color: tomato; 
            position: absolute;    right: 0px;    top: 0px; font-size: 16px; color:white"   onclick="myFunction('mydiv4');">×</button>
            <div style="left:224px; text-decoration:none; background-color:#6F7078; width:25px; height:25px; position: absolute; text-align:center; top:0; float: right;"> <a id="anchorMoreLess4" onclick="moreLess('mydiv4','anchorMoreLess4'); return false;" style="text-decoration:none;" href="#"><font color="white" size="5" >-</font></a></div>
        </div>
       <div id="techdiv" style="height:200px;" runat="server">

        <p>Move</p>
        <p>this</p>
        <p>DIV</p>

       </div>
       
       
    </div>    

     <script type="text/javascript" language="JavaScript">dragElement(document.getElementById(("mydiv4")));</script>

    <div id="mydiv5" onclick="myfunctionAlert('mydiv5')" style="height:250px;">       
        <div id="mydivheader5" onclick="myfunctionAlert('mydivheader5')"><p style="font-size:18px; font-family: verdana; text-align: left; vertical-align:text-top; position: absolute; top: -15px; left: 5px; " >Communication</p> 
            <button type="button" style="height:25px; width:22px; border: none;padding: 0px 0px; text-align: center; background-color: tomato; 
            position: absolute;    right: 0px;    top: 0px; font-size: 16px; color:white"   onclick="myFunction('mydiv5');">×</button>
            <div style="left:224px; text-decoration:none; background-color:#6F7078; width:25px; height:25px; position: absolute; text-align:center; top:0; float: right;"> <a id="anchorMoreLess5" onclick="moreLess('mydiv5','anchorMoreLess5'); return false;" style="text-decoration:none;" href="#"><font color="white" size="5" >-</font></a></div>
        </div>
       <div id="commdiv" style="height:200px;" runat="server"> 

        <%--<p>Move</p>
        <p>this</p>
        <p>DIV</p>--%>

       </div>
       
       
    </div> 

     <script type="text/javascript" language="JavaScript">dragElement(document.getElementById(("mydiv5")));</script>

  

   <div id="mydiv6" onclick="myfunctionAlert('mydiv6')" style="height:250px;">       
        <div id="mydivheader6" onclick="myfunctionAlert('mydivheader6')"><p style="font-size:18px; font-family: verdana; text-align: left; vertical-align:text-top; position: absolute; top: -15px; left: 5px; " >Teamwork</p> 
            <button type="button" style="height:25px; width:22px; border: none;padding: 0px 0px; text-align: center; background-color: tomato; 
            position: absolute;    right: 0px;    top: 0px; font-size: 16px; color:white"   onclick="myFunction('mydiv6');">×</button>
            <div style="left:224px; text-decoration:none; background-color:#6F7078; width:25px; height:25px; position: absolute; text-align:center; top:0; float: right;"> <a id="anchorMoreLess6" onclick="moreLess('mydiv6','anchorMoreLess6'); return false;" style="text-decoration:none;" href="#"><font color="white" size="5" >-</font></a></div>
        </div>
       <div id="teamdiv" style="height:200px;" runat="server"> 

        <p>Move</p>
        <p>this</p>
        <p>DIV</p></div>  
       
    </div> 

     <script type="text/javascript" language="JavaScript">dragElement(document.getElementById(("mydiv6")));</script>

    <div id="mydiv7" onclick="myfunctionAlert('mydiv7')" style="height:250px;">       
        <div id="mydivheader7" onclick="myfunctionAlert('mydivheader7')"><p style="font-size:18px; font-family: verdana; text-align: left; vertical-align:text-top; position: absolute; top: -15px; left: 5px; " >Analytical</p> 
            <button type="button" style="height:25px; width:22px; border: none;padding: 0px 0px; text-align: center; background-color: tomato; 
            position: absolute;    right: 0px;    top: 0px; font-size: 16px; color:white"   onclick="myFunction('mydiv7');">×</button>
            <div style="left:224px; text-decoration:none; background-color:#6F7078; width:25px; height:25px; position: absolute; text-align:center; top:0; float: right;"> <a id="anchorMoreLess7" onclick="moreLess('mydiv7','anchorMoreLess7'); return false;" style="text-decoration:none;" href="#"><font color="white" size="5" >-</font></a></div>
        </div>
       <div id="anadiv" style="height:200px;" runat="server">

       <%-- <p>Move</p>
        <p>this</p>
        <p>DIV</p>--%>

       </div>      
       
    </div> 

     <script type="text/javascript" language="JavaScript">dragElement(document.getElementById(("mydiv7")));</script>

     <div id="mydiv8" onclick="myfunctionAlert('mydiv8')" style="height:250px;">       
        <div id="mydivheader8" onclick="myfunctionAlert('mydivheader8')"><p style="font-size:18px; font-family: verdana; text-align: left; vertical-align:text-top; position: absolute; top: -15px; left: 5px; " >Manage Performance</p> 
            <button type="button" style="height:25px; width:22px; border: none;padding: 0px 0px; text-align: center; background-color: tomato; 
            position: absolute;    right: 0px;    top: 0px; font-size: 16px; color:white"   onclick="myFunction('mydiv8');">×</button>
            <div style="left:224px; text-decoration:none; background-color:#6F7078; width:25px; height:25px; position: absolute; text-align:center; top:0; float: right;"> <a id="anchorMoreLess8" onclick="moreLess('mydiv8','anchorMoreLess8'); return false;" style="text-decoration:none;" href="#"><font color="white" size="5" >-</font></a></div>
        </div>
       <div id="manadiv" style="height:200px; " runat="server"><%--width: 270px;--%>

        <%--<p>Move</p>
        <p>this</p>
        <p>DIV</p>--%>


       </div>      
       
    </div> 

     <script type="text/javascript" language="JavaScript">dragElement(document.getElementById(("mydiv8")));</script>

     <div id="mydiv9" onclick="myfunctionAlert('mydiv9')" style="height:250px;">       
        <div id="mydivheader9" onclick="myfunctionAlert('mydivheader9')"><p style="font-size:18px; font-family: verdana; text-align: left; vertical-align:text-top; position: absolute; top: -15px; left: 5px; " >Planning</p> 
            <button type="button" style="height:25px; width:22px; border: none;padding: 0px 0px; text-align: center; background-color: tomato; 
            position: absolute;    right: 0px;    top: 0px; font-size: 16px; color:white"   onclick="myFunction('mydiv9');">×</button>
            <div style="left:224px; text-decoration:none; background-color:#6F7078; width:25px; height:25px; position: absolute; text-align:center; top:0; float: right;"> <a id="anchorMoreLess9" onclick="moreLess('mydiv9','anchorMoreLess9'); return false;" style="text-decoration:none;" href="#"><font color="white" size="5" >-</font></a></div>
        </div>
       <div id="plandiv" style="height:200px;" runat="server">

        <%--<p>Move</p>
        <p>this</p>
        <p>DIV</p>--%>

       </div>      
       
    </div> 

     <script type="text/javascript" language="JavaScript">dragElement(document.getElementById(("mydiv9")));</script>

     <div id="mydiv10" onclick="myfunctionAlert('mydiv10')" style="height:250px;">       
        <div id="mydivheader10" onclick="myfunctionAlert('mydivheader10')"><p style="font-size:18px; font-family: verdana; text-align: left; vertical-align:text-top; position: absolute; top: -15px; left: 5px; " >Problem Solving</p> 
            <button type="button" style="height:25px; width:22px; border: none;padding: 0px 0px; text-align: center; background-color: tomato; 
            position: absolute;    right: 0px;    top: 0px; font-size: 16px; color:white"   onclick="myFunction('mydiv10');">×</button>
            <div style="left:224px; text-decoration:none; background-color:#6F7078; width:25px; height:25px; position: absolute; text-align:center; top:0; float: right;"> <a id="anchorMoreLess10" onclick="moreLess('mydiv10','anchorMoreLess10'); return false;" style="text-decoration:none;" href="#"><font color="white" size="5" >-</font></a></div>
        </div>
       <div id="probdiv" style="height:200px;" runat="server">

       <%-- <p>Move</p>
        <p>this</p>
        <p>DIV</p>--%>

       </div>      
       
    </div> 

     <script type="text/javascript" language="JavaScript">dragElement(document.getElementById(("mydiv10")));</script>

    <script type="text/javascript" language="JavaScript">
        window.onload = function () {
            document.getElementById("mydiv").style.display = "none";
            document.getElementById("mydiv2").style.display = "none";
            document.getElementById("mydiv3").style.display = "none";
            document.getElementById("mydiv4").style.display = "none";
            document.getElementById("mydiv5").style.display = "none";
            document.getElementById("mydiv6").style.display = "none";
            document.getElementById("mydiv7").style.display = "none";
            document.getElementById("mydiv8").style.display = "none";
            document.getElementById("mydiv9").style.display = "none";
            document.getElementById("mydiv10").style.display = "none";
        };</script>


   
    <div align="right" style="width:348px; position: absolute;top: 80px; right:120px" runat="server" id="verticalDiv" > </div>
    <%-- right controls the distance text box is from right i.e. moves horizontally --%>
</body>
</html>
<script type="text/javascript" language="JavaScript">
        var Flexibility1 = "Flexibility";
   
    var IT1 = "Technical";
   
    var Administration1 = "Planning";
    var People1 = "Communication";
    var ProblemSolving = "Problem Solving";
   
    


    function GenerateLinks(pSkill) {

        PageMethods.GenerateLinks(pSkill, function (result) {

            document.getElementById('verticalDiv').innerHTML = result;
        });
    }

</script>