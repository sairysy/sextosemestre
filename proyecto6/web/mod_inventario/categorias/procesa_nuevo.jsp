

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,ReglasDeNegocio.*"%>
<!DOCTYPE html>
<%
         try {
            Categoria categoria=new Categoria();
            categoria.setNombre(request.getParameter("nombre_categoria"));
            categoria.setDescripcion(request.getParameter("descripcion_categoria"));
            
           boolean result= Categoria.categoria_insertar(categoria);
             if (result)
                out.println("<script> location.replace('listar.jsp?alerta=si');</script>");
            else 
                 out.println("<script> location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

  
 %>
