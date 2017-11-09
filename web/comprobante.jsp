<%-- 
    Document   : index
    Created on : 09-nov-2017, 11:20:11
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    String nroRet = "00038101";
    String razonSoc = "USINA POPULAR COOPERATIVA";
    String cuit = "30-54569405-7";
    String domicilio = "Av. 59 Nº 1798 Necochea, Bs.As.";
    String factura = "FC 0000-00752042";
    String fechaFC = "01/11/2017";
    String concepto = "suministro";
    String neto = "3,321.49";
    String iva = "896.81";
    String impRet = "896.81";
    String fechaRet = "8 de Noviembre de 2017";
    String porcRet = "100";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Emision de retenciones</title>
        <link href="css/comprobante.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="mainConteiner">
            <span id="membrete">
                <div id="GAVETECO"><b>GAVETECO S.A.I.C.F.e.I.</b></div>
                <div class="bajada">Av. BELGRANO 1281 - 1º Piso</div>
                <div class="bajada">(1093) Capital Federal</div>
                <div class="bajada">C.U.I.T.: 30-50373996-4</div>
                <div class="bajada">I.V.A. Responsable Inscripto</div>
            </span>
            <span id="comprobante">
                <div>COMPROBANTE</div>
                <div id="nroComp">Nº 0000 - <%=nroRet%></div>
            </span>
            <div id="cuerpo">
                <div id="titulo">Constancia de Retención IVA R.G. 18 AFIP</div>
                <div class="lineaDatos" id="lineaProv"><label>Proveedor:</label><span id="provSpan"><%=razonSoc%></span><label>C.U.I.T:</label><span id="cuitSpan"><%=cuit%></span></div>
                <div class="lineaDatos" id="lineaDom"><label>Domicilio:</label><span id="domSpan"><%=domicilio%></span></div>
                <div class="lineaDatos" id="lineaFac"><label>Factura:</label><span id="facSpan"><%=factura%></span><label>Fecha:</label><span id="fechaSpan"><%=fechaFC%></span></div>
                <div class="lineaDatos" id="lineaConc"><label>Concepto por el cual se practicó la retencion:</label><span id="concSpan"><%=concepto%></span></div>
                <div class="lineaDatos" id="lineaNeto"><label>Importe Neto $:</label><span id="netoSpan"><%=neto%></span></div>
                <div class="lineaDatos" id="lineaIva"><label>Importe IVA: $</label><span id="ivaSpan"><%=iva%></span></div>
                <div class="lineaDatos" id="lineaImpRet"><label>Retencion:</label><span id="porcSpan"><%=porcRet%></span><label>% $</label><span id="impRetSpan"><%=impRet%></span></div>
                <div class="lineaDatos lineaDatosFinal"><label>Buenos Aires: $</label><span id="fechaRetSpan"><%=fechaRet%></span></div>
            </div>
            <div id="lineaFirma">
                <label id="firmaLbl">Firma y Cargo</label>
            </div>
        </div>
        
    </body>
</html>
