/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.84
 * Generated at: 2022-12-05 01:47:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.PrintWriter;
import bbs.BbsDAO;
import bbs.Bbs;
import java.util.ArrayList;

public final class board_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.io.PrintWriter");
    _jspx_imports_classes.add("bbs.Bbs");
    _jspx_imports_classes.add("bbs.BbsDAO");
    _jspx_imports_classes.add("java.util.ArrayList");
  }

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
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("<script src=\"https://kit.fontawesome.com/60c73f104d.js\"\r\n");
      out.write("	crossorigin=\"anonymous\"></script>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/styles.css\" />\r\n");
      out.write("<meta charset=\"UTF-8\" />\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n");
      out.write("<title>K LEAGUE DATA</title>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("	");

	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	} else {
	
      out.write("\r\n");
      out.write("	<script>\r\n");
      out.write("		alert(\"로그인이 필요합니다.\")\r\n");
      out.write("		location.href = 'login.jsp';\r\n");
      out.write("	</script>\r\n");
      out.write("	");

	}
	int pageNumber = 1;
	if (request.getParameter("pageNumber") != null) {
	pageNumber = Integer.parseInt(request.getParameter("pageNumber"));

	}
	
      out.write("\r\n");
      out.write("\r\n");
      out.write("	<div class=\"top-bar\">\r\n");
      out.write("		<div class=\"top-bar__logo\">\r\n");
      out.write("			<a href=\"index.jsp\"> <img class=\"top-bar__logo__svg\"\r\n");
      out.write("				src=\"./css/img/logo.png\" alt=\"K리그 로고\">\r\n");
      out.write("			</a>\r\n");
      out.write("		</div>\r\n");
      out.write("		<div class=\"top-bar__login\">\r\n");
      out.write("			<div class=\"top-bar__login__column\">\r\n");
      out.write("				");

				if (userID == null) {
				
      out.write("\r\n");
      out.write("				</span> <span class=\"top-bar__login__column__left\"> <a\r\n");
      out.write("					href=\"login.jsp\">로그인</a>\r\n");
      out.write("				</span>\r\n");
      out.write("\r\n");
      out.write("				");

				} else {
				
      out.write("\r\n");
      out.write("				<span class=\"top-bar__login__column__left\"> <a\r\n");
      out.write("					href=\"myInfo.jsp\">내정보</a> <span\r\n");
      out.write("					class=\"top-bar__login__column__right\"> <a\r\n");
      out.write("						href=\"logoutAction.jsp\">로그아웃</a> ");

 }
 
      out.write("\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("	</div>\r\n");
      out.write("\r\n");
      out.write("	<header class=\"header-bar\">\r\n");
      out.write("		<div class=\"header-bar__team\">\r\n");
      out.write("			<a href=\"team.jsp\"> <span>팀</span></a>\r\n");
      out.write("		</div>\r\n");
      out.write("		<div class=\"header-bar__player\">\r\n");
      out.write("			<a href=\"player.jsp\"> <span>선수</span></a>\r\n");
      out.write("		</div>\r\n");
      out.write("		<div class=\"header-bar__calendar\">\r\n");
      out.write("			<a href=\"board.jsp\"> <span>게시판</span></a>\r\n");
      out.write("		</div>\r\n");
      out.write("	</header>\r\n");
      out.write("\r\n");
      out.write("	<div class=\"info-bar\">\r\n");
      out.write("		<div class=\"info-bar__column\">\r\n");
      out.write("			<span>게시판 화면</span> <span>K리그의 선수, 팀 평가를 할 수 있는 공간입니다.</span>\r\n");
      out.write("		</div>\r\n");
      out.write("	</div>\r\n");
      out.write("\r\n");
      out.write("	<div class=\"main\">\r\n");
      out.write("		<div class=\"board\">\r\n");
      out.write("			<table class=\"board__table\">\r\n");
      out.write("				<thead>\r\n");
      out.write("					<tr>\r\n");
      out.write("						<th>번호</th>\r\n");
      out.write("						<th>제목</th>\r\n");
      out.write("						<th>작성자</th>\r\n");
      out.write("						<th>작성일</th>\r\n");
      out.write("					</tr>\r\n");
      out.write("				</thead>\r\n");
      out.write("				<tbody>\r\n");
      out.write("					");

					BbsDAO bbsDAO = new BbsDAO();
					ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
					for (int i = 0; i < list.size(); i++) {
					
      out.write("\r\n");
      out.write("					<tr>\r\n");
      out.write("						<td>");
      out.print(list.get(i).getBbsID());
      out.write("</td>\r\n");
      out.write("						<td>\r\n");
      out.write("							<a href=\"view.jsp?bbsID=");
      out.print(list.get(i).getBbsID());
      out.write("\">\r\n");
      out.write("							");
      out.print(list.get(i).getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>"));
      out.write("</a>\r\n");
      out.write("						</td>\r\n");
      out.write("						<td>");
      out.print(list.get(i).getUserID());
      out.write("</td>\r\n");
      out.write("						<td>");
      out.print(list.get(i).getBbsDate().substring(0, 11) 
						+ list.get(i).getBbsDate().substring(11, 13) + "시"
						+ list.get(i).getBbsDate().substring(14, 16) + "분");
      out.write("\r\n");
      out.write("						</td>\r\n");
      out.write("					</tr>\r\n");
      out.write("					");

					}
					
      out.write("\r\n");
      out.write("				</tbody>\r\n");
      out.write("			</table>\r\n");
      out.write("			<div class=\"paging\">\r\n");
      out.write("			");

			if(pageNumber != 1) {
			
      out.write("\r\n");
      out.write("				<a href=\"board.jsp?pageNumber=");
      out.print( pageNumber - 1 );
      out.write("\" class=\"num-on\">이전</a>\r\n");
      out.write("			");
 
			} if(bbsDAO.nextPage(pageNumber)) {
			
      out.write("\r\n");
      out.write("				<a href=\"board.jsp?pageNumber=");
      out.print( pageNumber + 1 );
      out.write("\" class=\"num-on\">다음</a>\r\n");
      out.write("			");

			}
			
      out.write("\r\n");
      out.write("				<a href=\"write.jsp\" class=\"board__btn\">글쓰기</a>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("	</div>\r\n");
      out.write("	<footer class=\"bottom-bar\">\r\n");
      out.write("		<a href=\"index.jsp\"> <img src=\"./css/img/foot_logo.png\"\r\n");
      out.write("			alt=\"K리그 투명로고\">\r\n");
      out.write("		</a>\r\n");
      out.write("	</footer>\r\n");
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
}