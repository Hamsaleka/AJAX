<!DOCTYPE html><html lang="en">
    <head>
       <title>SO question 4112686</title>
       <script src="http://code.jquery.com/jquery-latest.min.js"></script>
       <script>
         $(document).ready(function() {
             $("#somebutton").click(function() {
                 servletCall();
             });
    
         });
         function servletCall() {
             $.post(
                 "GetUserServlet", 
                 {name : "Message from jsp"}, //meaasge you want to send
                 function(result) {
                 $('#somediv').html('Here is your result : <strong>' + result + '</strong>'); //message you want to show
             });
         };
       </script>
    </head>
    <body>
         <button id="somebutton">press here</button>
         <div id="somediv"></div>
    </body>
    </html>