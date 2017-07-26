<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReinventadoEventos.aspx.cs" Inherits="JqueryDeferred.ReinventadoEventos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="Scripts/jquery-3.1.1.js"></script>
    <script>
        //The jQuery event system is very general and it even works with standard JavaScript and DOM objects. For example:
        //    var obj=$({}).on("myevent",function(event,param1,param2){
        //        alert(param1 + param2); 
        //    });

        //obj.trigger("myevent",["first","second"]);

        //event.target el elemento que dispara el evento
        //event.currentTarget , el elemento al que se le agrego el handler

        //Notice that you can stop bubbling by calling the event object's stopPropagation or by just returning false.  Notice that this doesn't
        //stop any other event handlers on the same element from running - just the bubbling of the event.
        //    If you want to stop everything after the current handler, other event handlers and bubbling,
        //    then use stopImmediatePropagation

//        If you specify a selector then you get something different.
//            What happens is that if a child element matches the selector then the parent 
//            will provide the event handler for the event. This is called a delegated event handler. 
//                Notice that, unlike the default bubbling, the child element doesn't have an event handler of its own. 
//An example will help make delegation clear:
//$("#div1").on("click","button",function(event){
//        alert($(event.currentTarget).attr("id"));});
//        Notice that now we have specified a selector "button". 
//            This means that any event that occurs on a 
//            button that is contained within the div will be handled by the event handler.
//                Now if you click on the button you will see the button1 message and no div1 message. 
//                    What might be more surprising is that you don't see anything if you click on the div.
//        In this case the div's event handler is only handling events on any button objects the div contains.


        $(document).ready(function () {
            $("#div1").on('click', 'button', function (e) {

                e.preventDefault();
                console.log($(e.currentTarget).attr('id'));
                console.log($(e.target).attr('id'));
                console.log($(this).attr('id'));
            });
        })

        


    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="div1">
        <button id="btn1">Click1</button>
        <button id="btn2">Click2</button>
        <button id="btn3">Click3</button>
    
    </div>
    </form>
</body>
</html>
