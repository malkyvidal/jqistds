<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JqueryEventData.aspx.cs" Inherits="JqueryDeferred.JqueryEventData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="Scripts/jquery-3.1.1.js"></script>
    <script>
        //Event Data

        //Perhaps the most useful addition that jQuery makes to the event handling mechanism is the ability to pass custom data to an event handler. If you include an object of data as the second or third parameter in on or one, then that object will be passed to the event handler in the data property of the event object. 
        //The key point is that the link to the object is live. The object is set at the time that the event handler is attached, but what matters is the state of the object when the event happens. 
        //For example:
 
        //    mydata={};
        //mydata.value=10; 

        //$("button").on("click",mydata,function(event){ 
        //    alert(event.data.value);
        //});
        //mydata.value=20;

        var data = { nombre: 'pepe' };
        $(document).ready(function () {
            $("#btn").on('click', data, function myfunction(e) {
                alert(e.data.nombre);
                e.preventDefault(); //lo bueno de event data es que el dato se puede cambiar en otro evento(ver abajoa) y siempre
                // se muestra el dato actualizado
            });
            $("#btnCambia").on('click', function (e) {
                data.nombre = 'malky';
                console.log(data);
                e.preventDefault();
            });
        })

      
       
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <button id="btn">
            Event Data
        </button>
        <button id="btnCambia"> Cambia Data
        </button>
    </div>
    </form>
</body>
</html>
