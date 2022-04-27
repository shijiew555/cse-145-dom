<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    </script>

    <script>
        var time = new Date();
        $.getJSON("https://api.ipify.org?format=json", function(data) {
            // Setting text of element P with id gfg
            $("#gfg").html(data.ip);
        })
    </script>

    <title>Document</title>
</head>

<body>
    <marquee>Wow!</marquee>
    <h1>Hello HTML World!</h1>
    <hr/>
    <p>Hello world</p >
    <p>This page was generated with the NodeJS programming langauge</p >
    <p>This program was run at:<span id="time"></span></p >
    <p>Your current IP Address is: <span id="gfg"></span></p >
</body>

</html>
