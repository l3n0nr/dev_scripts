package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class formulario_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Exemplo Formulario</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Exemplo Formulario</h1>\n");
      out.write("        <!--CRIANDO FORMULARIO HTML-->\n");
      out.write("        <form action=\"formulario1.jsp\" method=\"post\">\n");
      out.write("            Nome: <input type=\"text\" name=\"txtnome\"/>\n");
      out.write("            </br>\n");
      out.write("            E-mail: <input type=\"text\" name=\"txtemail\"/>\n");
      out.write("            </br>\n");
      out.write("            Idade: <input type=\"text\" name=\"txtidade\">\n");
      out.write("            </br>\n");
      out.write("            <h2> Escolha as disciplinas que deseja cursar </h2>\n");
      out.write("            \n");
      out.write("            Matemática: <input type=\"checkbox\" name=\"matematica\" checked />\n");
      out.write("            Portugues:  <input type=\"ckeckbox\" name=\"portugues\" checked />\n");
      out.write("            Eletiva:    <input type=\"ckeckbox\" name=\"eletiva\" checked />            \n");
      out.write("            </br>\n");
      out.write("            \n");
      out.write("            Data de Nascimento: <input type=\"text\" name=\"txtdata\"/>\n");
      out.write("            </br>\n");
      out.write("            Senha: <input type=\"password\" name=\"txtsenha\" maxlength=\"10\"/>\n");
      out.write("            </br>\n");
      out.write("            <input type=\"submit\" value=\"submit\"/>            \n");
      out.write("        <form>            \n");
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
