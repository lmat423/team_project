<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        * {
            margin: auto;
            padding: 0;
        }
        a {
            text-decoration: none;
            color: #000;
        }

        section {
            width: 478px;
        }

        .adminlink {
            height: 50px;
            line-height: 50px;
            padding-left: 10px;
            margin-top: 50px;
            
        }

        table {
            border-spacing: 1;
            border-top: 1px solid #ccc;
            border-bottom: 1px solid #ccc;
        }

        th {
            width: 150px;
            font-weight: normal;
            background: #eee;
            padding-left: 10px;
        }

        input {
            width: 300px;
            height: 40px;
            line-height: 40px;
            font-size: 15px;
            border: 1px solid #eee;
            outline: none;
            padding-left: 10px;
        }

        textarea {
            width: 300px;
            height: 300px;
            font-size: 15px;
            border: 1px solid #eee;
            outline: none;
            padding-left: 10px;
            resize: none;
        }

        .submit input {
            width: 130px;
            height: 40px;
            cursor: pointer;
            margin-top: 20px;
            padding-left: 0;
            float: right;
            border: none;
        }

        .submit input:hover {
            background: #ccc;
            color: #fff;
        }
        
          .access-denied {
           display: block;
            color: red; /* 메시지 색상 설정 (옵션) */
            font-weight: bold;
        }
    </style>
</head>

<body>
 
  
     <section>
      <!-- 'admin123'일 경우에만 화면 출력 -->
        <c:if test="${userid == 'admin123'}">
            <form method="post" action="action_write_ok" enctype="multipart/form-data">
                <table align="center">
                    <tr>
                        <th align="center">아이디</th>
                        <td><input type="text" name="userid" value="admin123"></td>
                    </tr>
                    <tr>
                        <th align="center">제목</th>
                        <td><input type="text" name="title"></td>
                    </tr>
                    <tr>
                        <th align="center">이미지 등록</th>
                        <td><input type="file" name="img"></td>
                    </tr>
                    <tr>
                        <th align="center">내용(최대 200자)</th>
                        <td><textarea name="content"></textarea></td>
                    </tr>
                </table>
                <div class="submit"><input type="submit" value="활동사진 등록"></div>
            </form>
        </c:if>
        <!-- 'admin123'가 아닐 경우에만 'access-denied' 클래스를 표시하여 메시지 출력 -->
      <c:if test="${userid != 'admin123'}">
        <div class="access-denied">해당화면의 접근 권한이 없습니다.</div>
      </c:if>
    </section>
    

   
</body>
</html>