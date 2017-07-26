<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JqueryEvents.aspx.cs" Inherits="JqueryDeferred.JqueryEvents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="Scripts/jquery-3.1.1.js"></script>
    <script>
//        In jQuery you register an event handler using on and remove an event handler using off. These are the only two functions you need but there are others that add some versatility. Versions of jQuery before 3 made use of a set of now deprecated functions - you can ignore these.
        //The on function has the basic form: http://www.i-programmer.info/programming/jquery/10533-jquery-3-reinventing-events.html?start=1
//.on(events,selector,data,handler)
//    where selector and data are optional and both are described in detail later in the chapter.
//    The simplest use of the on function is to attach a handler to an element:
        //    $("#button1").on("click",myEventHandler);

        //If you want to set multiple events in one operation you can use an alternative version of on:
        //    .on(eventsList,selector,data)
        //In this case the first parameter is an object of key/value pairs. The keys are events and the values are event handlers. 
        //For example:
        //    $("#button1").on({click:myEventHandler,
        //        dbclick:myEventHandler2});


//        Another jQuery extension to event handling is the one function. This works like on, but any event handler you add using it will only be triggered once on each element it has been added to. 
//For example if you use:
//$("#button1").one("click",myEventHandler);
//            then the event handler is added as before, but now it will only be called once. That is, the user can only click the button and trigger the event handler once. 


//        You can remove an event handler using the off function. 
//If you want to remove a specific event handler use:
//.off(events,selector,handler);

        function myEventHandler(e) {
            alert("Hola Eventos");
            e.stopPropagation();//para que el boton no haga bubbling up
        }
        $(document).ready(function () {
            $("#button1").on("click", myEventHandler);
            $("#div1").on('click', function (e) {
                
                alert('div');
            })
        })

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="div1">
        
        <h1>ClickDiv1</h1>
    <button id="button1">
        Click!
    </button>
    </div>
    </form>
</body>
</html>
