package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import Helper.ConnectionProvider;
import java.sql.Connection;
import Entity.Dregistration;

public final class ShelterDashboard_jsp extends org.apache.jasper.runtime.HttpJspBase
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
Dregistration dr = (Dregistration) session.getAttribute("data2");
      out.write("\n");
      out.write("        <!--<main css link>-->\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css\" integrity=\"sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==\" crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\" />\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        <link href=\"doctors.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"Shelter.css\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color:snow;margin: 0;box-sizing: border-box;\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--<navber>-->\n");
      out.write("        <header>\n");
      out.write("\n");
      out.write("            <div class=\"Dnav\" >\n");
      out.write("                <h2 style=\"margin-left: 2rem;\">\n");
      out.write("                    <div class=\"D-logo\">\n");
      out.write("                        <span>Pet</span>\n");
      out.write("                        <span style=\"color:green ;margin-left: -2rem;\">Care</span><br>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </h2>\n");
      out.write("                <div class=\"dnav-list\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"#\">Home</a></li>\n");
      out.write("                        <li><a href=\"#\">Appointment</a></li>\n");
      out.write("                        <li><a href=\"#\">Contacts</a></li>\n");
      out.write("                    </ul>  \n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <!--<Login>-->\n");
      out.write("                <div class=\"nav-login-page\">\n");
      out.write("                    <div class=\"nav-login-page1\">\n");
      out.write("                        <span>DASHBOARD</span>\n");
      out.write("                        <h3>");
      out.print(dr.getEmailId());
      out.write("</h3>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <!--<Login>-->\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </header>\n");
      out.write("\n");
      out.write("        <!--<navber>-->\n");
      out.write("\n");
      out.write("        <section>\n");
      out.write("            <div class=\"dash-card\">\n");
      out.write("                <div class=\"dash-cardboard\">\n");
      out.write("                    <div class=\"dash-img\">\n");
      out.write("                        <img src=\"img/\" >\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"dash-dr-name\">\n");
      out.write("                        <span> Shelter Name-</span><br>\n");
      out.write("                        <small>DR- Infromation</small>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"dash-list\">\n");
      out.write("                        <div class=\"dash-list1\">\n");
      out.write("                            <ul>\n");
      out.write("                                <li id=\"Dashboard\"><i class=\"fa fa-dashboard\"></i><a href=\"#\">Dashboard</a></li>\n");
      out.write("                                <li id=\"Appoinments\"><i class=\"fa fa-calendar\"></i><a href=\"#\">Appoinment</a></li>\n");
      out.write("                                <li id=\"My patients\"><i class=\"fa fa-male\"></i><a href=\"#\">My Customer</a></li>                                \n");
      out.write("                                <li id=\"Invoices\"><i class=\"fas fa-file-invoice\"></i><a href=\"#\">Invoices</a></li>\n");
      out.write("                                <li id=\"Reviews\"><i class=\"fa fa-star\" aria-hidden=\"true\"></i><a href=\"#\">Reviews</a></li>\n");
      out.write("                                <li id=\"Profile-Setting\"><i class=\"fa fa-gear\"></i><a href=\"#\">Profile Settings</a></li>\n");
      out.write("                                <li id=\"Social Media\"><i class=\"fas fa-share-alt\"></i><a href=\"#\">Social Media</a></li>\n");
      out.write("                                <li id=\"Change Password\"><i class=\"fas fa-lock\"></i><a href=\"#\">Change Password</a></li>\n");
      out.write("                                <li id=\"Log Out\"><i class=\"fa fa-sign-out\"></i><a href=\"LogoutPage\">Log Out</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"dash-right\">\n");
      out.write("\n");
      out.write("                        <div class=\"dash-right1\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                            <!--<Main-Dashboard>-->\n");
      out.write("                            <div id=\"main-dashboard\">\n");
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
      out.write("\n");
      out.write("                            <!--<Appoinment>-->\n");
      out.write("                            <div id=\"Appoinment\" class=\"appoinment\">\n");
      out.write("                                ");

                                    Connection con2 = ConnectionProvider.getConnection();
                                    PreparedStatement ps2 = con2.prepareStatement("select * from shelterslot where Semailid=?");
                                    ps2.setString(1, dr.getEmailId());

                                    ResultSet rs2 = ps2.executeQuery();
                                    while (rs2.next()) {
                                        String pi = rs2.getString("Petimage");
                                        String pn = rs2.getString("Petname");

                                        String pt = rs2.getString("Pettype");
                                        String d = rs2.getString("day");
                                        String p = rs2.getString("Price");
                                        String ur = rs2.getString("Ureportdate");


                                
      out.write("\n");
      out.write("                                <div class=\"appoinment-detail\">\n");
      out.write("                                    <div class=\"appoinment-detail2\">\n");
      out.write("                                        <span>Pet-Image</span>\n");
      out.write("                                        <h2><img src=\"img/");
      out.print(pi);
      out.write("\"></h2>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"appoinment-detail2\">\n");
      out.write("                                        <span>Pet-Name</span>\n");
      out.write("                                        <h2>");
      out.print(pn);
      out.write("<h2>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"appoinment-detail2\">\n");
      out.write("                                                    <span>Pet-Type</span>\n");
      out.write("                                                    <h2>");
      out.print(pt);
      out.write("</h2>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"appoinment-detail2\">\n");
      out.write("                                                    <span>No-of-days</span>\n");
      out.write("                                                    <h2>");
      out.print(d);
      out.write("</h2>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"appoinment-detail2\">\n");
      out.write("                                                    <span>Charges</span>\n");
      out.write("                                                    <h2>");
      out.print(p);
      out.write("</h2>\n");
      out.write("                                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                <div class=\"appoinment-detail2\">\n");
      out.write("                                                    <button class=\"fa fa-close\"></button>\n");
      out.write("                                                    <button id=\"accept\" class=\"fa fa-check\"></button>\n");
      out.write("                                                </div>\n");
      out.write("\n");
      out.write("                                                </div>\n");
      out.write("                                                ");
}
      out.write("\n");
      out.write("                                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                <!--<Appoinment>-->\n");
      out.write("\n");
      out.write("                                                <!--<Shelter-registration>-->\n");
      out.write("                                                <div id=\"ShelterForm\">\n");
      out.write("                                                    <form class=\"shelterForm\" method=\"post\" action=\"ShelterRegistration\" enctype=\"multipart/form-data\">\n");
      out.write("                                                        <div class=\"shelterFormDiv\">\n");
      out.write("                                                            <label class=\"shelterLabel\">Shelter Name</label>\n");
      out.write("                                                            <input class=\"shelterInput\" type=\"text\" name=\"Sname\" required/>\n");
      out.write("                                                        </div>\n");
      out.write("\n");
      out.write("                                                        <div class=\"shelterFormDiv\">\n");
      out.write("                                                            <label class=\"shelterLabel\">Owner Name</label>\n");
      out.write("                                                            <input class=\"shelterInput\" type=\"text\" name=\"Oname\" required/>\n");
      out.write("                                                        </div>\n");
      out.write("\n");
      out.write("                                                        <div class=\"shelterFormDiv\">\n");
      out.write("                                                            <label class=\"shelterLabel\">Shelter Mobile</label>\n");
      out.write("                                                            <input class=\"shelterInput\" type=\"text\" name=\"Smobile\" required/>\n");
      out.write("                                                        </div>\n");
      out.write("\n");
      out.write("                                                        <div class=\"shelterFormDiv\">\n");
      out.write("                                                            <label class=\"shelterLabel\">Office Time</label>\n");
      out.write("                                                            <input class=\"shelterInput\" type=\"text\" name=\"Otime\" required/>\n");
      out.write("                                                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                        <div class=\"shelterFormDiv\">\n");
      out.write("                                                            <label class=\"shelterLabel\">Shelter Address</label>\n");
      out.write("                                                            <input class=\"shelterInput\" type=\"text\" name=\"Saddress\" required/>\n");
      out.write("                                                        </div>\n");
      out.write("\n");
      out.write("                                                        <div class=\"shelterFormDiv\">\n");
      out.write("                                                            <label class=\"shelterLabel\">State</label>\n");
      out.write("                                                            <input class=\"shelterInput\" type=\"text\" name=\"Sstate\" required/>\n");
      out.write("                                                        </div>\n");
      out.write("\n");
      out.write("                                                        <div class=\"shelterFormDiv\">\n");
      out.write("                                                            <label class=\"shelterLabel\">City</label>\n");
      out.write("                                                            <input class=\"shelterInput\" type=\"text\" name=\"Scity\" required/>\n");
      out.write("                                                        </div>\n");
      out.write("\n");
      out.write("                                                        <div class=\"shelterFormDiv\">\n");
      out.write("                                                            <label class=\"shelterLabel\">About</label>\n");
      out.write("                                                            <textarea class=\"shelterInput\" type=\"text\" name=\"Sabout\" required></textarea>\n");
      out.write("                                                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                        <div class=\"shelterFormDiv\">\n");
      out.write("                                                            <label class=\"shelterLabel\">Shelter Image</label>\n");
      out.write("                                                            <input class=\"shelterInput\" type=\"file\" name=\"Simage\" required/>\n");
      out.write("                                                        </div>\n");
      out.write("\n");
      out.write("                                                        <div class=\"shelterFormDiv\">\n");
      out.write("                                                            <label class=\"shelterLabel\">Price Dog</label>\n");
      out.write("                                                            <input class=\"shelterInput\" type=\"text\" name=\"Pdog\" required/>\n");
      out.write("                                                        </div>\n");
      out.write("                                                        <div class=\"shelterFormDiv\">\n");
      out.write("                                                            <label class=\"shelterLabel\">Price Cat</label>\n");
      out.write("                                                            <input class=\"shelterInput\" type=\"text\" name=\"Pcat\" required/>\n");
      out.write("                                                        </div>\n");
      out.write("\n");
      out.write("                                                        <div class=\"shelterForm-Button\">\n");
      out.write("                                                            <button type=\"submit\">Submit</button>\n");
      out.write("                                                        </div>\n");
      out.write("                                                    </form>\n");
      out.write("                                                </div>\n");
      out.write("                                                <!--<Shelter-registration>-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                </div>\n");
      out.write("                                                </div>\n");
      out.write("                                                </div>\n");
      out.write("                                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                </section>\n");
      out.write("                                                <footer>\n");
      out.write("\n");
      out.write("                                                </footer>\n");
      out.write("                                                <script src=\"https://code.jquery.com/jquery-3.3.1.min.js\"></script>\n");
      out.write("\n");
      out.write("                                                <!--                                                <script>\n");
      out.write("                                                                                                    document.getElementById(\"main-dashboard\").style.display = \"flex\";\n");
      out.write("                                                                                                    document.getElementById(\"ShelterForm\").style.display = \"none\";\n");
      out.write("                                                                                                    document.getElementById(\"Appoinment\").style.display = \"none\";\n");
      out.write("                                                                                                    document.getElementById(\"Dashboard\").addEventListener(\"click\", function () {\n");
      out.write("                                                                                                    document.getElementById(\"main-dashboard\").style.display = \"flex\";\n");
      out.write("                                                                                                    document.getElementById(\"ShelterForm\").style.display = \"none\";\n");
      out.write("                                                                                                    document.getElementById(\"Appoinment\").style.display = \"none\";\n");
      out.write("                                                                                                    });\n");
      out.write("                                                                                                    document.getElementById(\"Profile-Setting\").addEventListener(\"click\", function () {\n");
      out.write("                                                                                                    document.getElementById(\"main-dashboard\").style.display = \"none\";\n");
      out.write("                                                                                                    document.getElementById(\"ShelterForm\").style.display = \"block\";\n");
      out.write("                                                                                                    document.getElementById(\"Appoinment\").style.display = \"none\";\n");
      out.write("                                                                                                    });\n");
      out.write("                                                                                                    document.getElementById(\"Appoinments\").addEventListener(\"click\", function () {\n");
      out.write("                                                                                                    document.getElementById(\"main-dashboard\").style.display = \"none\";\n");
      out.write("                                                                                                    document.getElementById(\"ShelterForm\").style.display = \"none\";\n");
      out.write("                                                                                                    document.getElementById(\"Appoinment\").style.display = \"block\";\n");
      out.write("                                                                                                    });\n");
      out.write("                                                                                                </script>-->\n");
      out.write("\n");
      out.write("                                                <script>\n");
      out.write("                                                    $(document).ready(() => {\n");
      out.write("                                                    $(\"#main-dashboard\").show();\n");
      out.write("                                                    $(\"#ShelterForm\").hide();\n");
      out.write("                                                    $(\"#Appoinment\").hide();\n");
      out.write("                                                    $(\"#Dashboard\").click(() => {\n");
      out.write("                                                    $(\"#ShelterForm\").hide();\n");
      out.write("                                                    $(\"#Appoinment\").hide();\n");
      out.write("                                                    $(\"#main-dashboard\").show();\n");
      out.write("                                                    });\n");
      out.write("                                                    $(\"#Profile-Setting\").click(() => {\n");
      out.write("                                                    $(\"#Appoinment\").hide();\n");
      out.write("                                                    $(\"#main-dashboard\").hide;\n");
      out.write("                                                    $(\"#ShelterForm\").show();\n");
      out.write("                                                    });\n");
      out.write("                                                    $(\"#Appoinments\").click(() => {\n");
      out.write("                                                    $(\"#ShelterForm\").hide();\n");
      out.write("                                                    $(\"#Appoinment\").show();\n");
      out.write("                                                    $(\"#main-dashboard\").hide();\n");
      out.write("                                                    });\n");
      out.write("                                                    \n");
      out.write("//                                                    $(\"#accept\").click(function () {\n");
      out.write("//                                                    let bi = new FormData();\n");
      out.write("//                                                    bi.append(\"Uemail\", \"\");\n");
      out.write("//                                                    bi.append(\"Notification\", \"Hii \n");
      out.write("//                                                            Your Slot Have been Confirm for days\n");
      out.write("//                                                            Thank You\n");
      out.write("//                                                            \");\n");
      out.write("//                                                            $.ajax({\n");
      out.write("//                                                            url: 'ShelterNotification',\n");
      out.write("//                                                                    data: bi,\n");
      out.write("//                                                                    contentType: false,\n");
      out.write("//                                                                    processData: false,\n");
      out.write("//                                                                    type: 'POST',\n");
      out.write("//                                                                    success: function (data) {\n");
      out.write("//\n");
      out.write("//                                                                    alert(data);\n");
      out.write("//                                                                    }\n");
      out.write("//                                                            });\n");
      out.write("//                                                    });\n");
      out.write("//                                                    \n");
      out.write("                                                    });\n");
      out.write("                                                </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                </body>\n");
      out.write("                                                </html>\n");
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