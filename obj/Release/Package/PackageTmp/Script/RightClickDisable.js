function noRightClick() {
    if (event.button == 2) {
        document.oncontextmenu = document.body.oncontextmenu = function () { return false; }
//        alert('Hello :)')
        //        alert(location.hostname);
        //alert("/Home.aspx");
        //document.location.href = location.hostname + "/personal.aspx";
        //window.location = "http://www.google.com/";

        //var myWindow = window.open("", "MsgWindow", "width=200, height=100");
//        var myWindow;
//        myWindow.document.write("<img src='images/me.jpg' alt='Smiley face' height='42' width='42'> ");
//        window.open("", "MsgWindow", "width=200, height=100");


    }
}
document.onmousedown = noRightClick