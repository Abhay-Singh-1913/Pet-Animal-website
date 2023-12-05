package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import Helper.ConnectionProvider;
import java.sql.Connection;
import Entity.Dregistration;

public final class Doctor_002ddasboard_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        ");
 Dregistration d = (Dregistration) session.getAttribute("data2");
      out.write("\n");
      out.write("        <!--<main css link>-->\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css\" integrity=\"sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==\" crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css\">\n");
      out.write("        <link href=\"doctors.css\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color:snow;margin: 0;box-sizing: border-box;\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--<navber>-->\n");
      out.write("        <header>\n");
      out.write("\n");
      out.write("            <div class=\"Dnav\" style=\"margin-left: -1rem; margin-top: 1rem;\">\n");
      out.write("                <h2 style=\"margin-left: 4rem;\">\n");
      out.write("                    <div class=\"D-logo\">\n");
      out.write("                        <span>Pet</span>\n");
      out.write("                        <span style=\"color:green \">Care</span><br>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"dash-name\">\n");
      out.write("                        <span>DASHBOARD</span>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </h2>\n");
      out.write("                <div class=\"dnav-list\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"Doctor.jsp\">Home</a></li>\n");
      out.write("                        <li><a href=\"#\">Appointment</a></li>\n");
      out.write("                        <li><a href=\"#\">Contacts</a></li>\n");
      out.write("                    </ul>  \n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </header>\n");
      out.write("        <!--<navber>-->\n");
      out.write("\n");
      out.write("        <section>\n");
      out.write("            <div class=\"dash-card\">\n");
      out.write("                <div class=\"dash-cardboard\">\n");
      out.write("                    <div class=\"dash-img\">\n");
      out.write("                        <img src=\"img/\" >\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"dash-dr-name\">\n");
      out.write("                        <span> Dr-</span><br>\n");
      out.write("                        <small>DR- Infromation</small>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"dash-list\">\n");
      out.write("                        <div class=\"dash-list1\">\n");
      out.write("                            <ul>\n");
      out.write("                                <li id=\"Dashboard\"><i class=\"fa fa-dashboard\"></i><a href=\"#\">Dashboard</a></li>\n");
      out.write("                                <li id=\"Appoinment\"><i class=\"fa fa-calendar\"></i><a href=\"#\">Appoinment</a></li>\n");
      out.write("                                <li id=\"My patients\"><i class=\"fa fa-male\"></i><a href=\"#\">My patients</a></li>                                \n");
      out.write("                                <li id=\"Invoices\"><i class=\"fas fa-file-invoice\"></i><a href=\"#\">Invoices</a></li>\n");
      out.write("                                <li id=\"Reviews\"><i class=\"fa fa-star\" aria-hidden=\"true\"></i><a href=\"#\">Reviews</a></li>\n");
      out.write("                                <li id=\"Profile-Setting\"><i class=\"fa fa-gear\"></i><a href=\"#\">Profile Settings</a></li>\n");
      out.write("                                <li id=\"Social Media\"><i class=\"fas fa-share-alt\"></i><a href=\"#\">Social Media</a></li>\n");
      out.write("                                <li id=\"Change Password\"><i class=\"fas fa-lock\"></i><a href=\"#\">Change Password</a></li>\n");
      out.write("                                <li id=\"Log Out\"><i class=\"fa fa-sign-out\"></i><a href=\"#\">Log Out</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    ");

                        Connection con2 = ConnectionProvider.getConnection();
                        PreparedStatement ps2 = con2.prepareStatement("select * from bookingappoinment where demail=?");
                        ps2.setString(1, d.getEmailId());

                        ResultSet rs2 = ps2.executeQuery();
                        while (rs2.next()) {
                            String pn = rs2.getString("petname");
                            String b = rs2.getString("breed");
                            String w = rs2.getString("weight");
                            String a = rs2.getString("age");
                            String e = rs2.getString("emailid");
                            String m = rs2.getString("mobile");
                            String dt = rs2.getString("datetime");
                            String s = rs2.getString("symptom");


                    
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"dash-right\">\n");
      out.write("\n");
      out.write("                        <div class=\"dash-right1\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                            <!--<Main-Dashboard>-->\n");
      out.write("                            <div id=\"main-dashboard\" style=\"background: red;\">\n");
      out.write("                                <div class=\"appoinment-detail\"><span>Petname</span>\n");
      out.write("                                    <span>Breed</span>\n");
      out.write("                                    <span>Weight</span>\n");
      out.write("                                    <span>Age</span>\n");
      out.write("                                    <span>emailId</span>\n");
      out.write("                                    <span>mobile</span>\n");
      out.write("                                    <span>sympton</span>\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <!--<Main-Dashboard>-->\n");
      out.write("\n");
      out.write("                            <!--<Appoinment>-->\n");
      out.write("\n");
      out.write("                            <div  id=\"appoinments\" class=\"appoinment\">\n");
      out.write("                                <div class=\"appoinment-detail1\">\n");
      out.write("                                    <h2>");
      out.print(pn);
      out.write("</h2>\n");
      out.write("                                    <span>date:-");
      out.print(dt);
      out.write("</span><br>\n");
      out.write("                                    <span>email:");
      out.print(e);
      out.write("</span><br>\n");
      out.write("                                    <span>mobile:");
      out.print(m);
      out.write("</span><br>\n");
      out.write("                                    <span>Sysmtom:");
      out.print(s);
      out.write("</span><br>\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"appoinment-button\" >\n");
      out.write("                                    <button type=\"sumbit\">Accept</button>\n");
      out.write("                                    <button type=\"sumbit\">Cancel</button>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <!--<Appoinment>-->\n");
      out.write("                            ");
}
      out.write("\n");
      out.write("                            <!--<Doctor-registration>-->\n");
      out.write("\n");
      out.write("                            <div class=\"Doctor-registration\">\n");
      out.write("                                <h1>ljabua</h1>\n");
      out.write("                            </div>\n");
      out.write("                            <!--<Doctor-registration>-->\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        </section>\n");
      out.write("        <footer>\n");
      out.write("\n");
      out.write("        </footer>\n");
      out.write("        <script>\n");
      out.write("            document.getElementById(\"main-dashboard\").style.display = \"flex\";\n");
      out.write("            document.getElementById(\"Doctor-registration\").style.display = \"none\";\n");
      out.write("            document.getElementById(\"appoinments\").style.display = \"none\";\n");
      out.write("\n");
      out.write("            document.getElementById(\"Dashboard\").addEventListener(\"click\", function () {\n");
      out.write("                document.getElementById(\"main-dashboard\").style.display = \"flex\";\n");
      out.write("                document.getElementById(\"Doctor-registration\").style.display = \"none\";\n");
      out.write("                document.getElementById(\"appoinments\").style.display = \"none\";\n");
      out.write("            });\n");
      out.write("            document.getElementById(\"Profile-Setting\").addEventListener(\"click\", function () {\n");
      out.write("                document.getElementById(\"main-dashboard\").style.display = \"none\";\n");
      out.write("                document.getElementById(\"Doctor-registration\").style.display = \"block\";\n");
      out.write("                document.getElementById(\"appoinments\").style.display = \"none\";\n");
      out.write("            });\n");
      out.write("            document.getElementById(\"Appoinment\").addEventListener(\"click\", function () {\n");
      out.write("                document.getElementById(\"main-dashboard\").style.display = \"none\";\n");
      out.write("                document.getElementById(\"Doctor-registration\").style.display = \"none\";\n");
      out.write("                document.getElementById(\"appoinments\").style.display = \"block\";\n");
      out.write("            });\n");
      out.write("        </script>\n");
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
