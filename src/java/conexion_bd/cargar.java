package conexion_bd;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "cargar", urlPatterns = {"/cargar"})
public class cargar extends HttpServlet{

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
        //try cath de departamento y regional
        try {
            cn.control();
            String sql = "select codigo_municipio,nombre_municipio from municipio;";
            cn.st = cn.con.createStatement();
            cn.rt = cn.st.executeQuery(sql);
            
            int i=0,total=0;
            while(cn.rt.next()){
                total++;
            }
            
            String[] data = new String[total];
            
            String sqlx = "select codigo_municipio,nombre_municipio from municipio where codigo_departamento='"+(request.getParameter("departamento"))+"'";
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
        //cierre try cath de departamento y regional 
        
    }
@Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}