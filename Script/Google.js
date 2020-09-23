/* File Created: November 4, 2014 */
function initialize() {
    var mapCanvas = document.getElementById('LeicesterMap');
    var mapOptions = {
        center: new google.maps.LatLng(52.6333, -1.1333),
        zoom: 12,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    }
    var map = new google.maps.Map(mapCanvas, mapOptions)
}
google.maps.event.addDomListener(window, 'load', initialize);