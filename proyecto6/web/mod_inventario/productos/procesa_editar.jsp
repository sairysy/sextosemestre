<%@page import="java.sql.Time"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,ReglasDeNegocio.*"%>
<%@page import="AccesoADatos.*"%>
<!DOCTYPE html>
<%
    try {
            Producto producto=new Producto();
            producto.setNombreproducto(request.getParameter("nombreproducto_producto"));
            Categoria categoria = new Categoria();
            Categoria categorias = categoria.categoria_buscarporid(Integer.valueOf(request.getParameter("categoriaid")));
            producto.setCategoria(categorias);            
            producto.setStock(Integer.valueOf(request.getParameter("stock_producto")));
            producto.setPrecio(Double.valueOf(request.getParameter("precio_producto")));                        
            
           boolean result= Producto.producto_editar(producto);
             if (result)
                out.println("<script> location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script> location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }
%>

