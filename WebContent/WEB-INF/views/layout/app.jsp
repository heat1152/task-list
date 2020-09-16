<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>タスク管理</title>
        <link rel="stylesheet" href="<c:url value='/reset.css' />">
        <link rel="stylesheet" href="<c:url value='/style.css' />">
    </head>
    <body>
        <header>
            <h1>タスク管理アプリケーション</h1>
        </header>
        <div id="content">
            ${param.content}
        </div>
        <footer>
            by Hitoshi Kawauchi.
        </footer>

    </body>
</html>