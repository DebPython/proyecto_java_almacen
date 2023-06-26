package com.emergente.controlador;



import com.emergente.dao.MarcaDAO;
import com.emergente.dao.MarcaDAOimpl;
import com.emergente.dao.ProductoDAO;
import com.emergente.dao.ProductoDAOimpl;

import com.emergente.modelo.Marca;
import com.emergente.modelo.Producto;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ProductoControlador", urlPatterns = {"/ProductoControlador"})
public class ProductoControlador extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            ProductoDAO dao = new ProductoDAOimpl();
            
            MarcaDAO daoMarca = new MarcaDAOimpl();
            
            int id;
            
            List<Marca> lista_marcas = null;
            

            Producto prod = new Producto();

            String action = (request.getParameter("action") != null) ? request.getParameter("action") : "view";
            switch (action) {
                case "add":
                    
                    lista_marcas = daoMarca.getAll();
                    
                    
                    request.setAttribute("lista_marcas", lista_marcas);
                    
                    request.setAttribute("producto", prod);
                    request.getRequestDispatcher("frmproducto.jsp").forward(request, response);
                    break;
                case "edit":
                    id = Integer.parseInt(request.getParameter("id_producto"));
                    prod = dao.getById(id);
 
                    lista_marcas = daoMarca.getAll();
                    request.setAttribute("lista_marcas", lista_marcas);
                    request.setAttribute("producto", prod);
                    request.getRequestDispatcher("frmproducto.jsp").forward(request, response);
                    break;
                case "delete":
                    id = Integer.parseInt(request.getParameter("id_producto"));
                    dao.delete(id);
                    response.sendRedirect("ProductoControlador");
                    break;
                case "view":
                    //obtener la lista de registros
                    List<Producto> lista = dao.getAll();
                    request.setAttribute("productos", lista);
                    request.getRequestDispatcher("productos.jsp").forward(request, response);
                    break;
            }
        } catch (Exception ex) {
            System.out.println("Error" + ex.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id_producto"));
        String nombre = request.getParameter("nombre");
        int stock = Integer.parseInt(request.getParameter("stock"));
        int id_marcas = Integer.parseInt(request.getParameter("id_marcas"));
       

        Producto prod = new Producto();
        prod.setId_producto(id);
        prod.setNombre(nombre);
        prod.setStock(stock);
        
        prod.setId_marcas(id_marcas);
        

        if (id == 0) {
            //Nuevo
            ProductoDAO dao = new ProductoDAOimpl();
            try {
                // Nuevo registro
                dao.insert(prod);
                response.sendRedirect("ProductoControlador");
            } catch (Exception ex) {
                System.out.println("Error al insertar " + ex.getMessage());
            }
        } else {
            //Editar
            ProductoDAO dao = new ProductoDAOimpl();
            try {
                dao.update(prod);
                response.sendRedirect("ProductoControlador");
            } catch (Exception ex) {
                System.out.println("Error al editar" + ex.getMessage());
            }
        }
    }

}
