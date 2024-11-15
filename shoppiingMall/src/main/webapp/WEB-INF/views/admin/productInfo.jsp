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
    <title>상품 상세보기</title>
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
        <h2>상품 상세보기</h2>
        <div class="tableBox">
            <form action="" name="frm" id="frm">
            	<input type="hidden" id="cate_no" name="cate_no" value="${pdto.cate_no }">
            	<input type="hidden" id="prod_no" name="prod_no" value="${pdto.prod_no }">
                <table>
                    <tr>
                        <th>상품명</th>
                        <td><input type="text" id="prod_name" name="prod_name" value="${pdto.prod_name }"></td>
                    </tr>
                    <tr>
                        <th>상품 종류</th>
                        <td>
                            <select name="prod_kind" id="prod_kind">
                            	<c:choose>
                            		<c:when test="${pdto.prod_kind eq 'bottom' }">
		                            	<option value="select">선택</option>
		                                <option value="bottom" selected>바지</option>
		                                <option value="coat">코트</option>
		                                <option value="zipup">집업</option>
		                                <option value="hood">후드</option>
		                                <option value="mantoman">맨투맨</option>
		                                <option value="outer">아우터</option>
                                	</c:when>
                                	<c:when test="${pdto.prod_kind eq 'coat' }">
		                            	<option value="select">선택</option>
		                                <option value="bottom">바지</option>
		                                <option value="coat" selected>코트</option>
		                                <option value="zipup">집업</option>
		                                <option value="hood">후드</option>
		                                <option value="mantoman">맨투맨</option>
		                                <option value="outer">아우터</option>
                                	</c:when>
                                	<c:when test="${pdto.prod_kind eq 'zipup' }">
		                            	<option value="select">선택</option>
		                                <option value="bottom">바지</option>
		                                <option value="coat">코트</option>
		                                <option value="zipup" selected>집업</option>
		                                <option value="hood">후드</option>
		                                <option value="mantoman">맨투맨</option>
		                                <option value="outer">아우터</option>
                                	</c:when>
                                	<c:when test="${pdto.prod_kind eq 'hood' }">
		                            	<option value="select">선택</option>
		                                <option value="bottom">바지</option>
		                                <option value="coat">코트</option>
		                                <option value="zipup">집업</option>
		                                <option value="hood" selected>후드</option>
		                                <option value="mantoman">맨투맨</option>
		                                <option value="outer">아우터</option>
                                	</c:when>
                                	<c:when test="${pdto.prod_kind eq 'mantoman' }">
		                            	<option value="select">선택</option>
		                                <option value="bottom">바지</option>
		                                <option value="coat">코트</option>
		                                <option value="zipup">집업</option>
		                                <option value="hood">후드</option>
		                                <option value="mantoman" selected>맨투맨</option>
		                                <option value="outer">아우터</option>
                                	</c:when>
                                	<c:when test="${pdto.prod_kind eq 'outer' }">
		                            	<option value="select">선택</option>
		                                <option value="bottom">바지</option>
		                                <option value="coat">코트</option>
		                                <option value="zipup">집업</option>
		                                <option value="hood">후드</option>
		                                <option value="mantoman">맨투맨</option>
		                                <option value="outer" selected>아우터</option>
                                	</c:when>
                                </c:choose>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>가격</th>
                        <td><input type="text" id="price" name="price" value="${pdto.price }"></td>
                    </tr>
                    <tr>
                        <th>상품 설명</th>
                        <td><textarea id="prod_content" name="prod_content" rows="4" cols="50">${pdto.prod_content }</textarea></td>
                    </tr>
                    <tr>
                        <th>사용 여부</th>
                        <td>
                            <select name="useyn" id="useyn">
							    <c:choose>							  
							        <c:when test="${pdto.useyn eq 'Y'}">
							            <option value="select">선택</option>
							            <option value="Y" selected>Y</option>
							            <option value="N">N</option>
							        </c:when>				
							        <c:when test="${pdto.useyn eq 'N'}">
							            <option value="select">선택</option>
							            <option value="Y">Y</option>
							            <option value="N" selected>N</option>
							        </c:when>							    
							        <c:otherwise>
							            <option value="select" selected>선택</option>
							            <option value="Y">Y</option>
							            <option value="N">N</option>
							        </c:otherwise>							       
							    </c:choose>
							</select>
                        </td>
                    </tr>
                </table>
            </form>
            <div class="btn_group">
                <button type="button" id="update">수정</button>
                <button type="button" id="delete">삭제</button>
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
		
		// 상품 정보 수정
		$(function() {
			// 상품 종류(prod_kind)에 따라 카테고리(cate_no) 값도 함께 변경
			$("#prod_kind").change(function() {
				var selectedKind = $(this).val();	// 선택된 상품 종류 값 가져오기
				var cate_no; // 카테고리 번호 가져오기
				
				switch(selectedKind) {
				case "bottom":
					cate_no = "10";
					break;
				case "coat":
					cate_no = "20";
					break;
				case "zipup":
					cate_no = "30";
					break;	
				case "hood":
					cate_no = "40";
					break;	
				case "mantoman":
					cate_no = "50";
					break;	
				case "outer":
					cate_no = "60";
					break;
				default:
					cate_no = null;
					break;
				}
				$("#cate_no").val(cate_no);
			});
			
			$("#update").click(function() {
				var prod_no = $("#prod_no").val();	// 상품 번호
				var prod_name = $("#prod_name").val();	// 상품명
				var prod_kind = $("#prod_kind").val();	// 상품 종류
				var price = $("#price").val();	// 가격
				var prod_content = $("#prod_content").val();	// 상품 설명
				var useyn = $("#useyn").val();	// 사용 여부
				var cate_no = $("#cate_no").val();	// 카테고리 번호
				
				if(prod_name == "") {
					alert("상품명을 입력 해주세요");
					$("#prod_name").focus();
				} else if(prod_kind == "select") {
					alert("상품 종류를 선택 해주세요");
					$("#prod_kind").focus();
				} else if(price == "") {
					alert("상품 가격을 입력 해주세요");
					$("#price").focus();
				} else if(isNaN(price)) {
					alert("상품 가격은 숫자 로만 입력 가능 합니다.");
					$("#price").focus();
				} else if(useyn == "select") {
					alert("사용 여부를 선택 해주세요");
					$("#useyn").focus();
				} else {
					$.ajax({
						url: "updateProduct.do",
						type: "POST",
						data: {
								prod_no: prod_no,
				            	prod_name: prod_name,
				            	prod_kind: prod_kind,
				            	price: price,
				            	prod_content: prod_content,
				            	useyn: useyn.toString(),
				            	cate_no: cate_no
				               },
						success: function(data) {
							alert("상품 정보를 성공적으로 수정 했습니다.");
							window.location.href = '${path}/admin/productList.do';
						},
						error: function(xht, status, error) {
							alert("상품 정보 수정에 실패하였습니다. 오류: " + error);
							
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
		
		// 상품 삭제 
		$(function() {
			$("#delete").click(function() {
				var prod_no = $("#prod_no").val();	// 삭제할 상품 번호
				
				$.ajax({
					url: "deleteProduct.do",
					type: "POST",
					data: {prod_no: prod_no}, // 상품 번호 외에는 update 되지 않게 상품 번호만 서버로 전송
					success: function(data) {
						alert("상품을 성공적으로 삭제 했습니다.");	
						window.location.href = '${path}/admin/productList.do';
					},
					error: function(xht, status, error) {
						alert("상품 삭제에 실패하였습니다. 오류: " + error);
						
						if (xhr.status === 404) {
		                    alert("요청하신 페이지를 찾을 수 없습니다.");
		                    window.location.href = '${path}/error/errorPage.do';
		                } else if (xhr.status === 500) {
		                    alert("서버 내부 오류가 발생했습니다. 관리자에게 문의해주세요.");
		                }
					}
				});	
			});
		});
		
		
    </script>
</body>
</html>
