<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${task != null}">
                <h2>id : ${task.id} の詳細ページ</h2>
                <table border="1">
                    <tr>
                        <th><c:out value="${task.content}"/></th>
                    </tr>

                    <tr>
                        <td>作成日時：<fmt:formatDate value="${task.create_at}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                    </tr>

                    <tr>
                        <td>更新日時：<fmt:formatDate value="${task.update_at}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                    </tr>
                </table>
                <p><a href="${pageContext.request.contextPath}/edit?id=${task.id}">編集する</a></p>
                <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
            </c:when>
            <c:otherwise>
                <h2>お探しのデータは見つかりませんでした。</h2>
            </c:otherwise>
        </c:choose>
    </c:param>
</c:import>