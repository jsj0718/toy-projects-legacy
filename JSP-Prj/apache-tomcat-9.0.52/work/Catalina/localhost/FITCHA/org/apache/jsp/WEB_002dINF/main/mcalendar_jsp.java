/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.52
 * Generated at: 2021-08-19 17:51:47 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.main;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import com.google.gson.Gson;

public final class mcalendar_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes.add("java.util.List");
    _jspx_imports_classes.add("com.google.gson.Gson");
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

    String id = (String) session.getAttribute("id");
    if (id == null) {
      response.sendRedirect(request.getContextPath() + "/sign-in");
    }
    
    String title = request.getParameter("title");
    if (title == null) {
      title = "";
    }

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>FITCHA</title>\r\n");
      out.write("<meta charset=\"utf-8\" />\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=no\" />\r\n");
      out.write("<link href=\"https://fontmeme.com/permalink/210816/95cfd40502d9ebe4522b74e094042fcb.png\" rel=\"shortcut icon\" type=\"image/x-icon\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.15.4/css/all.css\" integrity=\"sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm\" crossorigin=\"anonymous\">\r\n");
      out.write("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We\" crossorigin=\"anonymous\">\r\n");
      out.write("<noscript>\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/css/main/noscript.css\" />\r\n");
      out.write("</noscript>\r\n");
      out.write("<link href='");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/calendar-assets/main.css' rel='stylesheet' />\r\n");
      out.write("<script src='");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/calendar-assets/main.js'></script>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("  // 로그아웃\r\n");
      out.write("  var logout = function() {\r\n");
      out.write("    var xhrpost = new XMLHttpRequest();\r\n");
      out.write("  \r\n");
      out.write("    // 통신할 방식, url, 동기 여부 설정\r\n");
      out.write("    xhrpost.open(\"POST\", \"logout\", true);\r\n");
      out.write("    // 요청\r\n");
      out.write("    xhrpost.send();\r\n");
      out.write("    // 응답\r\n");
      out.write("    xhrpost.onreadystatechange = function() {\r\n");
      out.write("      if (xhrpost.readyState == XMLHttpRequest.DONE && xhrpost.status == 200) {\r\n");
      out.write("        location.href = \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/sign-in\";\r\n");
      out.write("      }\r\n");
      out.write("    }\r\n");
      out.write("  }\r\n");
      out.write("	document.addEventListener('DOMContentLoaded', function() {\r\n");
      out.write("		var dipsId = document.getElementById(\"dipsId\"); // 값선언\r\n");
      out.write("		var userId = document.getElementById(\"userId\");\r\n");
      out.write("		var movieId = document.getElementById(\"movieId\");\r\n");
      out.write("		var ddate = document.getElementById(\"ddate\");\r\n");
      out.write("		var image_url =  document.getElementById(\"image_url\");\r\n");
      out.write("		var saveBtn = document.getElementById(\"save-btn\");\r\n");
      out.write("		var updateBtn = document.getElementById(\"update-btn\");\r\n");
      out.write("		var deleteBtn = document.getElementById(\"delete-btn\");\r\n");
      out.write("		\r\n");
      out.write("		var movieTitle = document.getElementById(\"movieTitle\");\r\n");
      out.write("		var dipsNo = document.getElementById(\"dipsNo\");\r\n");
      out.write("		\r\n");
      out.write("		var img=\"\";\r\n");
      out.write("		//var mjson = .getAttribute(\"mjson\");\r\n");
      out.write("		\r\n");
      out.write("		");

      String mjson2 = (String) request.getAttribute("movieJson");
      Gson gson = new Gson();
    
      out.write('\r');
      out.write('\n');
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("		\r\n");
      out.write("		var calendarEl = document.getElementById('calendar');\r\n");
      out.write("		");
      out.write("\r\n");
      out.write("		var calendar = new FullCalendar.Calendar(calendarEl, {\r\n");
      out.write("			width: \"100px\",\r\n");
      out.write("			initialView : 'dayGridMonth',\r\n");
      out.write("			dayMaxEventRows: true,\r\n");
      out.write("			views: {\r\n");
      out.write("				dayGrid: {\r\n");
      out.write("				},\r\n");
      out.write("					timeGrid: {\r\n");
      out.write("					},\r\n");
      out.write("						dayMaxEventRows:6\r\n");
      out.write("			}\r\n");
      out.write("		,\r\n");
      out.write("			events: ");
      out.print(mjson2);
      out.write("\r\n");
      out.write("			,\r\n");
      out.write("			dateClick : function(info) { // 날짜 클릭 시, 해당날짜\r\n");
      out.write("				dipsNo.value=\"\"; // 공백 값, null 값이 들어온다..\r\n");
      out.write("				movieTitle.value=\"\";\r\n");
      out.write("				image_url.value=\"\";\r\n");
      out.write("				ddate.value = info.dateStr; // info 날짜 값?\r\n");
      out.write("				\r\n");
      out.write("				saveBtn.setAttribute(\"type\",\"button\"); // 저장버튼\r\n");
      out.write("				updateBtn.setAttribute(\"type\",\"hidden\"); // 수정버튼 숨김\r\n");
      out.write("				deleteBtn.setAttribute(\"type\",\"hidden\"); // 삭제버튼 숨김\r\n");
      out.write("				\r\n");
      out.write("				location.href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/mcalendar#memo\"; // memo로 넘어감\r\n");
      out.write("				\r\n");
      out.write("// 				calendar.addEvent(\r\n");
      out.write("// 						{\r\n");
      out.write("// 							id : 'b',\r\n");
      out.write("// 							title : 'my event',\r\n");
      out.write("// 							start : info.dateStr\r\n");
      out.write("// 						}\r\n");
      out.write("// 						);\r\n");
      out.write("			\r\n");
      out.write("			},\r\n");
      out.write("		\r\n");
      out.write("			\r\n");
      out.write("			eventContent: function(arg){\r\n");
      out.write("				let arrayOfDomNodes = []\r\n");
      out.write("				// image event\r\n");
      out.write("// 				let imgEventWrap=document.createElement('div')\r\n");
      out.write("				let titleEventWrap=document.createElement('div')\r\n");
      out.write("// 				if(arg.event.extendedProps.image_url){\r\n");
      out.write("				if(arg.event.extendedProps.movieTitle){\r\n");
      out.write("// 					let imgEvent = '<img src=\"'+arg.event.extendedProps.image_url+'\" >'\r\n");
      out.write("					let titleEvent = arg.event.extendedProps.movieTitle;\r\n");
      out.write("					//imgEventWrap.classList = \"fc-event-img\"\r\n");
      out.write("					titleEventWrap.classList = \"span.fc-title\"\r\n");
      out.write("					titleEventWrap.innerHTML=titleEvent;\r\n");
      out.write("				}\r\n");
      out.write("// 				arrayOfDomNodes=[imgEventWrap]\r\n");
      out.write("				arrayOfDomNodes=[titleEventWrap]\r\n");
      out.write("				\r\n");
      out.write("				return{ domNodes: arrayOfDomNodes }\r\n");
      out.write("			},\r\n");
      out.write("			\r\n");
      out.write("			eventClick : function(arg) { // 이벤트 클릭 시\r\n");
      out.write("				\r\n");
      out.write("				dipsNo.value = arg.event.extendedProps.dipsNo; // 넘버값 = id\r\n");
      out.write("// 				alert(arg.event.startStr);\r\n");
      out.write("				ddate.value = arg.event.startStr; // 날짜값 = 시작날짜\r\n");
      out.write("				movieTitle.value = arg.event.extendedProps.movieTitle; // 제목값 = 제목\r\n");
      out.write("// 				memo.value = arg.event.extendedProps.description; // 메모 값 = 메모에 적은 문장?\r\n");
      out.write("// 				image_url.value = arg.event.extendedProps.image_url;\r\n");
      out.write("				image_url.src = arg.event.extendedProps.image_url;\r\n");
      out.write("// 				alert(\"img경로:\" +image_url.value);\r\n");
      out.write("				\r\n");
      out.write("				saveBtn.setAttribute(\"type\",\"hidden\"); // 저장 히든\r\n");
      out.write("				updateBtn.setAttribute(\"type\",\"hidden\"); // 수정\r\n");
      out.write("				deleteBtn.setAttribute(\"type\",\"button\"); // 삭제\r\n");
      out.write("				\r\n");
      out.write("				location.href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/mcalendar#memo\"; // memo로 넘어감\r\n");
      out.write("				\r\n");
      out.write("				\r\n");
      out.write("			},\r\n");
      out.write("// 			dayRender: function(date, cell){\r\n");
      out.write("// 				cell.html(\"<img src='\" +img+\"' >\");\r\n");
      out.write("// 			}\r\n");
      out.write("			//events : ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${mjson}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\r\n");
      out.write("		});\r\n");
      out.write("		calendar.render(); // 달력 출력?\r\n");
      out.write("	\r\n");
      out.write("		const cancelBtn = document.getElementById(\"cancel-btn\"); \r\n");
      out.write("		var dipsId = document.getElementById(\"dipsId\");\r\n");
      out.write("		var ddate = document.getElementById(\"ddate\");\r\n");
      out.write("		var movieId = document.getElementById(\"movieId\");\r\n");
      out.write("		var userId = document.getElementById(\"userId\");\r\n");
      out.write("// 		var image_url = document.getElementById(\"image_url\");\r\n");
      out.write("		var movieTitle = document.getElementById(\"movieTitle\");\r\n");
      out.write("		var dipsNo = document.getElementById(\"dipsNo\");\r\n");
      out.write("		\r\n");
      out.write("		cancelBtn.onclick = function() { // 취소 버튼이 눌렸을 때\r\n");
      out.write("			\r\n");
      out.write("			dipsNo.value=\"\";\r\n");
      out.write("			ddate.value=\"\";\r\n");
      out.write("			movieTitle.value=\"\";\r\n");
      out.write("// 			image_url.value=\"\";\r\n");
      out.write("			\r\n");
      out.write("			var saveBtn = document.getElementById(\"save-btn\");\r\n");
      out.write("			var updateBtn = document.getElementById(\"update-btn\");\r\n");
      out.write("			var deleteBtn = document.getElementById(\"delete-btn\");\r\n");
      out.write("			\r\n");
      out.write("			saveBtn.setAttribute(\"type\",\"button\"); // 저장버튼\r\n");
      out.write("			updateBtn.setAttribute(\"type\",\"hidden\"); // 수정버튼 숨김\r\n");
      out.write("			deleteBtn.setAttribute(\"type\",\"hidden\"); // 삭제버튼 숨김\r\n");
      out.write("			\r\n");
      out.write("			location.href = \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/mcalendar#home\"; // 캘린더로 돌아옴\r\n");
      out.write("		}\r\n");
      out.write("		\r\n");
      out.write("// 		const saveBtn = document.getElementById(\"save-btn\");\r\n");
      out.write("		saveBtn.onclick = function() { // 저장버튼을 누를 시\r\n");
      out.write("			//ajax 통신 요청\r\n");
      out.write("			var xhr = new XMLHttpRequest();\r\n");
      out.write("			xhr.open(\"POST\",\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/Dips-regist\", true); // post 통신\r\n");
      out.write("			xhr.setRequestHeader(\"Content-Type\", \"application/x-www-form-urlencoded\");\r\n");
      out.write("			xhr.send(\"ddate=\"+ddate.value+\"&movieId=\"+movieId.value+\"&userId=\"+userId.value); // 날짜는 날짜값, 제목은 제목값, 메모는 메모에 적힌 글 +\"&memo=\"+memo.value\r\n");
      out.write("			\r\n");
      out.write("// 			xhr.onreadystatechange = function() {\r\n");
      out.write("// 				if(xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200) {\r\n");
      out.write("					\r\n");
      out.write("// 					var code = xhr.responseText;\r\n");
      out.write("					\r\n");
      out.write("// 					if(code) {\r\n");
      out.write("// 						//성공\r\n");
      out.write("// 						location.href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/mcalendar#home\"; // 저장하고 캘린더로 돌아옴\r\n");
      out.write("// 						alert(\"메모 등록 성공\")\r\n");
      out.write("					\r\n");
      out.write("// 						calendar.addEvent(\r\n");
      out.write("// 	 						{\r\n");
      out.write("// 	 							movieId : title.value,\r\n");
      out.write("// 	 							start : ddate.value,\r\n");
      out.write("// 	 							description : memo.value\r\n");
      out.write("// 	 						}\r\n");
      out.write("// 		 					);\r\n");
      out.write("						\r\n");
      out.write("// 					} else {\r\n");
      out.write("// 						//실패\r\n");
      out.write("// 						alert(\"메모 등록 실패\")\r\n");
      out.write("						\r\n");
      out.write("// 					}\r\n");
      out.write("					\r\n");
      out.write("// 				}\r\n");
      out.write("// 			}\r\n");
      out.write("			\r\n");
      out.write("			//document.form.submit(); \r\n");
      out.write("			//서버 요청 (페이지 이동)\r\n");
      out.write("		}\r\n");
      out.write("		\r\n");
      out.write("// 		const updateBtn = document.getElementById(\"update-btn\");\r\n");
      out.write("// 		updateBtn.onclick = function() {\r\n");
      out.write("			\r\n");
      out.write("// 			document.form.action = \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/dips-update\";\r\n");
      out.write("// 			document.form.submit();\r\n");
      out.write("// 		}\r\n");
      out.write("		\r\n");
      out.write("// 		const deleteBtn = document.getElementById(\"delete-btn\");\r\n");
      out.write("		deleteBtn.onclick = function() {\r\n");
      out.write("			\r\n");
      out.write("			document.form.action = \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/dips-delete\";\r\n");
      out.write("			document.form.submit();\r\n");
      out.write("		}\r\n");
      out.write("	\r\n");
      out.write("});\r\n");
      out.write("	\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body class=\"is-preload bg-black\">\r\n");
      out.write("  <!-- HEADER -->\r\n");
      out.write("  <header>\r\n");
      out.write("    <nav id=\"navigator\" class=\"navbar navbar-expand-lg navbar-dark fixed-top\" style=\"background-color: black; height: 70px;\">\r\n");
      out.write("      <div class=\"container-fluid\">\r\n");
      out.write("        <a class=\"navbar-brand mt-1 ml-1\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/main-movie\">\r\n");
      out.write("          <img id=\"fitcha\" alt=\"FITCHA\" style=\"height: auto; width: 100px\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/img/fitcha.png\">\r\n");
      out.write("        </a>\r\n");
      out.write("        <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarNav\" aria-controls=\"navbarNav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("          <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("        </button>\r\n");
      out.write("        <div class=\"collapse navbar-collapse align-items-end justify-content-between\" id=\"navbarNav\" style=\"background-color: black;\">\r\n");
      out.write("          <ul class=\"navbar-nav\">\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("              <a class=\"nav-link\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/main-movie\">홈</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("              <a class=\"nav-link\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/main-search\">탐색하기</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("              <a class=\"nav-link\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/my-board\">My Page</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("              <a class=\"nav-link\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/main_board_view\">게시판</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("              <a class=\"nav-link active\" aria-current=\"page\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/mcalendar\">찜 목록</a>\r\n");
      out.write("            </li>\r\n");
      out.write("          </ul>\r\n");
      out.write("          <ul class=\"navbar-nav\">\r\n");
      out.write("            <li>\r\n");
      out.write("              <a class=\"btn\">\r\n");
      out.write("                <i class=\"far fa-bell\"></i>\r\n");
      out.write("              </a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"nav-item dropdown\">\r\n");
      out.write("              <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdownMenuLink\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\"> 회원 정보 </a>\r\n");
      out.write("              <ul class=\"dropdown-menu\" aria-labelledby=\"navbarDropdownMenuLink\">\r\n");
      out.write("                <li>\r\n");
      out.write("                  <a class=\"dropdown-item\" href=\"#\">회원 정보</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                  <a class=\"dropdown-item\" href=\"#\">회원 수정</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"dropdown-divider\"></li>\r\n");
      out.write("                <li>\r\n");
      out.write("                  <a class=\"dropdown-item\" href=\"javascript:logout();\">로그아웃</a>\r\n");
      out.write("                </li>\r\n");
      out.write("              </ul>\r\n");
      out.write("            </li>\r\n");
      out.write("          </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </nav>\r\n");
      out.write("  </header>\r\n");
      out.write("\r\n");
      out.write("  <!-- Wrapper-->\r\n");
      out.write("  <div id=\"wrapper\">\r\n");
      out.write("\r\n");
      out.write("    <!-- Nav -->\r\n");
      out.write("    <nav id=\"nav\">\r\n");
      out.write("      <a href=\"#home\" class=\"icon solid fa-home\">\r\n");
      out.write("        <span></span>\r\n");
      out.write("      </a>\r\n");
      out.write("      <!-- 						<a href=\"#work\" class=\"icon solid fa-folder\"><span>Work</span></a> -->\r\n");
      out.write("      <a href=\"#memo\" class=\"icon solid fa-envelope\">\r\n");
      out.write("        <span></span>\r\n");
      out.write("      </a>\r\n");
      out.write("      <!-- 						<a href=\"https://twitter.com/ajlkn\" class=\"icon brands fa-twitter\"><span>Twitter</span></a> -->\r\n");
      out.write("    </nav>\r\n");
      out.write("\r\n");
      out.write("    <!-- Main -->\r\n");
      out.write("    <div id=\"main\">\r\n");
      out.write("\r\n");
      out.write("      <!-- Me -->\r\n");
      out.write("      <article id=\"home\" class=\"panel intro\">\r\n");
      out.write("        <div id='calendar'  class=\"text-light text-white w-50 position-absolute top-50 start-50 translate-middle\" style=\"font-color:white\"></div>\r\n");
      out.write("      </article>\r\n");
      out.write("\r\n");
      out.write("      <!-- memo -->\r\n");
      out.write("      <article id=\"memo\" class=\"panel\">\r\n");
      out.write("        <!-- 								<header> -->\r\n");
      out.write("        <!-- 									<h2>My Memo</h2> -->\r\n");
      out.write("        <!-- 								</header> -->\r\n");
      out.write("        <form action=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/Dips-regist\" method=\"post\" name=\"form\">\r\n");
      out.write("          <input type=\"hidden\" name=\"no\" id=\"no\">\r\n");
      out.write("\r\n");
      out.write("          <div class=\"w-50 h-50 d-inline-block position-relative position-absolute top-50 start-50 translate-middle\">\r\n");
      out.write("            <div class=\"row d-grid gap-4 \">\r\n");
      out.write("            \r\n");
      out.write("              <div class=\" fw-bolder fs-4 position-absolute top-0 end-0 text-end\">\r\n");
      out.write("                <input type=\"date\" name=\"ddate\" id=\"ddate\" class=\"mt-5\" readonly>\r\n");
      out.write("              </div>\r\n");
      out.write("              \r\n");
      out.write("              <div class=\"col-12  fw-bolder fs-4 position-absolute top-50 end-0 translate-middle-y text-end\" >\r\n");
      out.write("                <input type=\"text\" name=\"movieTitle\" id=\"movieTitle\" placeholder=\"movieTitle\" readonly>\r\n");
      out.write("              </div>\r\n");
      out.write("              \r\n");
      out.write("              <div class=\"col-12  fw-bolder fs-4 position-absolute bottom-0 end-0 text-end\">\r\n");
      out.write("                <input type=\"text\" name=\"dipsNo\" id=\"dipsNo\" class=\"mb-5\" readonly>\r\n");
      out.write("              </div>\r\n");
      out.write("\r\n");
      out.write("              <div class=\"col-12 mw-100 position-absolute top-50 start-0 translate-middle-y\">\r\n");
      out.write("                <img src='' id=\"image_url\" name=\"image_url\" alt=\"포스터\" style=\"width:300px\" />\r\n");
      out.write("                <!-- 												out.print(\"Poster\"); -->\r\n");
      out.write("                <!-- 												<input type=\"text\" name=\"image_url\" id=\"image_url\" > -->\r\n");
      out.write("              </div>\r\n");
      out.write("              <!-- 											<div class=\"col-12\"> -->\r\n");
      out.write("              <!-- 												<textarea name=\"memo\" id=\"memo-area\" placeholder=\"Memo\" rows=\"6\"></textarea> -->\r\n");
      out.write("              <!-- 											</div> -->\r\n");
      out.write("              <div class=\"fw-bolder position-absolute top-100 start-50 translate-middle text-center\">\r\n");
      out.write("                <input type=\"button\" value=\"저장\" id=\"save-btn\">\r\n");
      out.write("                <input type=\"hidden\" value=\"수정\" id=\"update-btn\">\r\n");
      out.write("                <input type=\"hidden\" value=\"삭제\" id=\"delete-btn\">\r\n");
      out.write("                <input type=\"button\" value=\"취소\" id=\"cancel-btn\">\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </form>\r\n");
      out.write("      </article>\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <!-- Footer -->\r\n");
      out.write("<!--     <div id=\"footer text-center\"> -->\r\n");
      out.write("<!--       <ul class=\"copyright text-light\"> -->\r\n");
      out.write("<!--         <li>&copy; Untitled.</li> -->\r\n");
      out.write("<!--         <li> -->\r\n");
      out.write("<!--           Design: -->\r\n");
      out.write("<!--           <a href=\"#\" class=\"text-light\">FITCHA</a> -->\r\n");
      out.write("<!--         </li> -->\r\n");
      out.write("<!--       </ul> -->\r\n");
      out.write("<!--     </div> -->\r\n");
      out.write("\r\n");
      out.write("  <footer class=\"text-center\">\r\n");
      out.write("    <p class=\"text-light\">&copy 2021 FITCHA, Inc.</p>\r\n");
      out.write("    <p class=\"text-light\">KITRI &copy 2021</p>\r\n");
      out.write("  </footer>\r\n");
      out.write("\r\n");
      out.write("  </div>\r\n");
      out.write("  \r\n");
      out.write("  <!-- Scripts -->\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/js/main/jquery.min.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/js/main/browser.min.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/js/main/breakpoints.min.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/js/main/util.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/js/main/main.js\"></script>\r\n");
      out.write("  <script src=\"http://code.jquery.com/jquery-latest.min.js\"></script>\r\n");
      out.write("  <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("  \r\n");
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