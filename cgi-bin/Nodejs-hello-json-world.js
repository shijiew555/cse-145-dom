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

<body>
    
   
    <p>{"IP":"<span id="gfg"></span>","heading":"Hello, JS!",
        "message":"This response was generated with the NodeJS 
        programming language","time":"<span id="time"></span>",
        "title":"Hello, NodeJS!"}</p>

</body>
</html>
