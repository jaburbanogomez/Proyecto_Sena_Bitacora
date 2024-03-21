package conexion_bd;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "cargar2", urlPatterns = {"/cargar2"})
public class cargar2 extends HttpServlet{

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Conexion_bd cn = new Conexion_bd();
        
 //Abre try cath de regional y centros************************
  
            try {
         
            cn.control();
            String sql = "select id_centro,nombre_centro from centros;";
            cn.st = cn.con.createStatement();
            cn.rt = cn.st.executeQuery(sql);
            
           
            int i=0,total=0;
            
            while(cn.rt.next()){
                total++;
            }
            
            String[] data = new String[total];
            
            String sqlx = "select id_centro,nombre_centro from centros where id_regional='"+(request.getParameter("regional"))+"'";
            cn.rt = cn.st.executeQuery(sqlx);
            
            data[0]=("<option value=''>:.</option>");
            while (cn.rt.next()) {
                i++;
                data[i]=("<option value='"+cn.rt.getString(1)+"'>" + cn.rt.getString(2) + "</option>");
            }
            String completo="";
            for (int j = 0; j <= i; j++) {
                completo=completo+data[j];
            }
            
            response.setContentType("text/html");
            response.getWriter().write(completo);
            processRequest(request, response);
            
        } catch (Exception e) {
            response.setContentType("text/html");
            response.getWriter().write("<option>"+e+"</option>");
            processRequest(request, response);
        }
         
         //try cath de centros y areas
    try {
         
            cn.control();
            String sql = "select id_area,nombre_area from areas;";
            cn.st = cn.con.createStatement();
            cn.rt = cn.st.executeQuery(sql);
            
           
            int i=0,total=0;
            
            while(cn.rt.next()){
                total++;
            }
            
            String[] data = new String[total];
            
            String sqlx = "select id_area,nombre_area from areas where id_centro='"+(request.getParameter("centros"))+"'";
            cn.rt = cn.st.executeQuery(sqlx);
            while (cn.rt.next()) {
                i++;
                data[i]=("<option value='"+cn.rt.getString(1)+"'>" + cn.rt.getString(2) + "</option>");
            }
            String completo="";
            for (int j = 0; j <= i; j++) {
                completo=completo+data[j];
            }
            
            response.setContentType("text/html");
            response.getWriter().write(completo);
            processRequest(request, response);
            
        } catch (Exception e) {
            response.setContentType("text/html");
            response.getWriter().write("<option>"+e+"</option>");
            processRequest(request, response);
        }
         
         //try cath de area y titulacion
          try {
         
            cn.control();
            String sql = "select id_titulacion,nombre_titulacion from titulacion;";
            cn.st = cn.con.createStatement();
            cn.rt = cn.st.executeQuery(sql);
            
           
            int i=0,total=0;
            
            while(cn.rt.next()){
                total++;
            }
            
            String[] data = new String[total];
            
            String sqlx = "select id_titulacion,nombre_titulacion from titulacion where id_area='"+(request.getParameter("areas"))+"'";
            cn.rt = cn.st.executeQuery(sqlx);
            while (cn.rt.next()) {
                i++;
                data[i]=("<option value='"+cn.rt.getString(1)+"'>" + cn.rt.getString(2) + "</option>");
            }
            String completo="";
            for (int j = 0; j <= i; j++) {
                completo=completo+data[j];
            }
            
            response.setContentType("text/html");
            response.getWriter().write(completo);
            processRequest(request, response);
            
        } catch (Exception e) {
            response.setContentType("text/html");
            response.getWriter().write("<option>"+e+"</option>");
            processRequest(request, response);
        }
         
          
          //try cath de  titulacion y ficha
          try {
         
            cn.control();
            String sql = "select id_ficha,ficha_programa from fichas;";
            cn.st = cn.con.createStatement();
            cn.rt = cn.st.executeQuery(sql);
            
           
            int i=0,total=0;
            
            while(cn.rt.next()){
                total++;
            }
            
            String[] data = new String[total];
            
            String sqlx = "select id_ficha,ficha_programa from fichas where id_titulacion='"+(request.getParameter("titulacion"))+"'";
            cn.rt = cn.st.executeQuery(sqlx);
            while (cn.rt.next()) {
                i++;
                data[i]=("<option value='"+cn.rt.getString(1)+"'>" + cn.rt.getString(2) + "</option>");
            }
            String completo="";
            for (int j = 0; j <= i; j++) {
                completo=completo+data[j];
            }
            
            response.setContentType("text/html");
            response.getWriter().write(completo);
            processRequest(request, response);
            
        } catch (Exception e) {
            response.setContentType("text/html");
            response.getWriter().write("<option>"+e+"</option>");
            processRequest(request, response);
        }
         
 }
@Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}