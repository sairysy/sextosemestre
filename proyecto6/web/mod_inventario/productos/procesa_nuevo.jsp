
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,ReglasDeNegocio.*"%>
<!DOCTYPE html>
<%
         try {
            Producto producto=new Producto();
            producto.setNombreproducto(request.getParameter("nombre_producto"));
           boolean result= Producto.producto_insertar(producto);
             if (result)
                out.println("<script> alert('Se ha guardado correctamente...'); location.replace('listar.jsp');</script>");
            else 
                out.println("<script> alert('No se ha guardado correctamente...'); location.replace('listar.jsp');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

  
 %>
