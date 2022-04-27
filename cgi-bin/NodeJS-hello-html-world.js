<!DOCTYPE html>
<html>
 <script src=
"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
  </script>
     
  <script>
    
      var time = new Date();      
      $.getJSON("https://api.ipify.org?format=json", function(data) {
               // Setting text of element P with id gfg
         $("#gfg").html(data.ip);
    })
   </script>
<head>
  <title>Hello NodeJS CGI World</title>
</head>
<body>
    <marquee>Wow!</marquee>
    <h1 align=center>Hello HTML World!</h1><hr/>
    <p>Hello world</p>
    <p>This page was generated with the NodeJS programming langauge</p>
    <p>This program was run at:<span id="time"></span></p>
    <p>Your current IP Address is: <span id="gfg"></span></p>

</body>
</html>
