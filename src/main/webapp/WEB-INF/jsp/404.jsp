<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE Html>
<html>
 <head>
   <jsp:include page="common/head.jsp" flush="false" />
 </head>
 <body>
   <%@include file="common/header.html" %>
   <div id="content" class="clearfix">
     <div id="left_col" class="clearfix">
       <div class="post_wrap clearfix">
         <div class="post">
           <h3 class="title"><span>404</span></h3>
           <div class="post_content"><p class="back"><a class="more_link" href="${g.domain}">返回首页</a></p></div>
         </div>
       </div>
     </div>
     <div id="post_mask"></div>
     <div id="right_col">
      <div id="introduction_widget" class="side_widget clearfix">
       <h3 class="headline">About</h3>
       <ul id="social_link">
         <li class="rss_button"><a target="_blank" href="${g.domain}/feed"></a></li>
         <li class="github_button"><a target="_blank" href="https://github.com/zeemanhuang"></a></li>
       </ul>
          <p>协思，本名黄泽东，洋名Zeeman Huang，目前就职于成都某B2B电子商务公司，执着于软件基础设施建设和平台开发。
              对互联网和企业级产品开发有深刻理解，对开发过程中的问题常有独到的见解。
              对技术发展趋势和方向保持敏锐度，并合理运用为我们的客户创造价值。</p>
          <p>邮件：amwicfai@gmail.com</p>
        <div id="search_area" class="clearfix">
          <form method="get" action="${g.domain}">
             <div class="search_input">
               <input type="text" autocomplete="off" name="word" placeholder="搜索一下" />
             </div>
             <div class="search_button">
                <input type="submit" value="Search" />
             </div>
           </form>
         </div>
       </div>
       <%@include file="common/recent.html" %>
       <%@include file="common/tagcloud.html" %>
       <%@include file="common/archive.html" %>
       <%@include file="common/link.html" %>
     </div>
     <jsp:include page="common/footer.jsp" flush="false" />
   </div>
 </body>
</html>
