package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.SimpleDateFormat;
import java.util.*;

public final class Exemplo_005fDataIFF_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Exemplo_DataIFF</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Exemplo_DataIFF</h1>\n");
      out.write("        ");

            //MOSTRANDO A DATA NA PAGINA
            //out.println(new Date());
            
            //MOSTRANDO DATA FORMADA NA PAGINA
            //out.println((new SimpleDateFormat("dd/MM/yyyy")).format(new Date()));
            //out.println("<br>");
            
            
            //IMPRIMINDO APENAS O DIA DA DATA
            //out.println((new SimpleDateFormat("MM")).format(new Date()));
                        
            //SEPARANDO VALORES            
            int dia = Integer.parseInt((new SimpleDateFormat("dd")).format(new Date()));
            
            int mes = Integer.parseInt((new SimpleDateFormat("MM")).format(new Date()));
            
            int ano = Integer.parseInt((new SimpleDateFormat("yyyy")).format(new Date()));
                                 
            //CRIANDO CONDICAO - DIA
            if (dia == 1)
            {
                out.println("Você está no primeiro dia do mês de");
            } 
            else
            if (dia == 2)
            {
                out.println("Você está no dia 02 do mês de");
            }
            else
            if (dia == 3)
            {
                out.println("Você está no dia 03 do mês de");
            }
            else
            if (dia == 4)
            {
                out.println("Você está no dia 04 do mês de");
            }
            else
            if (dia == 5)
            {
                out.println("Você está no dia 05 do mês de");
            }
            else
            if (dia == 6)
            {
                out.println("Você está no dia 06 do mês de");
            }
            else
            if (dia == 7)
            {
                out.println("Você está no dia 07 do mês de");
            }
            else
            if (dia == 8)
            {
                out.println("Você está no dia 08 do mês de");
            }
            else
            if (dia == 9)
            {
                out.println("Você está no dia 09 do mês de");
            }
            else
            if (dia == 10)
            {
                out.println("Você está no dia 10 do mês de");
            }
            else
            if (dia == 11)
            {
                out.println("Você está no dia 11 do mês de");
            }
            else
            if (dia == 12)
            {
                out.println("Você está no dia 12 do mês de");
            }
            else
            if (dia == 13)
            {
                out.println("Você está no dia 13 do mês de");
            }
            else
            if (dia == 14)
            {
                out.println("Você está no dia 14 do mês de");
            }
            else
            if (dia == 15)
            {
                out.println("Você está no dia 15 do mês de");
            }
            else
            if (dia == 16)
            {
                out.println("Você está no dia 16 do mês de");
            }
            else
            if (dia == 17)
            {
                out.println("Você está no dia 17 do mês de");
            }
            else                
            if (dia == 18)
            {
                out.println("Você está no dia 18 do mês de");
            }
            else
            if (dia == 19)
            {
                out.println("Você está no dia 19 do mês de");
            }
            else
            if (dia == 20)
            {
                out.println("Você está no dia 20 do mês de");
            }
            else
            if (dia == 21)
            {
                out.println("Você está no dia 21 do mês de");
            }
            else
            if (dia == 22)
            {
                out.println("Você está no dia 22 do mês de");
            }
            else
            if (dia == 23)
            {
                out.println("Você está no dia 23 do mês de");
            }
            else
            if (dia == 24)
            {
                out.println("Você está no dia 24 do mês de");                
            }
            else
            if (dia == 25)
            {
                out.println("Você está no dia 25 do mês de");
            }
            else
            if (dia == 26)
            {
                out.println("Você está no dia 26 do mês de");
            }
            else
            if (dia == 27)
            {
                out.println("Você está no dia 27 do mês de");
            }
            else
            if (dia == 28)
            {
                out.println("Você está no dia 28 do mês de");
            }
            else
            if (dia == 29)
            {
                out.println("Você está no dia 29 do mês de");
            }
            else
            if (dia == 30)
            {
                out.println("Você está no dia 30 do mês de");
            }
            else
            if (dia == 31)
            {
                out.println("Você está no dia 31 do mês de");
            }
                       
            //CRIANDO CONDICAO - MES
            if (mes == 1)
            {
                out.println("janeiro do ano de ");
            }
            else
            if (mes == 2)
            {
                out.println("fevereiro do ano de ");
            }
            else
            if (mes == 3)
            {
                out.println("março do ano de ");
            }
            else
            if (mes == 4)
            {
                out.println("abril do ano de ");
            }
            else
            if (mes == 5)
            {
                out.println("maio do ano de ");
            }
            else
            if (mes == 6)
            {
                out.println("junho do ano de ");
            }
            else
            if (mes == 7)
            {
                out.println("julho do ano de ");
            }
            else
            if (mes == 8)
            {
                out.println("agosto do ano de ");
            }
            else
            if (mes == 9)
            {
                out.println("setembro do ano de ");
            }
            else
            if (mes == 10)
            {
                out.println("outubro do ano de ");
            }
            else
            if (mes == 11)
            {
                out.println("novembro do ano de ");
            }
            else
            if (mes == 12)
            {
                out.println("dezembro do ano de ");
            }
            
            //CRIANDO CONDICAO - 
            if (ano == 2015)
            {
                out.println("2015.");
            }                     
            else
            if (ano == 2016)
            {
                out.println("2016.");
            }       
            else
            if (ano == 2017)
            {
                out.println("2017.");
            }   
            
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
