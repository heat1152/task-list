<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<label for="content">登録内容</label>
<br/>
<textarea id="content" name="content" rows="10" cols="60" maxlength="255">
    ${task.content}
</textarea>
<br/><br/>

<input type="hidden" name="_token" value="${_token}"/>
<button type="submit">作成</button>