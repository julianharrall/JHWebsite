//dragElement(document.getElementById(("mydiv")));



function myFunction(x) {   
    var x = document.getElementById(x);   
    x.style.display = "none";       
}

function myFunctiondisplay(x) {  
    var x = document.getElementById(x);   
    if (x.style.display === "none") {
        x.style.display = "block";
    }    
}


function dragElement(elmnt) {
    var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
    if (document.getElementById(elmnt.id + "header")) {
        /* if present, the header is where you move the DIV from:*/
        document.getElementById(elmnt.id + "header").onmousedown = dragMouseDown;
    } else {
        /* otherwise, move the DIV from anywhere inside the DIV:*/
        elmnt.onmousedown = dragMouseDown;
    }

    function dragMouseDown(e) {
        e = e || window.event;
        // get the mouse cursor position at startup:
        pos3 = e.clientX;
        pos4 = e.clientY;
        document.onmouseup = closeDragElement;
        // call a function whenever the cursor moves:
        document.onmousemove = elementDrag;
    }

    function elementDrag(e) {
        e = e || window.event;
        // calculate the new cursor position:
        pos1 = pos3 - e.clientX;
        pos2 = pos4 - e.clientY;
        pos3 = e.clientX;
        pos4 = e.clientY;
        // set the element's new position:
        elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
        elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";

        // right limit
        if ((elmnt.offsetLeft - pos1) > 643) {
            elmnt.style.left = (643) + "px";
        }

        // bottom limit
        if ((elmnt.offsetTop - pos2) > 470) {
            elmnt.style.top = (470) + "px";
        }

        // top limit
        if ((elmnt.offsetTop - pos2) < 42)
        {
            elmnt.style.top = (42) + "px";
        }

        // left limit
        if ((elmnt.offsetLeft - pos1) < 290)
        {
            elmnt.style.left = (290) + "px";
        }
    }

    function closeDragElement() {
        /* stop moving when mouse button is released:*/
        document.onmouseup = null;
        document.onmousemove = null;
    }
}
