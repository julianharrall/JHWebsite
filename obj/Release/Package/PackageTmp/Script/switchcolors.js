/* File Created: May 5, 2015 */

function switchColors(element, color) {
    links = document.getElementsByTagName("a");
    for (var i = 0; i < links.length; i++)
        links.item(i).style.color = 'white';

    element.style.color = color;


    // stop white flash when page loaded into iframe
    parent.document.getElementById('imgbox').style.visibility = "hidden";
}