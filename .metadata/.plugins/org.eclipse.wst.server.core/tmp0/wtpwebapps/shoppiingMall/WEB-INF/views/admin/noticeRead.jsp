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
    <title>공지사항 상세보기</title>
    <link rel="stylesheet" href="${path }/resources/css/normalize.css">
    <link rel="stylesheet" href="${path }/resources/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    
    <style>
        .noticeInfo
        {
            width: 900px;
            margin: auto;    
            background-color: #ececec;  
            border-radius: 8px;
            height: 550px;
        }
        .noticeInfo h2
        {
            text-align: center;
            font-weight: bold;
            font-size: 1.6em;
            padding-top: 20px;
        }
        .noticeInfo .notice 
        {   
            margin: 15px;
            background-color: #ffffff;
            border-radius: 8px;
        }
        .noticeInfo .notice .tableBox
        {            
            padding: 30px;
        }
        .noticeInfo .notice .tableBox table
        {
            width: 100%;
            border-collapse: collapse;
        }
        .noticeInfo .notice .tableBox table input
        {
        	border: none;
        }
        .noticeInfo .notice .tableBox table tr:nth-child(1)
        {
            border-top: 2px solid black;
        }
        .noticeInfo .notice .tableBox table tr:nth-child(1) th, tr:nth-child(2) th
        {
            width: 15%;
            padding: 10px;
            border: 1px solid rgba(0,0,0,.09);
            font-size: 0.8em;
            background-color: rgba(0,0,0,.09);
        }
        .noticeInfo .notice .tableBox table tr:nth-child(1) td, tr:nth-child(2) td
        {
            width: 35%;
            padding: 10px;
            border: 1px solid rgba(0,0,0,.09);    
            font-size: 0.8em;       
        }
        .noticeInfo .notice .tableBox table textarea
        {
            width: 100%;
            border: 1px solid rgba(0,0,0,.09); 
            margin-top: 10px;
            padding: 10px;
            font-size: 0.8em;
        }
        .noticeInfo .notice .tableBox table textarea:focus {
            outline: none;
            border-color: rgba(0, 0, 0, 0.09);
        }
        .noticeInfo .notice .tableBox .btn_group
        {
            margin-top: 15px;
        }
        .noticeInfo .notice .tableBox .btn_group button
        {
            margin: 3px;
            padding: 3px;
            border-color: rgba(0, 0, 0, 0.09);
            background-color: #ececec;
            border-radius: 8px;
            font-size: 0.8em;
        }
        .noticeInfo .notice .tableBox select
        {
            float: left;
            margin-left: 5px;
        }
        .noticeInfo .notice .tableBox .btn_group .label {
            float: left;
            margin-left: 10px;
            font-size: 0.8em;
            font-weight: bold;
            color: red;
        }
        .noticeInfo .notice .tableBox .btn_group .btn
        {
            margin-left: 220px;
        }
        .noticeInfo .notice .tableBox .btn_group button
        {
            margin: 3px;
            padding: 3px;
            border-color: rgba(0, 0, 0, 0.09);
            background-color: #ececec;
            border-radius: 8px;
            font-size: 0.8em;
        }
    </style>
