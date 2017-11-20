<%-- 
    Document   : carga
    Created on : 10-nov-2017, 10:47:19
    Author     : user
--%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="objetos.Proveedor"%>
<%@page import="mysql.DbConnection" %>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
    String razonSoc = "";
    String codProv = "";
    ResultSet rs1 = null;
    ResultSet rs2 = null;
    String facsOptions="";

    if (request != null) {
        DbConnection db = new DbConnection();
        db.conectar();
        if (request.getParameter("codProv") != null) {
            codProv=request.getParameter("codProv");
            String query = "SELECT * FROM proveedores WHERE cod_prov='" + codProv + "';";
            rs1 = db.query(query);
            System.out.println(query);
            while (rs1.next()) {
                razonSoc = rs1.getString("razon_social");
            }
            query = "SELECT * FROM factura WHERE cod_prov='" + "HSBC" + "';";
            rs2 = db.query(query);
            System.out.println(query);
            while (rs2.next()) {
                        facsOptions=facsOptions.concat("<option value='" + rs2.getString("idfactura") + "'>"+rs2.getString("nro")+"</option>");
                    }
        }
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <h1>Hello World!</h1>

    <form action="carga.jsp" method="POST">
        <label for="codProvTXT">Código Proveedor:</label><input type="text" name="codProv" id="codProvTXT" value="<%=codProv%>">
        <label for="razonSocDL">Razón social:</label><span name="razonSocDL" id="razonSocDL"><%=razonSoc%></span>
        <label>Factura Nº:</label>
        <select type="" name="nroFac">
            <%=facsOptions%> 
        </select>
        <label>Concepto:</label><input type="text" name="concepto">
        <input type="submit" value="Preparar"><input type="button" value="Guardar">

    </form>


    <script src="js/carga.js" type="text/javascript"></script>
    <script type="text/javascript">


    </script>

</html>
