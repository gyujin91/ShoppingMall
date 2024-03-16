<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지 게시판</title>
    <link rel="stylesheet" href="${path }/resources/css/style.css">
    <link rel="stylesheet" href="${path }/resources/css/normalize.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
   
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
        <style>
            .board
            {
                margin: 15px;
            }
            .board h2
            {
                text-align: center;
                font-size: 1.5em;
                margin-bottom: 30px;
            }
            .board .btnGroup button
            {
                padding: 5px;
                border-radius: 8px;
                margin: 5px;
            }
            
            .board .btnGroup button:nth-child(1)
            {
                margin-left: 145px;
                color: #fff;
                background: #212121;
            }
            .board .btnGroup button:nth-child(1):hover
            {
                color: #777777;
                background: #f1f1f1;
            }
            .board .btnGroup button:nth-child(2)
            {
                color: #777777;
                background: #f1f1f1;
            }
            .board .btnGroup button:nth-child(2):hover
            {
                color: #fff;
                background: #212121;
            }
            .board table
            {
                width: 1200px;
                margin: 0 auto;
                border-top: 1px solid black;
                margin-top: 30px;
                margin-bottom: 30px;
            }
            .board table th
            {
                text-align: center;
                padding: 5px 0 5px 0;
            }
            .board table td
            {
                text-align: center;
                background: #f1f1f1;
                border-bottom: 1px solid black;
                padding: 5px 0 5px 0;
                
            }
        </style>
</head>
<body>
    <%@ include file ="../include/header.jsp" %>
    <div class="board">
        <h2>NOTICE</h2>
        <div class="btnGroup">
            <button type="button" onclick="notice()">NOTICE</button>
            <button type="button" onclick="review()">REVIEW</button>
        </div>
        <table>
           <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                    <th>조회수</th>
                </tr>
           </thead> 
           <tbody>
                <tr>
                    <td>1</td>
                    <td>안녕하세요</td>
                    <td>관리자</td>
                    <td>2023-12-11</td>
                    <td>10</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>안녕하세요</td>
                    <td>관리자</td>
                    <td>2023-12-11</td>
                    <td>10</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>안녕하세요</td>
                    <td>관리자</td>
                    <td>2023-12-11</td>
                    <td>10</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>안녕하세요</td>
                    <td>관리자</td>
                    <td>2023-12-11</td>
                    <td>10</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>안녕하세요</td>
                    <td>관리자</td>
                    <td>2023-12-11</td>
                    <td>10</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>안녕하세요</td>
                    <td>관리자</td>
                    <td>2023-12-11</td>
                    <td>10</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>안녕하세요</td>
                    <td>관리자</td>
                    <td>2023-12-11</td>
                    <td>10</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>안녕하세요</td>
                    <td>관리자</td>
                    <td>2023-12-11</td>
                    <td>10</td>
                </tr>
           </tbody>
        </table>
    </div>
    <%@ include file ="../include/footer.jsp" %>

    <script>
        function notice(){
            location.href = 'boardList.html';
        }

        function review(){
            location.href = 'review.html';
        }
    </script>
</body>
</html>