</head>
<body>
    <%@ include file="../include/header.jsp" %>
    <div class="noticeInfo">
        <h2>공지사항</h2>
        <div class="notice">
            <div class="tableBox">
                <form action="">
                	<input type="hidden" name="num" id="num" value="${noticeDto.num }">
                	<table>
	                    <tr>
	                        <th>제목</th>
	                        <td><input name="title" id="title" value="${noticeDto.title }" required="required"></td>
	                        <th>등록일</th>
	                        <td><fmt:formatDate pattern="yyyy-MM-dd" value="${noticeDto.regdate }"/></td>
	                    </tr>
	                    <tr>
	                        <th>작성자</th>
	                        <td><input name="author" id="author" value="${noticeDto.author }" readonly></td>
	                        <th>조회수</th>
	                        <td>${noticeDto.view_cnt }</td>
	                    </tr>
	                    <tr>
	                        <td colspan="4"><textarea id="content" name="content" cols="30" rows="10" required="required">${noticeDto.content }</textarea></td>
	                    </tr>
	                </table>
	                <div class="btn_group">
	                    <div class="label">사용여부</div>
	                    <select name="useyn" id="useyn">
	                    	<c:choose>
	                    		<c:when test="${noticeDto.useyn eq 'Y' }">
	                    			<option value="select">선택</option>
	                    			<option value="Y" selected="selected">Y</option>
	                    			<option value="N">N</option>
	                    		</c:when>
	                    		<c:when test="${noticeDto.useyn eq 'N' }">
	                    			<option value="select">선택</option>
	                    			<option value="Y">Y</option>
	                    			<option value="N" selected="selected">N</option>
	                    		</c:when>
	                    		<c:otherwise>
	                    			<option value="select" selected="selected">선택</option>
	                    			<option value="Y">Y</option>
	                    			<option value="N">N</option>
	                    		</c:otherwise>
	                    	</c:choose>
	                    </select>
	                    <div class="btn">
		                    <button type="button" id="update" onclick="updateNotice()">수정</button>
		                    <button type="button" id="delete" onclick="deleteNotice()">삭제</button>
		                    <button type="button" onclick="location.href='${path}/admin/allNoticeList.do'">목록</button>
		                </div>
	                </div>
                </form>
            </div>
            
        </div>
    </div>
    <%@ include file="../include/footer.jsp" %>
    
    <script type="text/javascript">
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
		
		// 공지 글 수정
		function updateNotice() {
			var num = $("#num").val();
		    var title = $("#title").val();
		    var content = $("#content").val();
		    var useyn = $("#useyn").val();
		    
		    if(title == "") {
		        alert("제목을 입력 해주세요.");
		        $("#title").focus();
		    } else if(content == "") {
		        alert("내용을 입력 해주세요.");
		        $("#content").focus();
		    } else if(useyn == "select") {
		    	alert("사용여부를 선택 해주세요.");
		    } else {
		        $.ajax({
		            url: "updateNotice.do", 
		            type: "POST", 
		            data: { 
		            	num: num,
		                title: title,
		                content: content,
		                useyn: useyn.toString()
		            },
		            success: function(response) { 
		                alert("공지 사항을 수정 했습니다.");
		                window.location.href = "${path}/admin/allNoticeList.do";
		            },
		            error: function(xhr, status, error) { 
		                alert("공지사항 수정 중 오류가 발생했습니다. 다시 시도해주세요."); 
		                		                
		                if (xhr.status === 404) {
		                    alert("요청하신 페이지를 찾을 수 없습니다.");
		                    window.location.href = '${path}/error/errorPage.do';
		                } else if (xhr.status === 500) {
		                    alert("서버 내부 오류가 발생했습니다. 관리자에게 문의해주세요.");
		                }
		            }
		        });
		    }
		} 
		
		// 공지 글 삭제
		function deleteNotice() {
			var num = $("#num").val();
		     
	        $.ajax({
	            url: "deleteNotice.do", 
	            type: "POST", 
	            data: { 
	            	num: num
	            },
	            success: function(response) { 
	                alert("공지 사항을 삭제 했습니다.");
	                window.location.href = "${path}/admin/allNoticeList.do";
	            },
	            error: function(xhr, status, error) { 
	                alert("공지사항 삭제 중 오류가 발생했습니다. 다시 시도해주세요."); 
	                		                
	                if (xhr.status === 404) {
	                    alert("요청하신 페이지를 찾을 수 없습니다.");
	                    window.location.href = '${path}/error/errorPage.do';
	                } else if (xhr.status === 500) {
	                    alert("서버 내부 오류가 발생했습니다. 관리자에게 문의해주세요.");
	                }
	           	}
	        });
	    }
	 
    </script>
</body>
</html>
