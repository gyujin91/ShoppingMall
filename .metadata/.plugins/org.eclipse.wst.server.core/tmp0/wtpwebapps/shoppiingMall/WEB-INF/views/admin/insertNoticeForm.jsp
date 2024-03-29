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
    <title>공지 등록</title>
    <link rel="stylesheet" href="${path }/resources/css/normalize.css">
    <link rel="stylesheet" href="${path }/resources/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    
    <style>
        .insertNotice
        {
            width: 900px;
            margin: auto;
            background-color: #ececec;
            padding: 20px;
        }
        .insertNotice h2
        {
            text-align: center;
            font-weight: bold;
            font-size: 1.6em;
        }
        .insertNotice .tableBox
        {
            background-color: #ffffff;
            padding: 20px;
            border: 1px solid #ececec;
            border-radius: 10px;
            box-shadow: 2px 2px 2px 2px rgba(33, 33, 33, 0.15);
        }
        .insertNotice .tableBox table th, td
        {
            padding: 20px;
        }
        .insertNotice .tableBox table #prod_name
        {
            width: 350px;
        }
        .insertNotice .tableBox .btn_group
        {
            text-align: center;
            margin: 15px;
        }
        .insertNotice .tableBox .btn_group button:nth-child(1)
        {
            width: 100px;
            margin-right: 10px;
            border-radius: 8px;
            border: none;
            background: #c8c8c8;
        }
        .insertNotice .tableBox .btn_group button:nth-child(2)
        {
            width: 100px;
            margin-right: 10px;
            border-radius: 8px;
            border: none;
            background: #e7c64c;
        }
        .insertNotice .tableBox .btn_group button:nth-child(3)
        {
            width: 100px;
            border-radius: 8px;
            border: none;
            background: #f7d7d7;
        }
    </style>
</head>
<body>
    <%@ include file="../include/header.jsp" %>
    <div class="insertNotice">
        <h2>공지 등록</h2>
        <div class="tableBox">
            <form action="" id="frm">
                <table>
                    <tr>
                        <th>공지 번호</th>
                        <td><input type="hidden" id="num" name="num" value="${nextNum }"><h4 style="font-size: 20px">${nextNum }</h4></td>
                    </tr>
                    <tr>
                        <th>제목</th>
                        <td><input type="text" id="title" name="title" required="required" style="width: 450px;"></td>
                    </tr>
                    <tr>
                        <th>작성자</th>
                        <td><input type="text" id="author" name="author" placeholder="관리자" required="required" readonly="readonly"></td>
                    </tr>
                    <tr>
                        <th>공지 내용</th>
                        <td><textarea id="content" name="content" rows="5" cols="80" required="required"></textarea></td>
                    </tr>
                </table>
            </form>
            <div class="btn_group">
                <button type="button" id="insert" onclick="insertNotice()">등록</button>
                <button type="button" onclick="location.href='${path}/admin/allNoticeList.do'">목록</button>
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
				
		function insertNotice() {
		    var title = $("#title").val();
		    var content = $("#content").val();
		    
		    if(title == "") {
		        alert("제목을 입력 해주세요.");
		        $("#title").focus();
		    } else if(content == "") {
		        alert("내용을 입력 해주세요.");
		    } else {
		        $.ajax({
		            url: "insertNotice.do", 
		            type: "POST", 
		            data: { 
		                title: title,
		                content: content
		            },
		            success: function(response) { 
		                alert("공지 사항을 등록 했습니다.");
		                window.location.href = "${path}/admin/allNoticeList.do";
		            },
		            error: function(xhr, status, error) { 
		                alert("공지사항 등록 중 오류가 발생했습니다. 다시 시도해주세요."); 
		                		                
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

		
    </script>
</body>
</html>
