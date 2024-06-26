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
    <title>회원가입</title>
    <link rel="stylesheet" href="${path }/resources/css/style.css">
    <link rel="stylesheet" href="${path }/resources/css/normalize.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

    <style>
        .join
        {
            margin: 100px 0 100px 0;
        }
        .join h2
        {
            text-align: center;
            margin: 30px 0 30px 0;
            font-weight: bold;
        }
        .joinBox
        {
            margin: 0 auto;
            align-items: center;
            justify-content: center;
            display: flex;
            width: 480px;
            height: 520px;
            background: darkslategrey;
            border-radius: 8px;
            box-shadow: 0 0 10px 5px darkslategrey;
        }
        .joinBox h2
        {
            color: #fff;
            font-weight: bold;
            text-align: center;
            font-size: 2.6em;
        }
        .joinBox p
        {
            color: #fff;
            font-weight: bold;
            text-align: center;
            font-size: 1.3em;
        }
        .joinBox div
        {
            text-align: center;
            width: 280px;
            border: 1px solid black;
            border-radius: 25px;
            margin: 5px 0 5px 0;
        }
        .joinBox div i
        {
            color: #ffffff;
        }
        .joinBox div input
        {
            width: 220px;
            margin: 5px;
            background: darkslategrey;
            border: none;
        }
        .joinBox div input:focus
        {
            outline: none;
        }
        ::placeholder
        {
            color: #ffffff;
        }
        .joinBox .links
        {
            border: none;
        }
        .joinBox .links button
        {
            border: none;
            width: 280px;
            height: 30px;
            border-radius: 25px;
            margin: 10px 0 10px 0;
            background: crimson;
        }
        .joinBox .links strong
        {
            color: black;
        }
        .joinBox .links a
        {
            color: blue;
            padding-left: 3px;
        }
        .joinBox .idCheck
        {
            margin: 20px 0 20px 0;
            border: none;
        }
        .joinBox .idCheck label
        {
            color: red;
        }
    </style>
