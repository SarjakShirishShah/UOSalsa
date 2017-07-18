<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

<body>
<script type="text/javascript">
 var _contextPath = '<%=request.getContextPath()%>';	
</script>

<!-- Add Google Maps -->
<!-- <script src="https://maps.googleapis.com/maps/api/js"></script> -->
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyClfmDva645PFT2oQy_qnMtINc2w3z0VgE&libraries=geometry,places,directions"></script>
<script>
var myCenter = new google.maps.LatLng(45.4243606, -75.684654);

function initialize() {
var mapProp = {
center:myCenter,

zoom:12,
scrollwheel:true,
draggable:true,
mapTypeId:google.maps.MapTypeId.ROADMAP
};
console.log("my centre: ", myCenter);
var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker = new google.maps.Marker({
position:myCenter,
});

marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>

<!-- Footer -->
<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  <p>Website is made by Sarjak Shah</p>
  <p> <a href="https://www.linkedin.com/in/sarjak-shah" data-toggle="tooltip" title="Visit Sarjak's Profile">Visit my Professional Profile</a></p> 
</footer>

<script>
$(document).ready(function(){
  // Initialize Tooltip
  $('[data-toggle="tooltip"]').tooltip(); 
  
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {

      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
})
</script>

</body>
</html>