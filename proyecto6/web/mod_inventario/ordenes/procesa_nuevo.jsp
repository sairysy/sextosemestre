<%@page import="java.sql.Timestamp"%>
<%@page import="ReglasDeNegocio.*"%>
<%@page import="java.sql.Time"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,ReglasDeNegocio.*"%>

<!DOCTYPE html>

<%
    try {
            Ordenes ordenes=new Ordenes();
            
            Proveedores proveedores = new Proveedores();
            Proveedores proveedoress = proveedores.proveedores_buscarporid(Integer.valueOf(request.getParameter("proveedorid")));
            ordenes.setProveedores(proveedoress);
            
             Producto producto = new Producto();            
            Producto productos = producto.producto_buscarporid(Integer.valueOf(request.getParameter("productoid")));       
            ordenes.setProducto(productos);
 
            
            ordenes.setCantidad(Integer.valueOf(request.getParameter("cantidad_ordenes")));
            ordenes.setPreciounitario(Double.valueOf(request.getParameter("preciounitario_ordenes")));
             ordenes.setNumeroorden(request.getParameter("numeroorden_ordenes"));
            ordenes.setEntregada(Boolean.valueOf(request.getParameter("entregada_ordenes"))); 
            ordenes.setFechaentrega(Timestamp.valueOf(request.getParameter("fechaentrega_ordenes"))); 
            boolean result= Ordenes.ordenes_insertar(ordenes);
             if (result)
                out.println("<script> location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script> location.replace('listar.jsp?alerta=no');</script>");
        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>
