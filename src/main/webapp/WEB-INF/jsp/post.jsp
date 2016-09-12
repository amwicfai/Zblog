<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE Html>
<html>
<head>
<jsp:include page="common/head.jsp" flush="false" />
</head>
<body>
  <%@include file="common/header.html" %>
  <div id="content" class="clearfix">
    <div id="left_col" class="clearfix">
      <jsp:include page="common/content.jsp" flush="false" />
      <div id="comments_wrapper">
        <div id="comment_header" class="clearfix">
          <span class="comments_right">评论 (${post.ccount})</span>
        </div>
        <div id="comments">
          <div id="comment_area">
           <c:choose>
             <c:when test="${comments==null || fn:length(comments)==0}">
               <ol class="commentlist"><li id="nocomment" class="comment"><div class="comment-content"><p>暂无评论</p></div></li></ol>
             </c:when>
             <c:otherwise>
               <jsp:include page="common/comments_list.jsp" flush="false" />
             </c:otherwise>
           </c:choose>
          </div>
          <jsp:include page="common/comments_form.jsp" flush="false" />
        </div>
      </div>
      <div id="previous_next_post">
        <div class="clearfix">
          <c:if test="${prev!=null}"><p id="prev_post"><a href="${prev.id}">${prev.title}</a></p></c:if>
          <c:if test="${next!=null}"><p id="next_post"><a href="${next.id}">${next.title}</a></p></c:if>
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
    <link href="${g.domain}/resource/ueditor-1.4.3/third-party/SyntaxHighlighter/shCoreDefault.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="${g.domain}/resource/ueditor-1.4.3/third-party/SyntaxHighlighter/shCore.js"></script>
    <script type="text/javascript">
      SyntaxHighlighter.all();
    </script>
  </div>
</body>
</html>
