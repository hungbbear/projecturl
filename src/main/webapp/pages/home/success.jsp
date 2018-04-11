<%-- 
    Document   : success
    Created on : Jan 16, 2018, 10:28:42 AM
    Author     : Quan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Effects - Hide Demo</title>


  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    // run the currently selected effect
    function runEffect() {
      // get effect type from
      var selectedEffect = "highlight";
 
      // Most effect types need no options passed by default
      var options = {};
      // some effects have required parameters
      if ( selectedEffect === "scale" ) {
        options = { percent: 50 };
      } else if ( selectedEffect === "size" ) {
        options = { to: { width: 200, height: 30} };
      }
 
      // Run the effect
      $( "#effect" ).hide( selectedEffect, options, 1000, callback );
    };
 
    // Callback function to bring a hidden box back
    function callback() {
      setTimeout(function() {
        $( "#effect" ).removeAttr( "style" ).hide().fadeIn();
      }, 1000 );
    };
 
    // Set effect from select menu value
    $( "[name=effects]" ).on( "click", function() {
	
      runEffect();
    });
  } );
  </script>
</head>
<body>
 

  <div id="effect" class="ui-widget-content ui-corner-all">
   <a  class="short-url" href="http://localhost:18141/ProjectURL/${allSu.shortUrl}">http://localhost:18141/ProjectURL/${allSu.shortUrl}</a>
  </div>

<input name="effects" value="highlight"  type="submit" />
  


 
 
</body>
</html>