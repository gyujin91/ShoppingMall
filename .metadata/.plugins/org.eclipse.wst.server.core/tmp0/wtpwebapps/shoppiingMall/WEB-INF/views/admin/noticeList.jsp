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
            .notice
            {
                margin: 15px;
            }
            .notice .title
	        {
	            position: relative;
	            margin: 30px 0 0 125px;
	        }
	        .notice .title h2
	        {
	            font-size: 1.3em;
	            margin-bottom: 20px;
	        } 
	        .notice .title h2 i:hover
	        {
	            color: #222;
	        } 
	        .notice .title p
	        {
	            position: absolute;
	            top: 2%;
	            left: 8%;
	            font-size: 1.1em;
	        }
	        .notice .title p strong
	        {
	            color: blue;
	        }
	        .notice h2 i
	        {
	            margin-right: 5px;
	        }  
            .notice .btn_Group button
            {
                padding: 5px;
                border-radius: 8px;
                margin: 5px;
            }
            
            .notice .btn_Group button:nth-child(1)
            {
                margin-left: 130px;
                color: #fff;
                background: #212121;
            }
            .notice .btn_Group button:nth-child(1):hover
            {
                color: #777777;
                background: #f1f1f1;
            }
            .notice .btn_Group button:nth-child(2)
            {
                color: #777777;
                background: #f1f1f1;
            }
            .notice .btn_Group button:nth-child(2):hover
            {
                color: #fff;
                background: #212121;
            }
            .notice .btn_Group button:nth-child(3)
            {
                float:right;
                margin-right: 130px;
                border: none;
                background: #ececec;
            }
            .notice table
            {
                width: 85%;
                margin: 0 auto;
                border-top: 1px solid black;
                margin-top: 30px;
                margin-bottom: 30px;
            }
            .notice table th
            {
                text-align: center;
                padding: 5px 0 5px 0;
            }
            .notice table td
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
    <div class="notice">
        <div class="title">
                 <h2><a href="${path }/admin/admin.do"><i class="xi-arrow-left"></i></a>공지 목록</h2>
                 <p> (총 <strong>${noticeTotalCnt }</strong>건)</p>
        </div>
        <div class="btn_Group">
            <button type="button" onclick="notice()">NOTICE</button>
            <button type="button" onclick="review()">REVIEW</button>
            <button type="button" onclick="location.href='${path}/admin/insertNoticeForm.do'">공지 등록</button>
        </div>
        <div class="notice_table">
        	<table>
	           <thead>
	                <tr>
	                    <th>번호</th>
	                    <th>제목</th>
	                    <th>작성자</th>
	                    <th>작성일</th>
	                    <th>조회수</th>
	                    <th>사용여부</th>
	                </tr>
	           </thead> 
	           <tbody>
	           		<c:choose>
	           			<c:when test="${empty noticeList }">
	           				<span>공지사항이 없습니다.</span>
	           			</c:when>
	           			<c:otherwise>
	           				<c:forEach items="${noticeList }" var="list">
	           					<tr onclick="location.href='${path}/admin/noticeRead.do?num=${list.num }'">
				                    <td>${list.num }</td>
				                    <td>${list.title }</td>
				                    <td>${list.author }</td>
				                    <td><fmt:formatDate pattern="yyyy-MM-dd" value="${list.regdate }"/></td>
				                    <td>${list.view_cnt }</td>
				                    <!-- 사용 여부 -->
                       				<c:choose>
                       					<c:when test="${list.useyn eq 'Y' }">
                       						<td style="color: blue">${list.useyn }</td>
                       					</c:when>
                       					<c:otherwise>
                       						<td style="color: red">${list.useyn }</td>
                       					</c:otherwise>
                       				</c:choose>
	                        		<!-- 사용 여부 -->
				                </tr>
	           				</c:forEach>
	           			</c:otherwise>
	           		</c:choose>
	           </tbody>
	        </table>
        </div>
    </div>
    <%@ include file ="../include/footer.jsp" %>

    <script>
	    var errorMessage = '${errorMessage}'; // 서버 내부 오류
		var session = '${session}';	// 세션 체크
		var loginChk = '${loginChk}';	// 관리자 로그인 체크
		
		if(loginChk == 'fail') {
			alert("관리자 로그인 후 이용 가능합니다.");
			window.location.href = "${path}/member/loginForm.do";
		} else if(session == 'exp') {
			alert("세션이 만료 되었습니다. 다시 로그인 바랍니다.");
			window.location.href = "${path}/member/loginForm.do";
		} else if(errorMessage == 'error') {
			alert("서버 내부에 오류가 발생 했습니다.");
			window.location.href = "${path}/error/errorPage.do";
		}
    
		function notice(){
            location.href = '${path}/admin/allNoticeList.do';
        }

        function review(){
            location.href = '${path}/admin/selectReviewList.do';
        }
    </script>
</body>
</html>