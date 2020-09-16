<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${errors != null}">
    <div id="flush_error">
        入力内容にエラーがあります。<br />
        <c:forEach var="error" items="${errors}">
            ・<c:out value="${error}" /><br />
        </c:forEach>

    </div>
</c:if>
<label for="content">登録内容</label>
<br/>
<textarea id="content" name="content" rows="10" cols="60" maxlength="255">${task.content}</textarea>
<br/><br/>

<input type="hidden" name="_token" value="${_token}"/>
<button type="submit">作成</button>