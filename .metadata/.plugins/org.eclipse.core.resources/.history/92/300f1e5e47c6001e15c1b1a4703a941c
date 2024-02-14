<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="stylesheet" href="${path1 }/resources/css/style.css">
    <link rel="stylesheet" href="${path1 }/resources/css/normalize.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

    
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

    <style>
       .login
        {
            margin: 100px 0 100px 0;
        }
        .login h2
        {
            text-align: center;
            margin: 30px 0 30px 0;
            font-weight: bold;
        }
        .loginBox
        {
            margin: 0 auto;
            align-items: center;
            justify-content: center;
            display: flex;
            width: 1200px;
            height: 520px;
            border-radius: 8px;
            box-shadow: 0 0 10px 5px #000;
        }
        .left-half
        {
            width: 50%;
            height: 100%;
            background: #000;
            top: 0%;
            left: 0%;
            background: url(../resources/img/stars-1654074_1280.jpg);
            background-size: 100%;
        }
        .loginBox .left-half h2
        {
            color: #fff;
            font-weight: bold;
            text-align: center;
            font-size: 2.6em;
            margin-bottom: 140px;
        }
        .right-half
        {
            width: 50%;
            height: 100%;
            background: url(../resources/img/skywatch-3384730_1280.jpg);
            background-size: 100%;
        }
        .loginBox .left-half div
        {
            text-align: center;
        }
        .loginBox .left-half .memId
        {
            margin: 10px 0 10px 0;
        }
        .loginBox div i
        {
            color: #fff;
        }
        .loginBox div input
        {
            background: #000;
            border: none;
            border-radius: 25px;
            padding-left: 8px;
            width: 200px;
            color: #fff;
        }
        .loginBox div input:focus
        {
            outline: none;
        }
        ::placeholder
        {
            color: #fff;
        }
        .loginBox .btn
        {
            margin-top: 10px;
            width: 600px;
        }
        .loginBox .btn .loginBtn
        {
            width: 200px;
            border: none;
            border-radius: 25px;
            
        }
        .loginBox .link strong
        {
            color: #fff;
        }
        .loginBox .link a
        {
            color: blue;
            font-weight: bold;
            padding-left: 3px;
        }
    </style>
</head>
<body>
     <%@ include file ="../include/header.jsp" %>
    <div class="login">
        <h2>로그인</h2>
        <div class="loginBox">
            <div class="left-half">
                <h2>LOGIN</h2>
                <form id="loginFr">
                    <div class="memId">
                        <label for="mem_id"><i class="xi-user"></i></label>
                        <input type="text" id="mem_id" name="mem_id" placeholder="아이디">
                    </div>
                    <div class="memPw">
                        <label for="mem_pw"><i class="xi-lock"></i></label>
                        <input type="password" id="mem_pw" name="mem_pw" placeholder="비밀번호">
                    </div>
                    <div class="btn">
                        <button type="button" class="loginBtn" id="loginBtn">Login</button>
                    </div>
                    <div class="link">
                        <strong>If you do not have an account, <a href="join.html">sign up here</a></strong>
                    </div>
                </form>
            </div>    
            <div class="right-half"></div>
        </div>
    </div>
    

     <%@ include file ="../include/footer.jsp" %>
     
     <script>
     	$(function() {
     		$("#loginBtn").click(function() {
     			var mem_id = $("#mem_id").val();
     			var mem_pw = $("#mem_pw").val();
     			
     			if(mem_id == "") {
     				alert("아이디를 입력하세요.");
     				$("#mem_id").focus();
     			} else if(mem_pw == "") {
     				alert("비밀번호를 입력하세요.");
     				$("#mem_pw").focus();
     			} else {
     				$("#loginFr").attr("action", "login.do").attr("method", "post").submit();
     			}
     		})
     		
     		var loginCheck = '${loginCheck}';
     		
     		if(loginCheck == 'idFail') {
     			alert("등록 되어 있지 않는 아이디 입니다.");
     			$("#mem_id").focus();
     		} else if(loginCheck == 'pwFail') {
				alert("비밀번호가 틀렸습니다.");
     			$("#mem_pw").focus();
     		} else if(loginCheck == 'suspended') {
     			alert("정지된 회원 입니다.");
     			$("#mem_id").focus();
     		}
     		
     		// enter 로그인
    		$('#mem_pw').on('keypress', function(e){
    		  if(e.keyCode == '13'){
    		  	$('#loginBtn').click();
    		  	}
      		});
     	})
     </script>
</body>
</html>