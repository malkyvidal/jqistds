<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JqueryPromises.aspx.cs" Inherits="JqueryDeferred.JqueryPromises" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="Scripts/jquery-3.1.1.js"></script>
    <script>
        $(document).ready(function () {

            //uso de promises then si la promise ejecuta resolved y fail si es rejected

         // promise1.then(onSucess1, onFailure1); podemos pasarle onsucess y onFail functions
            $.get("/Partial.aspx").then(function (resultado) {

                $("#contenido").append(resultado);
            }).fail(function (res) {
                $("#contenido").append('<h1>Error!</h1>');
            })


            var myPromise1 = $.get("TextFile1.txt");
            var myPromise2 = $.get("Text3File2.txt");
            myTotalPromise = $.when(myPromise1, myPromise2);
            //cuando usamos when retorna un array
            //con when se espera a que todas las promesas se resuelvan
            //si alguna de las promesas es rejected, falla la promesa completa del when
            // tambien existe el metodo done..pero no sirve para encadenar promesas por que retorna siempre la misma
            // ver http://www.i-programmer.info/programming/jquery/4788-jquery-promises-a-deferred.html?start=2
            myTotalPromise.then(
             function (value1, value2) {
                 console.log(value1)
                 console.log(value2);
             }).catch(function () {
                 alert("error del when con catch");
             })
             //   .fail(function () {
             //    alert("Error de when");
             //});
        });

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="contenido">
    
    </div>
    </form>
</body>
</html>