</head>
<body>
    <%@ include file ="../include/header.jsp" %>
    <div class="join">
        <h2>회원가입</h2>
        <div class="joinBox">
            <form id="fr">
                <h2>Sign Up</h2>
                <p>Wellcome</p>
                <div class="memId"> 
                    <label for="mem_id"><i class="xi-user"></i></label>
                    <input type="text" id="mem_id" name="mem_id" placeholder="아이디"  required>
                </div>
                <div class="idCheck"> 
                    <label id="idCheck"></label>
                </div>
                <div class="memPw">
                    <label for="mem_pw"><i class="xi-lock"></i></label>
                    <input type="password" id="mem_pw" name="mem_pw" placeholder="비밀번호"  required>
                </div>
                <div class="memPw2">
                    <label for="mem_pw2"><i class="xi-lock"></i></label>
                    <input type="password" id="mem_pw2" name="mem_pw2" placeholder="비밀번호 확인"  required>
                </div>
                <div class="memName">
                    <label for="mem_name"><i class="xi-user-address"></i></label>
                    <input type="text" id="mem_name" name="mem_name" placeholder="이름"  required>
                </div>
                <div class="email">
                    <label for="email"><i class="xi-mail"></i></label>
                    <input type="email" id="email" name="email" placeholder="이메일"  required>
                </div>
                <div class="phone">
                    <label for="phone"><i class="xi-mobile"></i></label>
                    <input type="text" id="phone" name="phone" placeholder="전화번호"  required>
                </div>
                <div class="links">
                    <button type="button" id="join">SIGNUP</button>
                    <strong>Already have an account. <a href="${path }/member/loginForm.do">Login here</a></strong>
                </div>
            </form>
        </div>
    </div>
    
     <%@ include file ="../include/footer.jsp" %>
     
    <script>	
	    $(function() {
	    	$('.idCheck').hide();
            // mem_id 입력란의 포커스 이벤트를 감지하여 처리합니다.
            $('#mem_id').on('focus', function() {
                // .idCheck div를 숨깁니다.
                $('.idCheck').hide();
            });
            
            $('#mem_id').on('focusout', function() {              
                $('.idCheck').show();
                var mem_id = $("#mem_id").val();
                var idPattern = /^[a-zA-Z0-9]+$/;	// 아이디 유효성 검사 패턴	         
	            var minIdLength = 4;	   // 아이디 최소 길이            
	            var maxIdLength = 10;	// 아이디 최대 길이	
	            
	            if (mem_id == "") {
	                $("#idCheck").css("color", "red").text("아이디를 입력하세요.");
	            } else if (!idPattern.test(mem_id)) {
	                $("#idCheck").css("color", "red").text("아이디는 영문자와 숫자로만 이루어져야 합니다.");
	            } else if (mem_id.length < minIdLength || mem_id.length > maxIdLength) {
	                $("#idCheck").css("color", "red").text("아이디는 최소 " + minIdLength + "자 이상 " + maxIdLength + "자 이하 여야 합니다.");
	            } else {
	                $.ajax({
	                	url: '/myapp/member/idCheck.do',
	                	type: 'POST',
	                	data: {
	                		mem_id: mem_id,
	                	},
	                	dataType: 'json',
	                	success:function(response) {
	                		if(response.result == "fail") {
	                			$("#idCheck").css("color", "red").text("이미 사용중인 아이디 입니다.");
	                		} else {
	                			$("#idCheck").css("color", "white").text("사용 가능한 아이디 입니다.");
	                		}
	                	},
	                	error:function(xhr, status, error) {
	                		alert("아이디 중복 검사 중 에러가 발생 했습니다.");
	                	}
	                });
	            }               
            });
     
	    	
	     	// 아이디 유효성검사 및 중복체크
			$("#join").click(function() {
	            var mem_pw = $("#mem_pw").val();
	            var mem_pw2 = $("#mem_pw2").val();
	            var mem_name = $("#mem_name").val();
	            var email = $("#email").val();
	            var phone = $("#phone").val();  
	            	            
	            var pwPattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;	// 비밀번호 유효성 검사 패턴	            
	            var minPwLength = 8;	// 비밀번호 최소 길이      
	            var namePattern = /^[가-힣a-zA-Z]+$/;		// 이름 유효성 검사 패턴	            
	            var minNameLength = 2;	// 이름 최소 길이         
	            var emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;	// 이메일 유효성 검사 패턴	            
	            var phonePattern = /^\d{2,3}\d{3,4}\d{4}$/;  	// 전화번호 유효성 검사 패턴
				
	           if(mem_pw == "") {
					alert("비밀번호를 입력 하세요.");
					$("#mem_pw").focus();
				} else if(!pwPattern.test(mem_pw)) {
	                alert("비밀번호는 최소 8자 이상이어야 하며, 영문 대소문자, 숫자, 특수문자를 포함해야 합니다.");
	                $("#mem_pw").focus();
	            }  else if(mem_pw2 == "") {
					alert("비밀번호 확인을 입력 하세요.");
					$("#mem_pw2").focus();
				} else if(mem_pw != mem_pw2) {
	                alert("비밀번호가 일치 하지 않습니다.");
	                $("#mem_pw2").focus(); 
				} else if(mem_name == "") {
					alert("이름를 입력 하세요.");
					$("#mem_name").focus();
				} else if(!namePattern.test(mem_name)) {
	                alert("이름은 한글 또는 영문 대소문자로만 이루어져야 합니다.");
	                $("#mem_name").focus();
	            } else if(mem_name.length < minNameLength) {
	                alert("이름은 최소" + minNameLength + "자 이상 이여야 합니다.");
	            } else if(email == "") {
	                alert("이메일을 입력 하세요");
	                $("#email").focus();
	            } else if(!emailPattern.test(email)) {
	                alert("유효한 이메일 주소를 입력하세요.");
	                $("#email").focus();
	            } else if(phone == "") {
					alert("전화번호를 입력 하세요.");
					$("#phone").focus();
				} else if(!phonePattern.test(phone)) {
	                alert("유효한 전화번호 형식을 입력하세요. (예: 01012345678)");
	                $("#phone").focus();
	            } else {
					/* $("#fr").attr("action", "join.do").attr("method", "post").submit(); */
	            	$("#fr").attr("action", "join.do").submit();
					alert("회원가입을 환영합니다.");
				}     
			});
		});
    
    </script>
    
</body>
</html>