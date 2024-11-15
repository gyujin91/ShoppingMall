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
    <title>상품 관리</title>
    <link rel="stylesheet" href="${path }/resources/css/normalize.css">
    <link rel="stylesheet" href="${path }/resources/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <style>
        .product
        {
            width: 900px;
            margin: auto;
            background-color: #ececec;
            padding: 20px;
        }
        .product h2
        {
            text-align: center;
            font-weight: bold;
            font-size: 1.6em;
        }
        .product .tableBox
        {
            background-color: #ffffff;
            padding: 20px;
            border: 1px solid #ececec;
            border-radius: 10px;
            box-shadow: 2px 2px 2px 2px rgba(33, 33, 33, 0.15);
        }
        .product .tableBox table th, td
        {
            padding: 20px;
        }
        .product .tableBox table #prod_name
        {
            width: 350px;
        }
        .product .tableBox .btn_group
        {
            text-align: center;
            margin: 15px;
        }
        .product .tableBox .btn_group button:nth-child(1)
        {
            width: 100px;
            margin-right: 10px;
            border-radius: 8px;
            border: none;
            background: #c8c8c8;
        }
        .product .tableBox .btn_group button:nth-child(2)
        {
            width: 100px;
            margin-right: 10px;
            border-radius: 8px;
            border: none;
            background: #e7c64c;
        }
        .product .tableBox .btn_group button:nth-child(3)
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
    <div class="product">
        <h2>상품 등록</h2>
        <div class="tableBox">
            <form action="" name="frm" id="frm" enctype="multipart/form-data">
            	<input type="hidden" id="cate_no" name="cate_no">
                <table>
                    <tr>
                        <th>상품명</th>
                        <td><input type="text" id="prod_name" name="prod_name"></td>
                    </tr>
                    <tr>
                        <th>상품 종류</th>
                        <td>
                            <select name="prod_kind" id="prod_kind">
                            	<option value="select">선택</option>
                                <option value="bottom">바지</option>
                                <option value="coat">코트</option>
                                <option value="zipup">집업</option>
                                <option value="hood">후드</option>
                                <option value="mantoman">맨투맨</option>
                                <option value="outer">아우터</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>가격</th>
                        <td><input type="text" id="price" name="price"></td>
                    </tr>
                    <tr>
                        <th>상품 설명</th>
                        <td><textarea id="prod_content" name="prod_content" rows="4" cols="50"></textarea></td>
                    </tr>
                    <tr>
                        <th>이미지</th>
                        <td><input type="file" id="file" name="file" required></td>
                    </tr>
                </table>
            </form>
            <div class="btn_group">
                <button type="button" id="insert">등록</button>
                <button type="button" id="cancle">취소</button>
            </div>
        </div>
    </div>
    <%@ include file="../include/footer.jsp" %>
    
    <script type="text/javascript">
	    var errorMessage = '${errorMessage}'; // 서버 내부 오류
		var session = '${session}';	// 세션 체크
		var loginChk = '${loginChk}';	// 관리자 로그인 체크
		var upload = '${upload}';	// 파일 업로드 성공 여부
		
		if(loginChk == 'fail') {
			alert("관리자 로그인 후 이용 가능합니다.");
			window.location.href = "${path}/member/loginForm.do";
		} else if(session == "exp") {
			alert("세션이 만료 되었습니다. 다시 로그인 바랍니다.");
			window.location.href = "${path}/member/loginForm.do";
		} else if(errorMessage == "error") {
			alert("서버 내부에 오류가 발생 했습니다.");
			window.location.href = "${path}/error/errorPage.do";
		} else if(upload == "fail") {
			alert("파일 업로드 실패");
			location.reload();
		}
    	
    	$(document).ready(function() {
    	    $("#insert").on("click", function() {
    	        var prod_name = $("#prod_name").val();
    	        var selectedOption = $("#prod_kind").val();
    	        var price = $("#price").val();
    	        var prod_content = $("#prod_content").val();
				var file = $("#file").val();
    	        
    	        // 상품 정보 입력 확인 후 FormData에 상품 정보들을 담는다.
    	        if(prod_name == "") {
    	            alert("상품명을 입력해주세요.");
    	            $("#prod_name").focus();
    	        } else if(selectedOption == "select") {
    	            alert("상품종류를 선택해주세요.");
    	            $("#prod_kind").focus();
    	        } else if(price == "") {
    	        	alert("가격을 입력해주세요.");
    	            $("#price").focus();
    	        } else if(isNaN(price)) { 
    	            alert("가격은 숫자만 입력해주세요."); 
    	            $("#price").focus();
    	        } else if(prod_content == "") {
    	            alert("상품내용을 입력해주세요.");
    	            $("#prod_content").focus();
    	        } else if(file == "") {
    	        	alert("파일을 선택해주세요.");
    	        } else {
    	            // 유효한 경우에만 AJAX 요청 보내기
    	            var formData = new FormData();
    	            formData.append('prod_name', prod_name);
    	            formData.append('prod_kind', selectedOption);
    	            formData.append('price', price);
    	            formData.append('prod_content', prod_content);
    	            formData.append('file', $('#file').prop('files')[0]);

    	            // AJAX 요청 보내기
    	            $.ajax({
    	                url: 'fileUpload.do',
    	                type: 'POST',
    	                data: formData,
    	                processData: false,
    	                contentType: false,
    	                success: function(response) {
    	                    if(response) {
    	                        alert('상품 등록이 완료되었습니다.');
    	                        // location.reload(); 
    	                        window.location.href = '${path}/admin/productList.do';
    	                    } else {
    	                        alert('상품 등록에 실패하였습니다.');
    	                    }
    	                },
    	                error: function(xhr, status, error) {
        	                // 파일 업로드 실패 시 처리
        	                alert("파일 업로드에 실패하였습니다.");
        	                console.log(xhr.responseText);
        	                
        	                if (xhr.status === 404) {
    		                    alert("요청하신 페이지를 찾을 수 없습니다.");
    		                    window.location.href = '${path}/error/errorPage.do';
    		                } else if (xhr.status === 500) {
    		                    alert("서버 내부 오류가 발생했습니다. 관리자에게 문의해주세요.");
    		                }
        	            }
    	            });
    	        }
    	    });
    	});	

    	
    </script>
</body>
</html>
