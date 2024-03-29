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
    <title>주문 하기</title>
    <link rel="stylesheet" href="${path }/resources/css/style.css">
    <link rel="stylesheet" href="${path }/resources/css/normalize.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
   
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    
    <style>
        .order
        {
            width: 900px;
            margin: 0 auto;
            overflow-x: hidden;
            background-color: #ececec;
        }
        .order .orderFrm .titleArea
        {         
            background-color: #5f5f5f;
            height: 40px; 
            border-right: 1px solid rgba(33, 33, 33, 0.15);        
        }
        .order .orderFrm .titleArea h2
        {
            text-align: center;
            color: #ffffff;
            font-size: 20px;
            padding-top: 8px;
            font-weight: 700;
        }
        .order .orderFrm .orderInfo
        {
            border: 1px solid #ffffff;
            height: 350px;
            background-color: #ffffff;
            margin: 15px 0 15px 0;
            border-left: 1px solid rgba(33, 33, 33, 0.15);
            border-right: 1px solid rgba(33, 33, 33, 0.15);
        }
        .order .orderFrm .orderInfo h3
        {
            font-size: 15px;
            font-weight: bold;
            padding: 15px 0 15px 15px;
        }
        .order .orderFrm .orderInfo table
        {
            border-collapse: collapse;
            width: 100%;
        }
        .order .orderFrm .orderInfo table th 
        {
            width: 15%;
            padding: 15px 0 15px 15px;
            font-size: 13px;
        }
        .order .orderFrm .orderInfo table td
        {
            width: 85%;          
        }
        .order .orderFrm .orderInfo table td input[readonly]
        {
        	background-color: #efefef;
        }
        .order .orderFrm .orderInfo table td input
        {
            border: 1px solid rgba(33, 33, 33, 0.15);
            border-radius: 5px;
            font-size: 13px;
            padding: 5px;
        }
        .order .orderFrm .orderInfo table td input::placeholder
        {
            font-size: 12px;
            padding: 5px;
        }
        .order .orderFrm .orderInfo table tr:nth-child(2) td label
        {
            margin: 0 2px 0 1px;
        }
        .order .orderFrm .orderInfo table tr:nth-child(3) td label
        {
            color: rgba(33, 33, 33, 0.15);
        }
        .order .orderFrm .orderInfo table tr:nth-child(4) td
        {
            display: flex;
            flex-direction: column;
        }
        .order .orderFrm .orderInfo table tr:nth-child(4) td input
        {
            margin-top: 15px;
        }
        .order .orderFrm .orderProduct
        {
            border: 1px solid #ffffff;
            height: auto;
            background-color: #ffffff;
            margin: 15px 0 15px 0;
            border-left: 1px solid rgba(33, 33, 33, 0.15);
            border-right: 1px solid rgba(33, 33, 33, 0.15);
        }
        .order .orderFrm .orderProduct h3
        {
            font-size: 15px;
            font-weight: bold;
            padding: 15px 0 15px 15px;
        }
        .order .orderFrm .orderProduct .prodBox
        {
            padding: 0px 15px 15px 15px;
        }
        .order .orderFrm .orderProduct .prodBox img, ul
        {
            display: inline-block;
            vertical-align: top;
            margin-right: 20px; 
        }
        .order .orderFrm .orderProduct .prodBox img
        {
            width: 120px;
            height: 120px;
        }
        .order .orderFrm .orderProduct .prodBox ul li
        {
            margin: 0 0 10px 0;
            font-size: 15px;
        }
        .order .orderFrm .orderProduct .prodBox ul li:nth-child(2),
        li:nth-child(3)
        {
            color: #606060;
        }
        .order .orderFrm .orderProduct .deliveryFee
        {
            background: #F8F9FA;
            padding: 0 0 15px 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .order .orderFrm .orderProduct .deliveryFee h5
        {
         
            font-size: 15px;
            font-weight: bold;
            padding-top: 15px;
            margin-top: 15px;
        }
        .order .orderFrm .orderProduct .deliveryFee span
        {          
            font-size: 15px;
            font-weight: bold;
            padding-right: 15px;
            margin-top: 15px;
        }
        .order .orderFrm .payment
        {
            border: 1px solid #ffffff;
            height: 270px;
            background-color: #ffffff;
            margin: 15px 0 15px 0;
            border-left: 1px solid rgba(33, 33, 33, 0.15);
            border-right: 1px solid rgba(33, 33, 33, 0.15);
        }
        .order .orderFrm .payment h3
        {
            font-size: 15px;
            font-weight: bold;
            padding: 15px 0 15px 15px;
        }
        .order .orderFrm .payment .paymentInfo
        {
            padding: 0 0 15px 15px;
            font-size: 13px;
            color: #383838;
        }
        .order .orderFrm .payment .paymentInfo table
        {
            width: 100%;
            border-collapse: collapse;
        }
        .order .orderFrm .payment .paymentInfo table th
        {
            width: 30%;
            padding: 0 0 15px 0;
        }
        .order .orderFrm .payment .paymentInfo table td
        {
            text-align: right;
            width: 70%;
            padding: 0 15px 15px 0;
            font-size: 15px;
        }
        .order .orderFrm .payment .paymentInfo table tr:nth-child(2) td::before
        {
            content: "+";
        }
        .order .orderFrm .payment .paymentInfo table tr:nth-child(3) td span:nth-child(1)
        {
            color: red;
        }
        .order .orderFrm .payment .paymentInfo table tr:nth-child(3) td span:nth-child(1)::before
        {
            content: "-";
        }
        .order .orderFrm .payment .paymentPrice
        {
            background: #f4f7ff;
            padding: 15px 0 15px 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .order .orderFrm .payment .paymentPrice h5
        {
            font-size: 15px;
            font-weight: bold;
            padding-top: 15px;
            margin-top: 15px;
        }
        .order .orderFrm .payment .paymentPrice strong
        {
            font-size: 15px;
            font-weight: bold;
            padding-right: 15px;
            margin-top: 15px;
        }
        .order .orderFrm .payMethod
        {
            border: 1px solid #ffffff;
            height: 360px;
            background-color: #ffffff;
            margin-bottom: 15px;
            border-left: 1px solid rgba(33, 33, 33, 0.15);
            border-right: 1px solid rgba(33, 33, 33, 0.15);
        }
        .order .orderFrm .payMethod h3
        {
            font-size: 15px;
            font-weight: bold;
            padding: 15px 0 15px 15px;
        }
        .order .orderFrm .payMethod .payMEthod-new
        {
            font-size: 14px;
            font-weight: 550;
            padding: 15px 0 15px 15px;
        }
        .order .orderFrm .payMethod .segment {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .order .orderFrm .payMethod .segment span
        {
            border: 1px solid black;         
            height: 60px;
            width: 96%;
            padding: 15px;
            border: 1px solid rgba(33, 33, 33, 0.15);
            font-weight: 540;
            font-size: 18px;
            display: inline-block;
            cursor: pointer;
        }
        .order .orderFrm .payMethod .segment span label
        {
            width: 100%;
            height: 100%;
        }
        .order .orderFrm .payMethod .segment span input[type="checkbox"]
        {
            display: none;
        }
        .order .orderFrm .payMethod .ec-payMethod
        {
            padding: 15px;
            
        }
        .order .orderFrm .payMethod .ec-payMethod table
        {
            border-collapse: collapse;
            width: 100%;
            border: 1px solid rgba(33, 33, 33, 0.15);
            background: #f4f7ff;
        }
        .order .orderFrm .payMethod .ec-payMethod table th
        {
            padding: 15px;
            font-size: 13px;
            
        }
        .order .orderFrm .payMethod .ec-payMethod table td select
        {
            border: 1px solid rgba(33, 33, 33, 0.15);
            border-radius: 5px;
            width: 770px;
            height: 25px;
            font-size: 12px;
        }
        .order .orderFrm .payMethod .ec-payMethod table td input
        {
            border: 1px solid rgba(33, 33, 33, 0.15);
            border-radius: 5px;
            width: 770px;
            height: 25px;            
        }
        .order .orderFrm .payMethod .ec-payMethod table td input::placeholder
        {
            font-size: 12px;
            padding: 0 0 0 5px;
        }
        .order .orderFrm .agreement
        {
            border: 1px solid #ffffff;
            background-color: #ffffff;
            margin-bottom: 15px;
            border-left: 1px solid rgba(33, 33, 33, 0.15);
            border-right: 1px solid rgba(33, 33, 33, 0.15);
        }
        .order .orderFrm .agreement p
        {
            text-align: center;
            font-size: 15px;
            font-weight: bold;
            margin-top: 15px;
        }
        .order .orderFrm #btn
        {
            width: 100%;
            height: 60px;
            background: #2f2f2f;
            color: #ffffff;
            font-weight: bold;
            font-size: 16px;
            
        }
    </style>
</head>
<body>
    <%@ include file ="../include/header.jsp" %>
    <div class="order">
        <form id="orderFrm" class="orderFrm" name="orderFrm"> 
            <div class="titleArea">
                <h2>주문 / 결제</h2>
            </div>
            <div class="orderInfo">
                <h3>주문 정보</h3>
                <table>
                    <tr>
                        <th>주문자</th>
                        <td><input type="text" id="mem_name" name="mem_name" placeholder="주문자" value="${member.mem_name }" readonly></td>
                        <td><input type="hidden" id="mem_pw" name="mem_pw" value="${member.mem_pw }"></td>
                        <td><input type="hidden" id="mem_id" name="mem_id" value="${member.mem_id }"></td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td>
                            <input type="text" id="firstEmail" name="firstEmail" placeholder="이메일" value="${firstEmail}" readonly>
                            <label for="email">@</label>
                            <input type="text" id="secondEmail" name="secondEmail" value="${secondEmail}" readonly>
                        </td>
                    </tr>
                    <tr>
                        <th>휴대전화</th>
                        <td>
                            <input type="text" id="mobile1" value="${mobile1 }">
                            <label for="mobile2">-</label>
                            <input type="text" id="mobile2" value="${mobile2 }">
                            <label for="mobile2">-</label>
                            <input type="text" id="mobile3" value="${mobile3 }">
                        </td>
                    </tr>
                    <tr>
                        <th>주소</th>
                        <td>
                            <input type="text" id="post" placeholder="우편번호" value="${member.post }">
                            <input type="text" id="addr1" placeholder="기본주소" value="${member.addr1 }">
                            <input type="text" id="addr2" placeholder="나머지 주소" value="${member.addr2 }">
                        </td>
                    </tr>
                </table>
            </div>
            <div class="orderProduct">
                <h3>주문상품</h3>
                <c:choose>
                	<c:when test="${empty cartList }">
                		<span style="padding:0 0 15px 15px; color: red;">주문 하실 상품이 없습니다.</span>
                	</c:when>
                	<c:otherwise>
                		<c:forEach items="${cartList }" var="list">
                			<div class="prodBox">
			                    <img src="${path }/${list.prod_image}" alt="상품 이미지">
			                    <ul>
			                        <li>상품명 : ${list.prod_name }</li>
			                        <li>[옵션: ${list.size }]</li>
			                        <li>수량 : ${list.quantity }</li>			                        
			                       	<li>가격 : <fmt:formatNumber pattern="###,###,###" value="${list.price }"/>원</li>
			                    </ul>
			                </div>
                		</c:forEach>
                	</c:otherwise>
                </c:choose>   
                <c:if test="${not empty totalData}">      
	                <div class="deliveryFee">
	                    <h5>배송비</h5>
	                    <span>${totalData.DELIVERYFEE}원</span>
	                </div>
                </c:if>
                <c:if test="${empty totalData}">      
	                <div class="deliveryFee">
	                    <h5>배송비</h5>
	                    <span>${totalData.DELIVERYFEE}원</span>
	                </div>
                </c:if>
            </div>
            <div class="payment">
                <h3>결제 정보</h3>
                <div class="paymentInfo">
                    <table>
	                    <c:if test="${not empty totalData }">
	                    	<tr>
	                            <th>주문상품</th>
	                            <td><fmt:formatNumber pattern="###,###,###" value="${totalData.TOTAL_PRICE }"/>원</td>
	                        </tr>
	                        <tr>
	                            <th>배송비</th>
	                            <td><fmt:formatNumber pattern="###,###,###" value="${totalData.DELIVERYFEE }"/>원</td>
	                        </tr>
	                        <tr>
	                            <th>할인/부가결제</th>
	                            <td>
	                                <span>0</span>
	                                <span>원</span>
	                            </td>
	                        </tr>
	                    </c:if>
                        <c:if test="${empty totalData }">
                    	<tr>
                            <th>주문상품</th>
                            <td><fmt:formatNumber pattern="###,###,###" value="${totalData.TOTAL_PRICE }"/>원</td>
                        </tr>
                        <tr>
                            <th>배송비</th>
                            <td><fmt:formatNumber pattern="###,###,###" value="${totalData.DELIVERYFEE }"/>원</td>
                        </tr>
                        <tr>
                            <th>할인/부가결제</th>
                            <td>
                                <span>0</span>
                                <span>원</span>
                            </td>
                        </tr>
                    </c:if>
                    </table>
                </div>
                <div class="paymentPrice">
                    <h5>최종 결제 금액</h5>
                    <strong><fmt:formatNumber pattern="###,###,###" value="${totalData.TOTAL_DATA }"/>원</strong>
                </div>
            </div>
            <div class="payMethod">
                <h3>결제 수단</h3>
                <label for="payMEthod-new" class="payMEthod-new">결제수단 선택</label>
                <div class="segment">   
                    <span>
                        <label for="banktransfer" id="bank">무통장 입금
                        	<input type="checkbox" name="banktransfer" id="bankTransfer" value="">
                        </label>
                    </span>    
                    <span class="creditCard">
                        <label for="creditCard" id="card">카드 결제
                       		<input type="checkbox" name="creditCard" id="creditCard" value="">
                        </label>
                    </span> 
                </div>
                <!-- payMethod 클릭 에 따른 div 분기 -->
                <div class="ec-payMethod" id="ec-payMethod">
                    <table border="1">
                        <tr>
                            <th>입금은행</th>
                            <td>
                                <select name="selectedOption" id="selectedOption">
                                    <option value="select">선택</option>
                                    <option value="bank">기업 123456789 주식 대부</option>
                                </select>
                            </td>
                        </tr>
                        <!-- <tr>
                            <th>입금자명</th>
                            <td><input type="text" placeholder="ex)홍길동"></td>
                        </tr> -->
                    </table>
                </div>
            </div>
            <div class="agreement">
                <p>주문 내용을 확인 하였으며 약관에 동의합니다.</p>
            </div>
            <button type="button" id="btn">${totalData.TOTAL_DATA }원 결제하기</button>
        </form>
    </div>
    <%@ include file ="../include/footer.jsp" %>

   	<script>
	    /* 로그인 체크 */
	    var loginChk = '${loginChk}';
	    
	    if(loginChk == 'fail') {
	       alert("로그인 후 이용 가능합니다.");
	       window.location.href = '${path}/member/loginForm.do'; // 리다이렉트
	    }
   		
	   	document.querySelectorAll('.segment span').forEach(function(span) {
	   	    span.addEventListener('click', function() {
	   	        // 모든 span의 스타일과 연결된 input의 상태를 원래 상태로 초기화
	   	        document.querySelectorAll('.segment span').forEach(function(otherSpan) {
	   	            otherSpan.style.color = '';
	   	            otherSpan.style.border = '';
	   	            const otherInput = otherSpan.querySelector('input[type="checkbox"]');
	   	            otherInput.checked = false;
	   	        });
	   	        // 클릭된 span의 스타일을 변경하고 연결된 input의 상태를 변경
	   	        span.style.color = '#3971ff';
	   	        span.style.border = '1px solid #3971ff';
	   	        const input = span.querySelector('input[type="checkbox"]');
	   	        input.checked = true;
	   	    });
	   	});
		
	   	$("#ec-payMethod").css("display", "none");
	   	
	   	// id가 "card"인 label을 클릭하면 ec-payMethod를 숨깁니다.
	   	document.getElementById('card').addEventListener('click', function() {
	   	    document.querySelector('.ec-payMethod').style.display = 'none';           
	   	});
	   	// id가 "bank"인 label을 클릭하면 ec-payMethod를 다시 표시합니다.
	   	document.getElementById('bank').addEventListener('click', function() {
	   	    document.querySelector('.ec-payMethod').style.display = 'block';
	   	});
		
		document.getElementById('btn').addEventListener('click', function() {
			var mobile1 = $("#mobile1").val();
		    var mobile2 = $("#mobile2").val();
		    var mobile3 = $("#mobile3").val();
		    var post = $("#post").val();
		    var addr1 = $("#addr1").val();
		    var addr2 = $("#addr2").val();
		    var firstEmail = $("#firstEmail").val();
		    var secondEmail = $("#secondEmail").val();	
		    var mem_id = $("#mem_id").val();
		    // 이메일, 전화번호 조합
		    // var phone = mobile1 + mobile2 + mobile3;
   			// var email = firstEmail + "@" + secondEmail;

		    const bankTransferCheckbox = document.getElementById('bankTransfer');	// 무통장 입금 체크박스의 상태 확인
		    const creditCardCheckbox = document.getElementById('creditCard');	// 카드 결제 체크박스의 상태 확인
		    const paymentMethodSelect = document.getElementById('selectedOption'); // 결제 수단 select 태그
		    
		    var labelOption;
		    // 무통장 입금
		    if (bankTransferCheckbox.checked) {
		        // "무통장 입금" 체크박스가 체크된 상태일 때
		        // labelOption = document.querySelector('#bank label').textContent.trim(); // 무통장 입금 선택
		        labelOption = document.querySelector('#bank label'); // 무통장 입금 선택
		        if (paymentMethodSelect.value !== 'select') {
		            // 결제 수단이 '선택'이 아니라면 주문 처리
		            if (mobile1 == "") {
		                alert("전화번호를 입력 해주세요.");
		                $("#mobile1").focus();
		            } else if(mobile2 == "") {
		            	alert("전화번호를 입력 해주세요.");
		                $("#mobile2").focus();
		            } else if(mobile3 == "") {
		            	alert("전화번호를 입력 해주세요.");
		                $("#mobile3").focus();
		            } else if(firstEmail == "") {
		            	alert("이메일을 입력 해주세요.");
		                $("#firstEmail").focus();
		            } else if(secondEmail == "") {
		            	alert("이메일을 입력 해주세요.");
		                $("#secondEmail").focus();
		            } else if(post == "") {
		            	alert("우편번호를 입력 해주세요.");
		                $("#post").focus();
		            } else if(addr1 == "") {
		            	alert("기본주소를 입력 해주세요.");
		                $("#addr1").focus();
		            } else if(addr2 == "") {
		            	alert("상세주소를 입력 해주세요.");
		                $("#addr2").focus();
		            } else {
		            	insertOrder(mem_id)
		            }
		        } else {
		            // 결제 수단이 '선택'인 경우 알림 표시
		            alert('입금은행을 선택해주세요.');
		        }
		    } else if (creditCardCheckbox.checked) {
		        // 카드 결제
		        // labelOption = document.querySelector('#card label').textContent.trim(); // 카드 결제 선택
		        labelOption = document.querySelector('#card label'); // 카드 결제 선택
		        if (mobile1 == "") {
	                alert("전화번호를 입력 해주세요.");
	                $("#mobile1").focus();
	            } else if(mobile2 == "") {
	            	alert("전화번호를 입력 해주세요.");
	                $("#mobile2").focus();
	            } else if(mobile3 == "") {
	            	alert("전화번호를 입력 해주세요.");
	                $("#mobile3").focus();
	            } else if(firstEmail == "") {
	            	alert("이메일을 입력 해주세요.");
	                $("#firstEmail").focus();
	            } else if(secondEmail == "") {
	            	alert("이메일을 입력 해주세요.");
	                $("#secondEmail").focus();
	            } else if(post == "") {
	            	alert("우편번호를 입력 해주세요.");
	                $("#post").focus();
	            } else if(addr1 == "") {
	            	alert("기본주소를 입력 해주세요.");
	                $("#addr1").focus();
	            } else if(addr2 == "") {
	            	alert("상세주소를 입력 해주세요.");
	                $("#addr2").focus();
	            }  else {
		            // 카드 결제는 구현 예정
		            alert("카드 결제는 현재 구현중에 있습니다.");
		        }
		    } else {
		        // 체크되지 않았을 때 사용자에게 알림
		        alert('결제 방법을 선택 해주세요.');
		    }
		});
		
		// 장바구니가 비어 있다면 홈 화면으로 리다이렉트
		var totalQuantity = '${totalQuantity}';
		if(totalQuantity == 0) {
			alert("장바구니가 비어있습니다.\n상품을 장바구니에 담아주세요.");
			window.location.href = '${path}/';
		}
		
		// 상품 주문 함수
		function insertOrder(mem_id) {
		    var mobile1 = $("#mobile1").val();
		    var mobile2 = $("#mobile2").val();
		    var mobile3 = $("#mobile3").val();
		    var post = $("#post").val();
		    var addr1 = $("#addr1").val();
		    var addr2 = $("#addr2").val();
		    var firstEmail = $("#firstEmail").val();
		    var secondEmail = $("#secondEmail").val();	
		    var mem_id = $("#mem_id").val();
		    
		    // 이메일, 전화번호 조합
		    // var phone = mobile1 + mobile2 + mobile3;
   			// var email = firstEmail + "@" + secondEmail;
		    
	        $.ajax({
	            url: '/myapp/order/insertOrder.do',
	            method: 'POST',
	            data: {
	            	mobile1: mobile1,
	            	mobile2: mobile2,
	            	mobile3: mobile3,
	            	post: post,
	                addr1: addr1,
	                addr2: addr2,
	            	firstEmail: firstEmail,
	            	secondEmail: secondEmail,
	                // phone: phone,
	                // email: email,
	            	mem_id: mem_id
	            },
	            success: function(response) {
	            		alert("주문이 성공적으로 완료 되었습니다.");
		             	// 주문이 성공적으로 처리된 후에 장바구니 비우기 함수 호출
		                allCartDelete(mem_id);	
	            },
	            error: function(xhr, status, error) {
	                alert("주문 도중 에러가 발생 했습니다.");
	                
	                if (xhr.status === 404) {
	                    alert("요청하신 페이지를 찾을 수 없습니다.");
	                    window.location.href = '${path}/error/errorPage.do';
	                } else if (xhr.status === 500) {
	                    alert("서버 내부 오류가 발생했습니다. 관리자에게 문의해주세요.");
	                }
	            }
	        });		   
		} 
		
		// 상품 주문 후 장바구니 비우기 함수
		function allCartDelete(mem_id) {
			$.ajax({
				url: '/myapp/cart/allCartDelete.do',
				method: 'POST',
				data: {
					mem_id: mem_id
				},
				success: function(response) {
					window.location.href = '/myapp/order/orderInfo.do?mem_id=' + mem_id;
				},
				error: function(xhr, status, error) {
	                alert("장바구니를 비우던 중 에러가 발생 했습니다.");
	                
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