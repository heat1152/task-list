<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:if test="${flush != null}">
            <div id="flush">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if>
        <h2 id="heading">タスク一覧</h2>
        <table>
            <c:forEach var="task" items="${tasks}">
                    <a href="${pageContext.request.contextPath}/show?id=${task.id}">
                        <c:out value="${task.id}"/>
                    </a>
                    <div id="Tasks">
                        <c:out value="${task.content}"/><br/>
                    </div>
                <br/>
            </c:forEach>
        </table>
        <div id="pagination">
            (全${tasks_count}件)<br/>
            <c:forEach var="i" begin="1" end="${((tasks_count-1)/5)+1}">
                <c:choose>
                    <c:when test="${i == page}">
                        <c:out value="${i}"/>&nbsp;
                    </c:when>
                    <c:otherwise>
                        <a href="${pageContext.request.contextPath}/index?page=${i}"><c:out value="${i}"/></a>&nbsp;
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </div>
        <p id="createPage"><a href="${pageContext.request.contextPath}/new">新規作成</a></p>
    </c:param>
</c:import>