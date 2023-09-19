<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ include file="../../main/top_bottom/header.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  body {
    background-color: #f5f5f5; /* 흰색 배경색 */
    font-family: Arial, sans-serif; /* 폰트 설정 */
  }
  section {
    background-color: #ffffff; /* 흰색 배경색 */
    padding: 20px;
    margin: 20px;
    border: 1px solid #000000; /* 검은색 테두리 */
  }
  div {
    margin-bottom: 10px;
  }
  textarea {
    width: 100%;
    height: 100px;
  }
  input[type="submit"] {
    background-color: #000000; /* 검은색 배경색 */
    color: #ffffff; /* 흰색 글자색 */
    padding: 10px 20px;
    border: none;
    cursor: pointer;
  }
  input[type="submit"]:hover {
    background-color: #333333; /* 검은색 배경색 (호버 상태) */
  }
  
</style>
</head>
<body>
  <section>
    <div> 제 목 : ${mvo.title} </div>
    <div> 내 용 : ${mvo.content } </div>

    <hr>

    <form method="post" action="questOk">
      <input type="hidden" name="no" value="${mvo.no }">
      <div> 답변 내용 : <textarea name="content"></textarea> </div>
      <div> <input type="submit" value="답변"> <a href="/admin/inquiry/list"> 리스트 </a> </div>
    </form>
	
  </section>
</body>
</html>
<%@ include file="../../main/top_bottom/footer.jsp" %>
