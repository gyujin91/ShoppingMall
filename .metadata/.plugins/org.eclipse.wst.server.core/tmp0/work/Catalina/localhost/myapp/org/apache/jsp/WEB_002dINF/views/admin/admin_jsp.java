/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.60
 * Generated at: 2024-01-12 13:13:52 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("jar:file:/D:/gyujin/sideP/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/shoppiingMall/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("jar:file:/D:/gyujin/sideP/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/shoppiingMall/WEB-INF/lib/jstl-1.2.jar!/META-INF/fmt.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1659671595531L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.release();
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      if (_jspx_meth_c_005fset_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"ko\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>관리자 데시보드</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/normalize.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/style.css\">\r\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\" crossorigin=\"anonymous\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css\">\r\n");
      out.write("    \r\n");
      out.write("    <script src=\"//code.jquery.com/jquery-1.11.0.min.js\"></script>\r\n");
      out.write("    \r\n");
      out.write("    <style>\r\n");
      out.write("        .deshboard\r\n");
      out.write("        {\r\n");
      out.write("            /* width: 95%; */\r\n");
      out.write("            margin: 0 auto;\r\n");
      out.write("            /* padding-top: 20px; */\r\n");
      out.write("            display: flex;\r\n");
      out.write("            margin: 20px;\r\n");
      out.write("        }\r\n");
      out.write("        .navigation \r\n");
      out.write("        {\r\n");
      out.write("            width: 5%;\r\n");
      out.write("            background: #6666FF;\r\n");
      out.write("            border-radius: 25px;\r\n");
      out.write("            /* height: 100vh;  */\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .navigation ul \r\n");
      out.write("        {\r\n");
      out.write("            list-style-type: none; /* 기본 목록 스타일 제거 */\r\n");
      out.write("            padding: 0;\r\n");
      out.write("            margin: 0;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .navigation li \r\n");
      out.write("        {\r\n");
      out.write("            margin-bottom: 10px;\r\n");
      out.write("            text-align: center;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .navigation a \r\n");
      out.write("        {\r\n");
      out.write("            display: block;\r\n");
      out.write("            color: #fff;\r\n");
      out.write("            text-align: center;\r\n");
      out.write("            padding-top: 30px;\r\n");
      out.write("        }\r\n");
      out.write("        .navigation i\r\n");
      out.write("        {\r\n");
      out.write("        	display: block;\r\n");
      out.write("        	text-align: center;\r\n");
      out.write("            font-size: 1.6em;\r\n");
      out.write("            color: #fff;\r\n");
      out.write("            padding-top: 30px;\r\n");
      out.write("        }\r\n");
      out.write("        .content\r\n");
      out.write("        {\r\n");
      out.write("            flex: 1 0 90%;\r\n");
      out.write("            padding: 0;\r\n");
      out.write("            margin: 0 20px 0 20px;\r\n");
      out.write("            /* background: #f5f5f5; */\r\n");
      out.write("        }\r\n");
      out.write("        .content .header\r\n");
      out.write("        {\r\n");
      out.write("            border-bottom: 1px solid rgba(33, 33, 33, 0.15);\r\n");
      out.write("            margin-bottom: 20px;\r\n");
      out.write("            box-shadow: 0 2px 2px -2px gray;\r\n");
      out.write("        }\r\n");
      out.write("        .content .header .list\r\n");
      out.write("        {\r\n");
      out.write("            padding: 0;\r\n");
      out.write("            display: flex;\r\n");
      out.write("            justify-content: space-between; \r\n");
      out.write("            \r\n");
      out.write("        }\r\n");
      out.write("        .content .header .list .item .left\r\n");
      out.write("        {\r\n");
      out.write("            text-align: left;\r\n");
      out.write("        }\r\n");
      out.write("        .content .header .list .item .center\r\n");
      out.write("        {\r\n");
      out.write("            text-align: center;\r\n");
      out.write("        }\r\n");
      out.write("        .content .header .list .item .right\r\n");
      out.write("        {\r\n");
      out.write("            text-align: right;                \r\n");
      out.write("        }\r\n");
      out.write("        .content .header .list .item i\r\n");
      out.write("        {\r\n");
      out.write("            font-size: 1.4em;\r\n");
      out.write("            font-weight: bold;\r\n");
      out.write("            margin-right: 5px;\r\n");
      out.write("        }\r\n");
      out.write("        .content .header .list .item input\r\n");
      out.write("        {\r\n");
      out.write("            border-radius: 15px;\r\n");
      out.write("            padding-left: 5px;\r\n");
      out.write("            width: 250px;\r\n");
      out.write("            border: 1px solid darkgray;\r\n");
      out.write("        }\r\n");
      out.write("        .content .total\r\n");
      out.write("        {\r\n");
      out.write("            height: 110px;\r\n");
      out.write("        }\r\n");
      out.write("        .content .total a:hover\r\n");
      out.write("        {\r\n");
      out.write("            color: black;\r\n");
      out.write("        }\r\n");
      out.write("        .content .total .views, .sales, .comments, .earning\r\n");
      out.write("        {\r\n");
      out.write("            border: 1px solid #ececec;\r\n");
      out.write("            border-radius: 10px;\r\n");
      out.write("            box-shadow: 2px 2px 2px 2px rgba(33, 33, 33, 0.15);\r\n");
      out.write("            width: 321px;\r\n");
      out.write("            height: 90px;\r\n");
      out.write("            float: left;\r\n");
      out.write("            margin-right: 27px;\r\n");
      out.write("            padding: 13px 0 0 13px;\r\n");
      out.write("            font-size: 1.4em;\r\n");
      out.write("            position: relative;\r\n");
      out.write("        }\r\n");
      out.write("        .content .total div\r\n");
      out.write("        {\r\n");
      out.write("        	position: relative;\r\n");
      out.write("        }\r\n");
      out.write("        .content .total h3\r\n");
      out.write("        {\r\n");
      out.write("        	position: absolute;\r\n");
      out.write("        	top: 10%;\r\n");
      out.write("        	left: 5%;\r\n");
      out.write("        }\r\n");
      out.write("        .content .total p\r\n");
      out.write("        {\r\n");
      out.write("        	position: absolute;\r\n");
      out.write("        	top: 65%;\r\n");
      out.write("        	left: 5%;\r\n");
      out.write("        }\r\n");
      out.write("        .content .total .views i\r\n");
      out.write("        {\r\n");
      out.write("            position: absolute;\r\n");
      out.write("            left: 80%;\r\n");
      out.write("            bottom: 20%;\r\n");
      out.write("            font-size: 2.5em;\r\n");
      out.write("            color: #7766FF;\r\n");
      out.write("        }\r\n");
      out.write("        .content .total .sales i\r\n");
      out.write("        {\r\n");
      out.write("            position: absolute;\r\n");
      out.write("            left: 80%;\r\n");
      out.write("            bottom: 20%;\r\n");
      out.write("            font-size: 2.5em;\r\n");
      out.write("            color: #7766FF;\r\n");
      out.write("        }\r\n");
      out.write("        .content .total .comments i\r\n");
      out.write("        {\r\n");
      out.write("            position: absolute;\r\n");
      out.write("            left: 80%;\r\n");
      out.write("            bottom: 20%;\r\n");
      out.write("            font-size: 2.5em;\r\n");
      out.write("            color: #7766FF;\r\n");
      out.write("        }\r\n");
      out.write("        .content .total .earning i\r\n");
      out.write("        {\r\n");
      out.write("            position: absolute;\r\n");
      out.write("            left: 80%;\r\n");
      out.write("            bottom: 20%;\r\n");
      out.write("            font-size: 2.5em;\r\n");
      out.write("            color: #7766FF;\r\n");
      out.write("        }\r\n");
      out.write("        .content .earning\r\n");
      out.write("        {\r\n");
      out.write("            margin-right: 0;\r\n");
      out.write("        }\r\n");
      out.write("        .content .orders\r\n");
      out.write("        {\r\n");
      out.write("            border: 1px solid black;\r\n");
      out.write("            width: 70%;\r\n");
      out.write("            margin-right: 20px;\r\n");
      out.write("            height: 75.5vh;\r\n");
      out.write("            border: 1px solid #ececec;\r\n");
      out.write("            border: none;\r\n");
      out.write("            border-radius: 10px;\r\n");
      out.write("            box-shadow: 2px 2px 2px 2px rgba(33, 33, 33, 0.15);\r\n");
      out.write("            padding: 13px 13px 0 13px;\r\n");
      out.write("        }\r\n");
      out.write("        .content .orders h2\r\n");
      out.write("        {\r\n");
      out.write("            font-size: 1.5em;\r\n");
      out.write("        }\r\n");
      out.write("        .content .orders button\r\n");
      out.write("        {\r\n");
      out.write("            width: 60px;\r\n");
      out.write("            height: 30px;\r\n");
      out.write("            background: #7766FF;\r\n");
      out.write("            color: #fff;\r\n");
      out.write("            border: none;\r\n");
      out.write("            border-radius: 8px;\r\n");
      out.write("        }\r\n");
      out.write("        .content .orders table\r\n");
      out.write("        {\r\n");
      out.write("            border-collapse: collapse;\r\n");
      out.write("            width: 100%;\r\n");
      out.write("            margin-top: 5px;\r\n");
      out.write("        }\r\n");
      out.write("        .content .orders table th:nth-child(1), td:nth-child(1)\r\n");
      out.write("        ,th:nth-child(2), td:nth-child(2)\r\n");
      out.write("        {\r\n");
      out.write("            width: 35%;\r\n");
      out.write("        }  \r\n");
      out.write("        .content .orders table th:nth-child(3), td:nth-child(3)\r\n");
      out.write("        {\r\n");
      out.write("            width: 15%;\r\n");
      out.write("        }\r\n");
      out.write("        .content .orders table th:nth-child(4), td:nth-child(4)\r\n");
      out.write("        {\r\n");
      out.write("            float: right;\r\n");
      out.write("        }\r\n");
      out.write("        .content .orders table tr\r\n");
      out.write("        {\r\n");
      out.write("            border-bottom: 1px solid rgba(33, 33, 33, 0.15);\r\n");
      out.write("        }\r\n");
      out.write("        .content .orders table th\r\n");
      out.write("        {\r\n");
      out.write("            margin-bottom: 5px;\r\n");
      out.write("        }\r\n");
      out.write("        .content .orders table th:nth-child(4)\r\n");
      out.write("        {\r\n");
      out.write("            padding-right: 20px;\r\n");
      out.write("        }\r\n");
      out.write("        .content .orders table td\r\n");
      out.write("        {\r\n");
      out.write("            margin: 5px 0 5px 0;\r\n");
      out.write("        }\r\n");
      out.write("        .content .orders table td:nth-child(4)\r\n");
      out.write("        {\r\n");
      out.write("            width: 80px;\r\n");
      out.write("            text-align: center;\r\n");
      out.write("            background: red;\r\n");
      out.write("            color: white;\r\n");
      out.write("            border: none;\r\n");
      out.write("            border-radius: 5px;\r\n");
      out.write("        }\r\n");
      out.write("        .content .customers\r\n");
      out.write("        {\r\n");
      out.write("            border: 1px solid black;\r\n");
      out.write("            width: 30%;\r\n");
      out.write("            border: 1px solid #ececec;\r\n");
      out.write("            border: none;\r\n");
      out.write("            border-radius: 10px;\r\n");
      out.write("            box-shadow: 2px 2px 2px 2px rgba(33, 33, 33, 0.15);\r\n");
      out.write("            padding: 13px 0 0 13px;\r\n");
      out.write("        }\r\n");
      out.write("        .content .customers h2\r\n");
      out.write("        {\r\n");
      out.write("            font-size: 1.5em;\r\n");
      out.write("            margin-bottom: 15px;\r\n");
      out.write("        }\r\n");
      out.write("        .content .customers button\r\n");
      out.write("        {\r\n");
      out.write("            width: 60px;\r\n");
      out.write("            height: 30px;\r\n");
      out.write("            background: #7766FF;\r\n");
      out.write("            color: #fff;\r\n");
      out.write("            border: none;\r\n");
      out.write("            border-radius: 8px;\r\n");
      out.write("            margin-right: 15px;\r\n");
      out.write("        }\r\n");
      out.write("        .content .customers table th\r\n");
      out.write("        {\r\n");
      out.write("            padding-left: 5px;\r\n");
      out.write("        }\r\n");
      out.write("        .content .customers table th i\r\n");
      out.write("        {\r\n");
      out.write("            font-size: 1.5em;\r\n");
      out.write("        }\r\n");
      out.write("        .content .customers table th i:hover\r\n");
      out.write("        {\r\n");
      out.write("            color: #222222;\r\n");
      out.write("        }\r\n");
      out.write("        .content .customers table td\r\n");
      out.write("        {\r\n");
      out.write("            float: left;\r\n");
      out.write("            margin-left: 30px;\r\n");
      out.write("        }\r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <div class=\"deshboard\">\r\n");
      out.write("        <div class=\"navigation\">\r\n");
      out.write("            <ul>\r\n");
      out.write("                <li><i class=\"xi-home-o\" ></i></li>\r\n");
      out.write("                <li><i class=\"xi-money\"></i></li>\r\n");
      out.write("                <li><i class=\"xi-help-o\"></i></li>\r\n");
      out.write("                <li><i class=\"xi-users-o\"></i></li>\r\n");
      out.write("                <li><i class=\"xi-cog\"></i></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"content\">\r\n");
      out.write("            <div class=\"header\">\r\n");
      out.write("                <ul class=\"list\">\r\n");
      out.write("                    <li class=\"item left\"><a href=\"#\"><i class=\"xi-bars\"></i></a></li>\r\n");
      out.write("                    <li class=\"item center\"><i class=\"xi-search\"></i><input type=\"text\" name=\"search\" id=\"search\" value=\"검색\"></li>\r\n");
      out.write("                    <li class=\"item right\"><strong>관리자님 환영합니다.</strong></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div> \r\n");
      out.write("            <div class=\"total\">\r\n");
      out.write("                <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/admin/views.do\">\r\n");
      out.write("                    <div class=\"views\">\r\n");
      out.write("                        <h3>9,999</h3>\r\n");
      out.write("                        <p style=\"color: gray; font-size: 18px;\">조회수</p>\r\n");
      out.write("                        <i class=\"xi-eye-o\"></i>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </a>\r\n");
      out.write("                <a href=\"orderList.html\">\r\n");
      out.write("                    <div class=\"sales\">\r\n");
      out.write("                        <h3>80</h3>\r\n");
      out.write("                        <p style=\"color: gray; font-size: 18px;\">주문</p>\r\n");
      out.write("                        <i class=\"xi-cart-o\"></i>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </a>\r\n");
      out.write("                <a href=\"boardList.html\">\r\n");
      out.write("                    <div class=\"comments\">\r\n");
      out.write("                        <h3>208</h3>\r\n");
      out.write("                        <p style=\"color: gray; font-size: 18px;\">문의</p>\r\n");
      out.write("                        <i class=\"xi-help-o\"></i>     \r\n");
      out.write("                    </div>\r\n");
      out.write("                </a>\r\n");
      out.write("                <a href=\"#\">\r\n");
      out.write("                    <div class=\"earning\">\r\n");
      out.write("                        <h3>$6,008</h3>\r\n");
      out.write("                        <p style=\"color: gray; font-size: 18px;\">매출</p>\r\n");
      out.write("                        <i class=\"xi-won\"></i> \r\n");
      out.write("                    </div>\r\n");
      out.write("                </a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div style=\"display: flex; justify-content: space-between;\">\r\n");
      out.write("                <div class=\"orders\">\r\n");
      out.write("                    <div style=\"display: flex; justify-content: space-between;\">\r\n");
      out.write("                        <h2>주문</h2>\r\n");
      out.write("                        <button>View All</button>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <table>\r\n");
      out.write("                        <thead>\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <th>이름</th>\r\n");
      out.write("                                <th>가격</th>\r\n");
      out.write("                                <th>결제 방법</th>\r\n");
      out.write("                                <th>상태</th>\r\n");
      out.write("                            </tr> \r\n");
      out.write("                        </thead>                \r\n");
      out.write("                        <tbody>\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td>시리</td>\r\n");
      out.write("                                <td>9,805,300</td>\r\n");
      out.write("                                <td>무통장 입금</td>\r\n");
      out.write("                                <td>배송중</td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td>이규진</td>\r\n");
      out.write("                                <td>150,320</td>\r\n");
      out.write("                                <td>카드</td>\r\n");
      out.write("                                <td>배송완료</td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td>홍길동</td>\r\n");
      out.write("                                <td>11111</td>\r\n");
      out.write("                                <td>무통장 입금</td>\r\n");
      out.write("                                <td>입금완료</td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td>홍길동</td>\r\n");
      out.write("                                <td>11111</td>\r\n");
      out.write("                                <td>무통장 입금</td>\r\n");
      out.write("                                <td>입금완료</td>\r\n");
      out.write("                            </tr>     \r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td>홍길동</td>\r\n");
      out.write("                                <td>11111</td>\r\n");
      out.write("                                <td>카드</td>\r\n");
      out.write("                                <td>배송중</td>\r\n");
      out.write("                            </tr>     \r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td>홍길동</td>\r\n");
      out.write("                                <td>11111</td>\r\n");
      out.write("                                <td>카드</td>\r\n");
      out.write("                                <td>배송완료</td>\r\n");
      out.write("                            </tr>     \r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td>홍길동</td>\r\n");
      out.write("                                <td>11111</td>\r\n");
      out.write("                                <td>카드</td>\r\n");
      out.write("                                <td>배송대기</td>\r\n");
      out.write("                            </tr>     \r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td>홍길동</td>\r\n");
      out.write("                                <td>11111</td>\r\n");
      out.write("                                <td>카드</td>\r\n");
      out.write("                                <td>상품준비</td>\r\n");
      out.write("                            </tr>    \r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td>홍길동</td>\r\n");
      out.write("                                <td>11111</td>\r\n");
      out.write("                                <td>카드</td>\r\n");
      out.write("                                <td>취소완료</td>\r\n");
      out.write("                            </tr>  \r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td>홍길동</td>\r\n");
      out.write("                                <td>11111</td>\r\n");
      out.write("                                <td>카드</td>\r\n");
      out.write("                                <td>배송중</td>\r\n");
      out.write("                            </tr>  \r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td>홍길동</td>\r\n");
      out.write("                                <td>11111</td>\r\n");
      out.write("                                <td>카드</td>\r\n");
      out.write("                                <td>취소완료</td>\r\n");
      out.write("                            </tr>  \r\n");
      out.write("                            <tr>\r\n");
      out.write("                                <td>홍길동</td>\r\n");
      out.write("                                <td>11111</td>\r\n");
      out.write("                                <td>카드</td>\r\n");
      out.write("                                <td>반품요청</td>\r\n");
      out.write("                            </tr>  \r\n");
      out.write("                                                        \r\n");
      out.write("                        </tbody>\r\n");
      out.write("                    </table>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"customers\">\r\n");
      out.write("                    <div style=\"display: flex; justify-content: space-between;\">\r\n");
      out.write("	                    <h2>회원</h2>\r\n");
      out.write("	                    <button>View All</button>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <table>\r\n");
      out.write("                    	<!-- 일반 회원만 -->\r\n");
      out.write("	                    ");
      if (_jspx_meth_c_005fforEach_005f0(_jspx_page_context))
        return;
      out.write("   \r\n");
      out.write("                    </table>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("            \r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <script>\r\n");
      out.write("        \r\n");
      out.write("    </script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fset_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_005fset_005f0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    boolean _jspx_th_c_005fset_005f0_reused = false;
    try {
      _jspx_th_c_005fset_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fset_005f0.setParent(null);
      // /WEB-INF/views/admin/admin.jsp(5,0) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fset_005f0.setVar("path");
      // /WEB-INF/views/admin/admin.jsp(5,0) name = value type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fset_005f0.setValue(new org.apache.jasper.el.JspValueExpression("/WEB-INF/views/admin/admin.jsp(5,0) '${pageContext.request.contextPath }'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${pageContext.request.contextPath }",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
      int _jspx_eval_c_005fset_005f0 = _jspx_th_c_005fset_005f0.doStartTag();
      if (_jspx_th_c_005fset_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005fset_005f0);
      _jspx_th_c_005fset_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fset_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fset_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fforEach_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    boolean _jspx_th_c_005fforEach_005f0_reused = false;
    try {
      _jspx_th_c_005fforEach_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fforEach_005f0.setParent(null);
      // /WEB-INF/views/admin/admin.jsp(444,21) name = items type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setItems(new org.apache.jasper.el.JspValueExpression("/WEB-INF/views/admin/admin.jsp(444,21) '${memberList }'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${memberList }",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
      // /WEB-INF/views/admin/admin.jsp(444,21) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setVar("list");
      int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
        if (_jspx_eval_c_005fforEach_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("	                    	\r\n");
            out.write("		                   		<tr onclick=\"location.href='");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("/admin/list.do?mem_id=");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${list.mem_id }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("'\">\r\n");
            out.write("		                            <th><a href=\"");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("/admin/allMemberList\"><i class=\"xi-user\"></i></a></th>\r\n");
            out.write("		                            <td>");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${list.mem_id }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</td>\r\n");
            out.write("		                        </tr>	                       \r\n");
            out.write("	                    ");
            int evalDoAfterBody = _jspx_th_c_005fforEach_005f0.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fforEach_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return true;
        }
      } catch (java.lang.Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_005fforEach_005f0[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_005fforEach_005f0.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_005fforEach_005f0.doFinally();
      }
      _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.reuse(_jspx_th_c_005fforEach_005f0);
      _jspx_th_c_005fforEach_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fforEach_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fforEach_005f0_reused);
    }
    return false;
  }
}