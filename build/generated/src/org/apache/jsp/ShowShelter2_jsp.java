package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Entity.Dregistration;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import Helper.ConnectionProvider;
import java.sql.Connection;
import Entity.SearchDoctars;

public final class ShowShelter2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("       ");
Dregistration dr = (Dregistration) session.getAttribute("data3");
      out.write("   \n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        <link href=\"doctors.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"Shelter.css\" rel=\"stylesheet\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"margin: 0rem;padding: 0rem;box-sizing: border-box;\">\n");
      out.write("\n");
      out.write("        <!--<navber>-->\n");
      out.write("        <header>\n");
      out.write("\n");
      out.write("            <div class=\"Dnav\" >\n");
      out.write("                <h2 style=\"margin-left: 3rem;\">\n");
      out.write("                    <div class=\"D-logo\">\n");
      out.write("                        <span>Pet</span>\n");
      out.write("                        <span style=\"color:green;margin-left: -2rem; \">Care</span><br>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </h2>\n");
      out.write("                <div class=\"dnav-list\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"Shelter.jsp\">Home</a></li>\n");
      out.write("                        <li><a href=\"#\">Appointment</a></li>\n");
      out.write("                        <li><a href=\"#\">Contacts</a></li>\n");
      out.write("                    </ul>  \n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("               <!--<Login>-->\n");
      out.write("                        <div class=\"nav-login-page\" style=\"margin-top: -1rem;\">\n");
      out.write("                            <div class=\"nav-login-page1\">\n");
      out.write("                                ");
if (dr != null) {
      out.write("\n");
      out.write("\n");
      out.write("                                <h3>");
      out.print(dr.getEmailId());
      out.write("</h3>\n");
      out.write("                                <br>\n");
      out.write("                                <a href=\"LogoutPage\"> <li>Logout/Signup</li></a>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                ");
} else {
      out.write("\n");
      out.write("                                <a href=\"LoginShelter.jsp\"> <li>Login/Singup</li></a>\n");
      out.write("                                        ");
}
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <!--<Login>-->\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </header>\n");
      out.write("        <!--<navber>-->\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
 Connection con = ConnectionProvider.getConnection();
            String ss = request.getParameter("SS2");
            PreparedStatement ps = con.prepareStatement("select * from shelterdata where Sname=?");
            ps.setString(1, ss);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String sn = rs.getString("Sname");
                String on = rs.getString("Oname");
                String sm = rs.getString("Smobile");
                String ot = rs.getString("Otime");
                String sa = rs.getString("Saddress");
                String sA = rs.getString("Sabout");
                String si = rs.getString("Simage");
                String pd = rs.getString("Pdog");
                String pc = rs.getString("Pcat");


        
      out.write("\n");
      out.write("\n");
      out.write("        <!--<Section-part>-->\n");
      out.write("        <div class=\"ShowShelter-section\">\n");
      out.write("            <div class=\"ShowShelter-section1\">\n");
      out.write("                <!--<Section-left-part>-->\n");
      out.write("                <div class=\"ShowShelter-sectionleft\">\n");
      out.write("                    <h1>");
      out.print(sn);
      out.write('(');
      out.print(on);
      out.write(")</h1>\n");
      out.write("                    <div class=\"ShowShelter-img\">\n");
      out.write("                        <img src=\"");
      out.print(si);
      out.write("\">\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"ShowShelter-detail\">\n");
      out.write("                        <span></span>\n");
      out.write("                        <span></span>\n");
      out.write("                        <span></span>\n");
      out.write("                        <span></span>\n");
      out.write("                        <span></span>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <!--<Section-left-part>-->\n");
      out.write("\n");
      out.write("                <!--<Section-right-part>-->\n");
      out.write("                <div class=\"ShowShelter-sectionright\">\n");
      out.write("\n");
      out.write("                    <form method=\"post\" action=\"ShelterBookingForm\" enctype=\"multipart/form-data\">\n");
      out.write("                        <div class=\"patient-detail\">\n");
      out.write("                            <div class=\"patient-detail1\">\n");
      out.write("\n");
      out.write("                                <div class=\"patient-head\">\n");
      out.write("                                    <h1>Booking Detail</h1>\n");
      out.write("                                    <input name=\"Semailid\" value=\"");
      out.print(sm);
      out.write("\"  readonly >\n");
      out.write("                                    <input name=\"Sname\"  value=\"");
      out.print(sn);
      out.write("\" readonly >\n");
      out.write("\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"patient-detail2\">\n");
      out.write("                                    <span>User-Name</span><br>\n");
      out.write("                                    <input type=\"text\"  name=\"Uname\" required>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                </div><div class=\"patient-detail2\">\n");
      out.write("                                    <span>User-Mobile </span><br>\n");
      out.write("                                    <input type=\"text\"  name=\"Umobile\" required >\n");
      out.write("\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"patient-detail2\">\n");
      out.write("                                    <span>User-Email </span><br>\n");
      out.write("                                    <input type=\"text\"  name=\"Uemail\" required>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"patient-detail2\">\n");
      out.write("                                    <span>User-Address </span><br>\n");
      out.write("                                    <input type=\"text\"  name=\"Uaddress\" required>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"patient-detail2\">\n");
      out.write("                                    <span>Pet-Type</span><br>\n");
      out.write("                                    <select id=\"pettype\" name=\"Pettype\" style=\"width:25rem;\n");
      out.write("                                            height: 1.4rem;\n");
      out.write("                                            margin-left: 2rem;\n");
      out.write("                                            font-size: 1.2rem;\n");
      out.write("                                            border-top: none;\n");
      out.write("                                            border-left: none;\n");
      out.write("                                            border-right: none;\n");
      out.write("                                            border-bottom-color: silver;\n");
      out.write("                                            outline: none;\">\n");
      out.write("                                        <option ></option>\n");
      out.write("                                        <option value=\"dog\">Dog</option>\n");
      out.write("                                        <option value=\"cat\">Cat</option>\n");
      out.write("                                    </select>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"patient-detail2\">\n");
      out.write("                                    <span>Pet-Name </span><br>\n");
      out.write("                                    <input type=\"text\"  name=\"Petname\" required>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"patient-detail2\">\n");
      out.write("                                    <span>NO Of Days</span><br>\n");
      out.write("                                    <input type=\"number\"  name=\"day\" required id=\"days\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <div class=\"patient-detail2\">\n");
      out.write("                                    <span>Price </span>\n");
      out.write("                                  \n");
      out.write("                                    <button onclick=\"sum()\" class=\"fa fa-search\" style=\"display: flex;float: right;margin-right: 2rem;\"></button>\n");
      out.write("                                    <input type=\"text\" id=\"gprice\" name=\"Price\"  >\n");
      out.write("\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"patient-detail2\">\n");
      out.write("                                    <span>Reporting Date </span><br>\n");
      out.write("                                    <input type=\"datetime-local\"  name=\"Ureportdate\" required  >\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"patient-detail2\">\n");
      out.write("                                    <span>PetImage</span><br>\n");
      out.write("                                    <input type=\"file\"  name=\"Petimage\" required>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                               ");
if(dr!=null){
      out.write("  \n");
      out.write("                        <div class=\"patient-button\">\n");
      out.write("                            <button type=\"submit\">Confirm</button>\n");
      out.write("                        </div>\n");
      out.write("                        ");
}else{
      out.write("\n");
      out.write("                        <div class=\"patient-button\">\n");
      out.write("                            \n");
      out.write("                        <button  onclick=\"Shelterlog()\">Confirm</button>\n");
      out.write("                        </div>\n");
      out.write("                        ");
}
      out.write("\n");
      out.write("                    </form>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <!--<Section-right-part>-->\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script>\n");
      out.write("            function sum() {\n");
      out.write("              var a=");
      out.print(pd);
      out.write("\n");
      out.write("                 var b=");
      out.print(pc);
      out.write("\n");
      out.write("                  var r=document.getElementById(\"days\").value;\n");
      out.write("                   var Type=document.getElementById(\"pettype\").value;\n");
      out.write("                   \n");
      out.write("                   \n");
      out.write("                   if(Type==\"dog\"){\n");
      out.write("                     var  p1=parseInt(a)*parseInt(r);\n");
      out.write("                   \n");
      out.write("                      \n");
      out.write("                   }\n");
      out.write("                   else if(Type==\"cat\"){\n");
      out.write("                       var  p1=parseInt(b)*parseInt(r);\n");
      out.write("                     \n");
      out.write("                   }\n");
      out.write("                    document.getElementById(\"gprice\").value=p1;\n");
      out.write("            }\n");
      out.write("             function Shelterlog(){\n");
      out.write("                           alert(\"please login first\")\n");
      out.write("                           }\n");
      out.write("        </script>\n");
      out.write("        ");
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
