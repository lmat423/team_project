<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../main/top_bottom/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 문의사항</title>
<style>
  section {
    width: 1700px;
    height:1000px;
    margin: auto;
    padding: 20px;
    background-color: #fff;
    font-family: Arial, sans-serif;
  }
  h3 {
    color: white;
  }
  a {
    text-decoration: none;
    color: black;
    font-weight: bold;
  }
  .answer-complete {
    color:blue;
    font-size: 15px;
   	margin:auto;
   	margin-left:-173px;
  }
.links {	
  width: 300px;
  height: 30px;
  text-align: center;
  display: inline-block;
  vertical-align: top;
  margin-right: 20px;
  margin-bottom: 20px;
  position: sticky;
  top: 0; /* 화면 상단에 고정되도록 설정 */
  background-color: white; /* 배경색을 원하시는 색으로 지정하세요 */
  z-index: 1; /* 다른 내용 위에 나타나도록 z-index 설정 */
}
  #link1 {
  	width:200px;
  	height:100px;
  	border:1px solid black;
  	border-bottom: none;
  }
  #link1 a {
  	margin-top:35px;
  	font-size:30px;
  }
  #link2 {
  	width:200px;
  	height:100px;
  	border:1px solid black;
  }
  #link2 a {
  	margin-top:35px;
  	font-size:30px;
  }
  #title {
    width: 400px;
    font-size: 40px;
    background-color: black;
    color: white;
    margin: auto;
    text-align:center;
  }
  /* asd1 클래스에 대한 스타일 설정 */
  .asd1 {
  	width: 800px;
    border: 1px solid #000;
    padding: 10px;
    margin: auto;
    background-color: white;
    border-radius: 10px;
    text-align:center;
  }
</style>
</head>
<body>
<section>
  <div id="title">내 문의사항</div>
  <div class="links">
    <div id="link1"><a href="inquiry_all" class="aa">전체 문의 보기</a></div>
    <div id="link2"><a href="mtm" class="aa">문의하기</a></div>
  </div>
  <c:forEach items="${ilist}" var="map">
    <div class="asd1"> <!-- asd1 클래스 추가 -->
      <a href="inquiry_content?no=${map.no}">제목 : ${map.title } </a>
       아이디 : ${map.userid } 
      | 작성일 : ${map.writeday}
      <c:if test="${map.seq == 1 }">
        <div class="answer-complete">↳답변이 완료되었습니다</div>
      </c:if>
    </div>
  </c:forEach>
</section>
</body>
</html>
<%@ include file="../main/top_bottom/footer.jsp" %>
