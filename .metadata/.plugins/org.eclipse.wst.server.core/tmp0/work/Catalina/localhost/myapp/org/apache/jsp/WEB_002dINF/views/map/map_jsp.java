/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.60
 * Generated at: 2024-01-08 04:04:04 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.map;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class map_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(5);
    _jspx_dependants.put("jar:file:/D:/gyujin/sideP/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/shoppiingMall/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/views/map/../include/footer.jsp", Long.valueOf(1702642534211L));
    _jspx_dependants.put("/WEB-INF/views/map/../include/header.jsp", Long.valueOf(1704361184682L));
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
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.release();
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
      out.write("    <meta charset='utf-8'>\r\n");
      out.write("    <meta http-equiv='X-UA-Compatible' content='IE=edge'>\r\n");
      out.write("    <title>위치</title>\r\n");
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
      out.write("\r\n");
      out.write("    <style>\r\n");
      out.write("        .container\r\n");
      out.write("        {\r\n");
      out.write("            margin: 100px 0 50px 0;\r\n");
      out.write("        }\r\n");
      out.write("        .location\r\n");
      out.write("        {\r\n");
      out.write("            width: 50%;\r\n");
      out.write("            height: 100%;\r\n");
      out.write("            margin: 100px 100px 50px 0;\r\n");
      out.write("            float: left;\r\n");
      out.write("            text-align: center;   \r\n");
      out.write("\r\n");
      out.write("        }\r\n");
      out.write("        .location h2\r\n");
      out.write("        {\r\n");
      out.write("            font-weight: bold;\r\n");
      out.write("            font-size: 2.6em;\r\n");
      out.write("        }\r\n");
      out.write("        .location p\r\n");
      out.write("        {\r\n");
      out.write("            margin: 20px;\r\n");
      out.write("            border: 1px solid red;\r\n");
      out.write("            border-radius: 25px;\r\n");
      out.write("        }\r\n");
      out.write("        .location p a:hover\r\n");
      out.write("        {\r\n");
      out.write("            color: #222;\r\n");
      out.write("        }\r\n");
      out.write("        #map\r\n");
      out.write("        {\r\n");
      out.write("            width: 400px;\r\n");
      out.write("            height: 400px; \r\n");
      out.write("        }\r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    \r\n");
      out.write("	");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      if (_jspx_meth_c_005fset_005f1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"ko\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>헤더</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"normalize.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\r\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\" crossorigin=\"anonymous\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css\">\r\n");
      out.write("\r\n");
      out.write("    <script src=\"//code.jquery.com/jquery-1.11.0.min.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <header>\r\n");
      out.write("        <div class=\"header\">\r\n");
      out.write("            <div class=\"headerWrap\">\r\n");
      out.write("                <div class=\"banner\">\r\n");
      out.write("                    <section>\r\n");
      out.write("                        <h2>DAEBU EXPRESS</h2>\r\n");
      out.write("                        <div class=\"star star1\"></div>\r\n");
      out.write("                        <div class=\"star star2\"></div>\r\n");
      out.write("                        <div class=\"star star3\"></div>\r\n");
      out.write("                        <div class=\"star star4\"></div>\r\n");
      out.write("                        <div class=\"star star5\"></div>\r\n");
      out.write("                        <div class=\"star star6\"></div>\r\n");
      out.write("                        <div class=\"star star7\"></div>\r\n");
      out.write("                        <div class=\"star star8\"></div>\r\n");
      out.write("                    </section>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"headerContent\">\r\n");
      out.write("                    <div class=\"left\">\r\n");
      out.write("                        <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/\">\r\n");
      out.write("                            <h2>DAEBU</h2>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"center\">\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li><a href=\"#\">맨투맨</a></li>\r\n");
      out.write("                            <li><a href=\"#\">후드티</a></li>\r\n");
      out.write("                            <li><a href=\"#\">후드집업</a></li>\r\n");
      out.write("                            <li><a href=\"#\">아우터</a></li>\r\n");
      out.write("                            <li><a href=\"#\">바지</a></li>\r\n");
      out.write("                            <li><a href=\"#\">코트</a></li>                           \r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"right\">\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/member/loginForm.do\">로그인</a></li>\r\n");
      out.write("                            <li><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/member/joinForm.do\">회원가입</a></li>\r\n");
      out.write("                            <li><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/admin/admin.do\">관리자</a></li>\r\n");
      out.write("                            <li><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/basket/basket.do\">장바구니</a></li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </header>\r\n");
      out.write("      \r\n");
      out.write("   \r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div class=\"location\">\r\n");
      out.write("            <h2>찾아오시는길</h2>\r\n");
      out.write("            <p>위치 : 경기도 안산시 단원구 감나무길 92, 1층 (대부북동)</p>\r\n");
      out.write("            <p>전화번호 : <a href=\"tel:01063533014\">01063533014</a></p>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div id=\"map\"></div>\r\n");
      out.write("    </div>\r\n");
      out.write(" \r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      if (_jspx_meth_c_005fset_005f2(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"ko\">\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>푸터</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"normalize.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\r\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\" crossorigin=\"anonymous\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css\">\r\n");
      out.write("\r\n");
      out.write("    <script src=\"//code.jquery.com/jquery-1.11.0.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<footer>\r\n");
      out.write("    <div class=\"footer\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <h2>DAEBU EXPRESS </h2>\r\n");
      out.write("            <span>\r\n");
      out.write("                <a href=\"#\"><i class=\"xi-instagram\"></i></a>\r\n");
      out.write("                <a href=\"#\"><i class=\"xi-facebook-official\"></i></a>\r\n");
      out.write("            </span>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"container2\">\r\n");
      out.write("            <div class=\"address\">\r\n");
      out.write("                <p>ADDRESS</p>\r\n");
      out.write("                <strong>경기도 안산시 단원구 감나무길 92, 1층 (대부북동)</strong><br>\r\n");
      out.write("                <strong><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${path }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/map/map.do\">찾아오시는길</a></strong>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"sitePolicy\">\r\n");
      out.write("                <p>SITE POLICY</p>\r\n");
      out.write("                <strong><a href=\"#\" id=\"btn-modal\">TERM OF USE </a></strong>     \r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"service\">\r\n");
      out.write("                <p>CUSTOMER SERVICE</p>\r\n");
      out.write("                <strong>TEL : 01063533014</strong><br>\r\n");
      out.write("                <strong>MAIL : lcjh313@google.com</strong>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("    <div id=\"modal\" class=\"modal-overlay\">\r\n");
      out.write("        <div class=\"modal-window\">\r\n");
      out.write("            <div class=\"title\">\r\n");
      out.write("                <h2>이용약관</h2>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"close-area\"><i class=\"xi-close\"></i></div>\r\n");
      out.write("            <div id=\"content\">\r\n");
      out.write("                <p>제1조 (목적)</p>\r\n");
      out.write("                <p>이 약관은 대부 익스프레스(전자상거래 사업자)가<br>\r\n");
      out.write("                   운영하는 대부 익스프레스 사이버 몰(이하 “몰”이라 한다)에서<br>\r\n");
      out.write("                   제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어<br>\r\n");
      out.write("                   사이버 몰과 이용자의 권리․의무 및 책임 사항을 규정함을 목적으로 합니다.</p>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <script>\r\n");
      out.write("        /* 모달창의 기본적은 이벤트 */\r\n");
      out.write("        /*\r\n");
      out.write("            1. 특정 버튼을 누르면 모달창이 켜진다.\r\n");
      out.write("            2. 모달창의 클로즈(x) 버튼을 누르면 모달창이 꺼진다.\r\n");
      out.write("            3. 모달창 바깥 영역 (위 그림에서 밝기가 어두운 부분) 을 클릭하면 모달창이 꺼진다.\r\n");
      out.write("            4. 모달창이 켜진 상태에서 ESC 버튼을 누르면 모달창이 꺼진다.\r\n");
      out.write("        */\r\n");
      out.write("\r\n");
      out.write("        const loremIpsum = document.getElementById(\"lorem-ipsum\");\r\n");
      out.write("        fetch(\"https://baconipsum.com/api/?type=all-meat&paras=200&format=html\")\r\n");
      out.write("            .then(response => response.text())\r\n");
      out.write("            .then(result => loremIpsum.innerHTML = result);\r\n");
      out.write("\r\n");
      out.write("            /* 'TERM OF USE' 버튼을 누르면 모달창이 켜지게 하기 */\r\n");
      out.write("            /* 모달의 초기 상태를 display: none;으로 했다가 'TERM OF USE' 버튼을 클릭하면 display: flex; 변경 */\r\n");
      out.write("            const modal = document.getElementById(\"modal\");\r\n");
      out.write("            const btnModal = document.getElementById(\"btn-modal\");\r\n");
      out.write("            btnModal.addEventListener(\"click\", e => {\r\n");
      out.write("                modal.style.display = \"flex\";\r\n");
      out.write("            });\r\n");
      out.write("\r\n");
      out.write("            /* 모달창의 클로즈(x) 버튼을 누르면 모달창이 꺼지게 하기 */\r\n");
      out.write("            const closeBtn = modal.querySelector(\".close-area\");\r\n");
      out.write("            closeBtn.addEventListener(\"click\", e => {\r\n");
      out.write("                modal.style.display = \"none\";\r\n");
      out.write("            });\r\n");
      out.write("\r\n");
      out.write("            /* 모달창 바깥 영역을 클릭하면 모달창이 꺼지게 하기 */\r\n");
      out.write("            modal.addEventListener(\"click\", e => {\r\n");
      out.write("            const evTarget = e.target;\r\n");
      out.write("            if(evTarget.classList.contains(\"modal-overlay\")) {\r\n");
      out.write("                modal.style.display = \"none\";\r\n");
      out.write("                };\r\n");
      out.write("            });\r\n");
      out.write("\r\n");
      out.write("            /* 모달창이 켜진 상태에서 ESC 버튼을 누르면 모달창이 꺼지게 하기 */\r\n");
      out.write("            window.addEventListener(\"keyup\", e => {\r\n");
      out.write("            if(modal.style.display === \"flex\" && e.key === \"Escape\") {\r\n");
      out.write("                modal.style.display = \"none\"\r\n");
      out.write("                 };\r\n");
      out.write("            });\r\n");
      out.write("\r\n");
      out.write("    </script>\r\n");
      out.write("</footer>\r\n");
      out.write("        \r\n");
      out.write("    \r\n");
      out.write("      \r\n");
      out.write("   \r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <script type=\"text/javascript\" src=\"//dapi.kakao.com/v2/maps/sdk.js?appkey=c068af21514a0a6d39842bb32638a17e\"></script>\r\n");
      out.write("    <script type=\"text/javascript\">\r\n");
      out.write("	\r\n");
      out.write("        var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스\r\n");
      out.write("        var options = { //지도를 생성할 때 필요한 기본 옵션\r\n");
      out.write("            center: new kakao.maps.LatLng(37.24229943956779, 126.58379843924548), //지도의 중심좌표.\r\n");
      out.write("            level: 3 //지도의 레벨(확대, 축소 정도)\r\n");
      out.write("        };\r\n");
      out.write("\r\n");
      out.write("	    var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴\r\n");
      out.write("\r\n");
      out.write("        // var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다\r\n");
      out.write("\r\n");
      out.write("        // 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다\r\n");
      out.write("        var mapTypeControl = new kakao.maps.MapTypeControl();\r\n");
      out.write("\r\n");
      out.write("        // 지도에 컨트롤을 추가해야 지도위에 표시됩니다\r\n");
      out.write("        // kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다\r\n");
      out.write("        map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);\r\n");
      out.write("\r\n");
      out.write("        // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다\r\n");
      out.write("        var zoomControl = new kakao.maps.ZoomControl();\r\n");
      out.write("        map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);\r\n");
      out.write("\r\n");
      out.write("        // 마커가 표시될 위치입니다 \r\n");
      out.write("        var markerPosition  = new kakao.maps.LatLng(37.24229943956779, 126.58379843924548); \r\n");
      out.write("\r\n");
      out.write("        // 마커를 생성합니다\r\n");
      out.write("        var marker = new kakao.maps.Marker({\r\n");
      out.write("            position: markerPosition\r\n");
      out.write("        });\r\n");
      out.write("\r\n");
      out.write("        // 마커가 지도 위에 표시되도록 설정합니다\r\n");
      out.write("        marker.setMap(map);\r\n");
      out.write("\r\n");
      out.write("        var iwContent = '<div style=\"padding:5px;\">대부 익스프레스<br><a href=\"https://map.kakao.com/link/roadview/37.24229943956779, 126.58379843924548\" style=\"color:blue\" target=\"_blank\">로드뷰 보기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다\r\n");
      out.write("            iwPosition = new kakao.maps.LatLng(37.24229943956779, 126.58379843924548); //인포윈도우 표시 위치입니다\r\n");
      out.write("\r\n");
      out.write("        // 인포윈도우를 생성합니다\r\n");
      out.write("        var infowindow = new kakao.maps.InfoWindow({\r\n");
      out.write("            position : iwPosition, \r\n");
      out.write("            content : iwContent \r\n");
      out.write("        });\r\n");
      out.write("        \r\n");
      out.write("        // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다\r\n");
      out.write("        infowindow.open(map, marker); \r\n");
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
      // /WEB-INF/views/map/map.jsp(5,0) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fset_005f0.setVar("path");
      // /WEB-INF/views/map/map.jsp(5,0) name = value type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fset_005f0.setValue(new org.apache.jasper.el.JspValueExpression("/WEB-INF/views/map/map.jsp(5,0) '${pageContext.request.contextPath }'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${pageContext.request.contextPath }",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
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

  private boolean _jspx_meth_c_005fset_005f1(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_005fset_005f1 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    boolean _jspx_th_c_005fset_005f1_reused = false;
    try {
      _jspx_th_c_005fset_005f1.setPageContext(_jspx_page_context);
      _jspx_th_c_005fset_005f1.setParent(null);
      // /WEB-INF/views/map/../include/header.jsp(5,0) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fset_005f1.setVar("path");
      // /WEB-INF/views/map/../include/header.jsp(5,0) name = value type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fset_005f1.setValue(new org.apache.jasper.el.JspValueExpression("/WEB-INF/views/map/../include/header.jsp(5,0) '${pageContext.request.contextPath }'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${pageContext.request.contextPath }",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
      int _jspx_eval_c_005fset_005f1 = _jspx_th_c_005fset_005f1.doStartTag();
      if (_jspx_th_c_005fset_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005fset_005f1);
      _jspx_th_c_005fset_005f1_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fset_005f1, _jsp_getInstanceManager(), _jspx_th_c_005fset_005f1_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fset_005f2(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_005fset_005f2 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    boolean _jspx_th_c_005fset_005f2_reused = false;
    try {
      _jspx_th_c_005fset_005f2.setPageContext(_jspx_page_context);
      _jspx_th_c_005fset_005f2.setParent(null);
      // /WEB-INF/views/map/../include/footer.jsp(5,0) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fset_005f2.setVar("path");
      // /WEB-INF/views/map/../include/footer.jsp(5,0) name = value type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fset_005f2.setValue(new org.apache.jasper.el.JspValueExpression("/WEB-INF/views/map/../include/footer.jsp(5,0) '${pageContext.request.contextPath }'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${pageContext.request.contextPath }",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
      int _jspx_eval_c_005fset_005f2 = _jspx_th_c_005fset_005f2.doStartTag();
      if (_jspx_th_c_005fset_005f2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005fset_005f2);
      _jspx_th_c_005fset_005f2_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fset_005f2, _jsp_getInstanceManager(), _jspx_th_c_005fset_005f2_reused);
    }
    return false;
  }
}