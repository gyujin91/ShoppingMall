<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모든 회원 목록</title>
    <link rel="stylesheet" href="${path }/resources/css/normalize.css">
    <link rel="stylesheet" href="${path }/resources/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
</head>
<style>
        .content
        {    
            margin: 0 auto;
            margin: 30px 0 30px 0;
        } 
        .content h2
        {
            font-size: 1.3em;
            margin-bottom: 20px;
            padding-left: 5px;
        }
        .content h2 i:hover
        {
            color: #222;
        } 
        .content h2 i
        {
            margin-right: 5px;
        }
        .content table th, td
        {
            text-align: center;
        }
    </style>
</head>
<body>
	<%@ include file="../include/header.jsp" %>
	<div class="content">
        <h2><a href="${path }/admin/admin.do"><i class="xi-arrow-left"></i></a>회원 목록</h2>
        <table class="table table-striped table-hover">
            <thead>
                <tr>
                	<th>구분</th>
	                <th>아이디</th>
	                <th>이름</th>
	                <th>이메일</th>
	                <th>전화번호</th>
	                <th>회원가입일</th>
	                <th>회원탈퇴일</th>
                </tr>
            </thead>
            <tbody>
           	 	<c:forEach items="${allMemberList }" var="list">
	                <tr  onclick="location.href='${path}/admin/memberInfo.do?mem_id=${list.mem_id }'">
	                	<c:if test="${list.MEMBER_CODE == '관리자' }"><td style="color: #0c0b61">${list.MEMBER_CODE }</td></c:if>
	                	<c:if test="${list.MEMBER_CODE == '일반회원' }"><td>${list.MEMBER_CODE }</td></c:if>
	                	<c:if test="${list.MEMBER_CODE == '탈퇴회원' }"><td style="color:#CA715C">${list.MEMBER_CODE }</td></c:if>
	                	<c:if test="${list.MEMBER_CODE == '정지회원' }"><td style="color: #FF0040">${list.MEMBER_CODE }</td></c:if>
	                    <td>${list.mem_id }</td>
	                    <td>${list.mem_name }</td>
	                    <td>${list.email }</td>
	                    <td>${list.phone }</td> 
	                    <td><fmt:formatDate value="${list.join_date }" pattern="yyyy-MM-dd" /></td>
	                    <td><fmt:formatDate value="${list.del_date }" pattern="yyyy-MM-dd" /></td>
	                </tr>    
                </c:forEach>     
            </tbody>
        </table>
    </div>
    <%@ include file="../include/footer.jsp" %>
    
    <script type="text/javascript">
	    var errorMessage = '${errorMessage}'; // 서버 내부 오류
		var session = '${session}';	// 세션 체크
		var loginChk = '${loginChk}';	// 관리자 로그인 체크
		
		if(loginChk == 'fail') {
			alert("관리자 로그인 후 이용 가능합니다.");
			window.location.href = "${path}/member/loginForm.do";
		} else if(session == "exp") {
			alert("세션이 만료 되었습니다. 다시 로그인 바랍니다.");
			window.location.href = "${path}/member/loginForm.do";
		} else if(errorMessage == "error") {
			alert("서버 내부에 오류가 발생 했습니다.");
			window.location.href = "${path}/error/errorPage.do";
		}
    </script>
</body>
</html>