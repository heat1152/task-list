<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>タスク一覧</h2>
        <table>
            <c:forEach var="task" items="${tasks}">
                    <a href="${pageContext.request.contextPath}/show?id=${task.id}">
                        <c:out value="${task.id}"/>
                    </a>
                    <div style="padding: 10px; margin-bottom: 10px; border: 5px double #333333;">
                        <c:out value="${task.content}"/><br/>
                    </div>
                <br/>
            </c:forEach>
        </table>
        <p><a href="${pageContext.request.contextPath}/new">新規作成</a></p>
    </c:param>
</c:import>