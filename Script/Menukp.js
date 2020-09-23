/* File Created: January 11, 2014 */
$(function () {
    //             $("a").mouseover(function () { $(this).addClass("highlightRow"); })
    //                  .mouseout(function () { $(this).removeClass("highlightRow"); });

    $(".section").hide();
    $("#Menu > p").click(function () {
        $(this).next().slideToggle("Slow");
    });
});
