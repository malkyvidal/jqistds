<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bubling.aspx.cs" Inherits="JqueryDeferred.Bubling" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="Scripts/jquery-3.1.1.js"></script>
    <script>
        $(document).ready(function () {

            //bubbling: el elemento de adentro (button) propaga el evento click a su contenedor
            // como el div tambien define el evento click, si se hace click en el boto se disparan los eventos click del boton y del div en ese orden
            // si se hace click en el div pero fuera del boton, solo se dispara el click del div
            //div1.addEventListener("click", myEventHandler1);
            //button1.addEventListener("click", myEventHandler2);
            //function myEventHandler1(e) {
            //    alert("div");
            //}
            //function myEventHandler2(e) {
            //    alert("button");
            //}


            // si se define solo el evento para el contenedor, los elementos contenidos disparan el evento,
            //pero el evento es manejado por el handler del contenedor,en este caso podemos obtener el elemento
            // que disparo el evento (target id)
            //div2.addEventListener("click", myEventHandler1);
            //function myEventHandler1(e) {
            //    alert(e.target.id);
            //};


            //pasando el parametro true al addEventListeber, el bubling se hace del contenedor al contenido.
            // es decir se ejecuta primero el metodo del div y luego el del button
            //div3.addEventListener("click", myEventHandler1, true);
            //buttonD.addEventListener("click", myEventHandler2);
            //function myEventHandler1(e) {
            //    alert("div");
            //}
            //function myEventHandler2(e) {
            //    alert("button");
            //}
        })
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div id="div2">
                <button id="buttonA">Manejado Por contenedor</button>
                <button id="button2">Manejado Por contenedor</button>
                <button id="button3">Manejado Por contenedor</button>
            </div>


            <div id="div1">
                Some Text
          <button id="button1">
             Bubling Up
          </button>
            </div>


            <div id="div3">
                Some Text
 <button id="buttonD">
     Bubbling Down
 </button>
            </div>
        </div>
    </form>
</body>
</html>
