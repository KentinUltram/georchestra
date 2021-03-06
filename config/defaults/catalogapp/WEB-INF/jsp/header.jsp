<%@ page pageEncoding="UTF-8"%>
<%@ page language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.web.servlet.support.RequestContextUtils" %>
<%@ page import="org.georchestra.commons.configuration.GeorchestraConfiguration" %>
<%@ page contentType="text/html; charset=UTF-8"%>

<%

String headerHeight = "@shared.header.height@";
try {
  ApplicationContext ctx = RequestContextUtils.getWebApplicationContext(request);
  headerHeight = ctx.getBean(GeorchestraConfiguration.class).getProperty("headerHeight");
} catch (Exception e) {}

%>

<c:choose>
    <c:when test='<%= request.getParameter("noheader") == null %>'>
    <script type="text/javascript" src="/header/js/header.js"></script>
    <div id="go_head">
        <!-- see http://stackoverflow.com/questions/1037839/how-to-force-link-from-iframe-to-be-opened-in-the-parent-window -->
        <iframe src="/header/?lang=<%= lang %>" style="width:100%;height:<%= headerHeight %>px;border:none;overflow:hidden;" scrolling="no" frameborder="0" onload="_headerOnLoad(this)"></iframe>
    </div>
    </c:when>
</c:choose>
