<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../main/top_bottom/header.jsp" %>
  <style>
    #section table {
        border-collapse: collapse;
        margin-top: 0px;
        border: 1px solid #ccc;
    }

    #section td {
        border: 1px solid #e5e5e5;
        padding: 10px 15px;
    }

    /* 제목 행 스타일링 */
    #section td:first-child {
        background-color: #f2f2f2;
        font-weight: bold;
        text-align: center;
    }

    /* 내용 영역 스타일링 */
    #inner {
        height:500px;
        max-height: 200px;
        background-color: #fdfdfd;
    }

    /* caption 스타일링 */
    #section caption h2 {
        margin-bottom:30px;
        color: #444;
    }

    /* 링크 스타일링 */
    #section a {
        color: #000000;
        text-decoration: none;
        padding: 5px 15px;
        border-radius: 4px;
        transition: background-color 0.2s;
    }

    #section a:hover {
        background-color: #000000;
        color: #fff;
    }
  </style>

</head>

<body>
  <div id="section">
    <table width="800" align="center">
      <caption> <h2> 자유게시판 </h2> </caption>
      <tr>
        <td width="80"> 제목 </td> <td> ${fvo.title} </td>
      </tr>
      <tr>
        <td> 작성자 </td> <td> ${fvo.userid} </td>
      </tr>
      <tr>
        <td> 조회수 </td> <td> ${fvo.readnum} </td>
      </tr>
      <tr>
        <td> 내용 </td> <td> <div id="inner"> ${fvo.content} </div> </td>
      </tr>
      <tr>
        <td colspan="2" align="center">
          <a href="free_list"> 목록 </a>
          <a href="free_update?no=${fvo.no}"> 수정 </a>
        </td>
      </tr>
      <tr id="del">
        <td colspan="2" align="center" style="border:none;">
          <form method="post" action="delete">
            <input type="hidden" name="no" value="${fvo.no}">
            <input type="password" name="pwd" placeholder="비밀번호"> <input type="submit" value="삭제">
          </form>
        </td>
      </tr>
      <c:if test="${chk == 1}">
      <tr>
        <td colspan="2" align="center" style="color:red;">
          비밀번호가 틀렸습니다
        </td>
      </tr>
      </c:if>
    </table>
  </div>
</body>
</html>
<%@ include file="../main/top_bottom/footer.jsp" %>
