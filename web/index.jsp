<%-- 
    Document   : index
    Created on : 09-nov-2017, 11:20:11
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Emision de retenciones</title>
        <link href="css/index.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Sistema de emision de Retenciones</h1>
        <input type="button" value="Emitir">
        <input type="button" value="Consultar">
        <input type="button" value="Estadisticas">
        <input type="button" value="Salir">

        <div>
            <form action="comprobante.jsp" method="POST">
                <label>Proveedor:</label><input type="text" name="codProv">
                <label>Factura Nº:</label><input type="text" name="nroFac">
                <label>Concepto:</label><input type="text" name="concepto">
                <input type="submit" value="Preparar"><input type="button" value="Guardar">

            </form>

        </div>     

    </body>
</html>
