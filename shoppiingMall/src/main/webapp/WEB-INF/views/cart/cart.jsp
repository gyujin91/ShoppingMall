<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>장바구니</title>
    <link rel="stylesheet" href="${path }/resources/css/normalize.css">
    <link rel="stylesheet" href="${path }/resources/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    
    <style>
        .content h2
        {
            text-align: center;
            font-weight: bold;
            margin-bottom: 50px;
        }
        .content .basket .empty
        {
            background: #ececec;
		    height: 100px;
		    display: flex;
		    align-items: center;
		    justify-content: center;
		    font-size: 1.5em;
		    margin-bottom: 50px;
		    text-align: center;
        }
        .content .basket .empty p
        {
        	margin-bottom: 40px;
        }
        .content .basket .table1
        {
            border-collapse: collapse;
            width: 100%;
        }
        .content .basket .table1 tr
        {
            border-bottom: 1px solid rgba(33, 33, 33, 0.15);
        }
        .content .basket .table1 th
        {
            padding-bottom: 10px;
            text-align: left;
        }
        .content .basket .table1 th:nth-child(4)
        {
        	padding-left: 10px;
        }.content .basket .table1 th:nth-child(5)
        {
        	padding-left: 15px;
        }
        .content .basket .table1 td:nth-child(1)
        {
           width: 10%;
           text-align: left;
        }
        .content .basket .table1 td:nth-child(2)
        {
            width: 30%;
            position: relative;
            text-align: left;
        }
        .content .basket .table1 td:nth-child(2) p
        {
            position: absolute;
            top: 15%;
            left: 30%;
        }
        .content .basket .table1 td:nth-child(3)
        {
        	width: 10%;
            padding-left: 10px;
        }
        .content .basket .table1 td:nth-child(4)
        {
        	width: 10%;
            padding-left: 25px;
        }
        .content .basket .table1 td:nth-child(5),
        td:nth-child(6), td:nth-child(7)
        {
            width: 10%;
            padding-left: 5px;
        }
        .content .basket .table1 td:nth-child(5)
        {
           padding-left: 15px;
        }
        .content .basket .table1 td:nth-child(8), td:nth-child(9)
        {
            width: 5%;
        }
        .content .basket .table1 i
        {
            font-size: 1.2em;
        }
        .content .basket .table1 td img
        {
            width: 80px;
            height: 80px;
            margin: 20px 0 20px 0;
        }
        .content .basket .table1 td p{
            margin-top: 30px;
        }
        .content .basket .table1 td button
        {
            border-radius: 25px;
            padding: 3px;
            border: 1px solid rgba(33, 33, 33, 0.15);
            background-color: #fff;
        }
        .content .basket .delete
        {
            margin: 20px 0 20px 0;
            border-bottom: 1px solid black;
            padding-bottom: 50px;
        }
        .content .basket .delete button
        {
            border-radius: 25px;
            padding: 5px;
            border: 1px solid rgba(33, 33, 33, 0.15);
            background-color: #fff;
            /* margin-left: 113px; */
        }
        .content .basket .delete strong
        {
            float: right;
            font-size: 0.8em;
            color: rgba(55, 55, 55, 0.65);
        }
        .content .basket .total h5
        {
            font-size: 1.0em;
            border-bottom: 1px solid rgba(33, 33, 33, 0.15);
            padding-bottom: 20px;
        }
        .content .basket .total h5 strong
        {
            font-size: 1.0em;
            color: #0d6efd;
        }
        .content .basket .total .table2 
        {
            border-collapse: collapse;
            width: 100%;
            margin: 20px;
        }
        .content .basket .total .table2 th:nth-child(1), td:nth-child(1)
        {
            text-align: right;
            position: relative;
        }
        .content .basket .total .table2 th:nth-child(1)::after
        {
            content: "+";
            position: absolute;
            top: 50%;
            left: 120%;
        }
        .content .basket .total .table2 th:nth-child(2), td:nth-child(2)
        {
            text-align: center;
            position: relative;
        }
        .content .basket .total .table2 th:nth-child(2)::after
        {
            content: "=";
            position: absolute;
            top: 50%;
            left: 80%;
        }
        .content .basket .total .table2 th:nth-child(3), td:nth-child(3)
        {
            text-align: left;
        }
        .content .basket .total .table2 td
        {
            font-size: 12px;
            padding-top: 5px;
        }
        .content .basket .total .table2 td:nth-child(1)
        {
            padding-right: 5px;
        }
        .content .basket .total .table2 td:nth-child(2)
        {
            padding-right: 3px;
        }
        .content .basket .total .table2 strong
        {
            color: #0d6efd;
        }
        .payment 
        {
            text-align: center;
            border-top: 1px solid black;
        }
        .payment button
        {
            width: 200px;
            height: 50px;
            border-radius: 8px;
            background: #0d6efd;
            border: none;
            color: #fff;
            font-size: 15px;
            margin: 20px 0 20px 0;
        }
        .payment a
        {
            color: #0d6efd;
            text-decoration: underline;
            font-size: 13px;
        }
        
    </style>
</head>
<body>
    <%@ include file="../include/header.jsp" %>
    <div class="content">
        <h2>장바구니</h2>
        <form class="frm2">
        <input type="hidden" name="mem_id" id="mem_id" value="${mem_id }">
        <div class="basket">
            <table class="table1">
                <thead>
                    <tr>
                        <th><input type="checkbox" name="allCheck" onclick="allCheckFunc(this)"></th>
                        <th>item</th>
                        <th>수량</th>
                        <th>사이즈</th>
                        <th>가격</th>
                        <th>합계</th>
                        <th>배송수단</th>
                        <th>배송비</th>
                    </tr>
                </thead>
                <tbody>
                    <c:choose>
                    	<c:when test="${empty cartList}">
	                    	<div class="empty"><p>장바구니가 비어 있습니다.</p></div>
                    	</c:when>
                    	<c:otherwise>
                    		<c:forEach items="${cartList }" var="list">
	                    		<tr>
			                        <td><input type="checkbox" name="selectCheck" onclick="selectCheck()"></td>
			                        <td><img src="${path }/resources/img/${list.prod_image }" alt=""><p>${list.prod_name }</p></td>
			                        <td>${list.quantity }</td>
			                        <td>${list.size }</td>
			                        <td><fmt:formatNumber pattern="###,###,###" value="${list.price}"/></td>  
			                       	<td><fmt:formatNumber pattern="###,###,###" value="${list.MONEY}"/></td>
			                       	<td>${list.deliveryMethod }</td>
			                        <td>${list.deliveryFee }</td>
			                        <td><button type="button">주문</button></td>
			                        <td><button type="button" class="delBtn"><i class="xi-trash-o"></i></button></td>
			                        <td><input type="hidden" name="cart_id" value="${list.cart_id }"></td>
	                    		</tr>  
                    		</c:forEach>
                    	</c:otherwise>
                    </c:choose>                 
                </tbody>
            </table>
            <div class="delete">
                <button type="button">선택상품 삭제</button>
                <strong>제품별 배송비 정책에 따라 배송비가 별도 부과될 수 있습니다.</strong>
            </div>     
            <div class="total">         
          	<c:choose>
			    <c:when test="${not empty totalQuantity and totalQuantity > 0}">
			        <h5>총 주문 상품 <strong>${totalQuantity}</strong>개</h5>
			    </c:when>
			    <c:when test="${empty totalQuantity}">
			        <h5>총 주문 상품 <strong>${zeroQuantity }</strong>개</h5>
			    </c:when>
			</c:choose> 

                <table class="table2">
                    <thead>
                    	<c:if test="${not empty totalData }">
	                        <th><fmt:formatNumber pattern="###,###,###" value="${totalData.TOTAL_PRICE }"/>원</th>
	                        <th><fmt:formatNumber pattern="###,###,###" value="${totalData.DELIVERYFEE }"/>원</th>
	                        <th><strong><fmt:formatNumber pattern="###,###,###" value="${totalData.TOTAL_DATA }"/>원</strong></th>
                        </c:if>
                        <c:if test="${empty totalData }">
	                        <th><fmt:formatNumber pattern="###,###,###" value="${totalData.TOTAL_PRICE }"/>원</th>
	                        <th><fmt:formatNumber pattern="###,###,###" value="${totalData.DELIVERYFEE }"/>원</th>
	                        <th><strong><fmt:formatNumber pattern="###,###,###" value="${totalData.TOTAL_DATA }"/>원</strong></th>
                        </c:if>
                    </thead>
                    <tbody>
                        <tr>
                        	<td>상품금액</td>
	                        <td>배송비</td>
	                        <td>총 주문액</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="payment">
                <button type="button" id="order">주문하기</button><br>
                <a href="${path }/">계속 쇼핑하기</a>
            </div>
        </div>
        </form>
    </div>
    <%@ include file="../include/footer.jsp" %>
    
    <script type="text/javascript">
    $(document).ready(function() {
        // 체크박스 선택, 삭제
        function selectCheck() {
            const checkboxes = document.querySelectorAll('input[name="selectCheck"]');
            const checked = document.querySelectorAll('input[name="selectCheck"]:checked');
            const allCheck = document.querySelector('input[name="allCheck"]');

            if (checkboxes.length === checked.length) {
                allCheck.checked = true;
            } else {
                allCheck.checked = false;
            }
        }

        //체크 박스 전체 선택, 삭제
        function allCheckFunc(allCheck) {
            const checkboxes = document.getElementsByName('selectCheck');

            for (let i = 0; i < checkboxes.length; i++) {
                checkboxes[i].checked = allCheck.checked;
            }
        }

        // 상품 단건 삭제
        $(document).on("click", ".delBtn", function() {
            // 확인 메시지
            var confirmed = confirm("해당 상품을 삭제 하시겠습니까?");

            if (confirmed) {
                var form = $(this).closest(".frm2");
                var cartId = form.find("input[name='cart_id']").val();

                $.ajax({
                    type: "POST",
                    url: "cartDelete.do",
                    data: { cart_id: cartId },
                    success: function(data) {
                        alert("해당 상품을 삭제 하였습니다.");
                        // 페이지 새로고침 또는 필요한 동작 수행
                        location.reload();
                    },
                    error: function(error) {
                        alert("해당 상품을 삭제 중 오류가 발생 하였습니다.");
                    }
                });
            }
        });

        // 주문하기 버튼 클릭 시
        $("#order").click(function() {
            var loginChk = '${loginChk}';

            if (loginChk == 'fail') {
                alert("로그인 후 이용 가능합니다.");
                window.location.href = '${path}/member/loginForm.do'; // 리다이렉트
            } else {
                alert("주문 화면으로 이동 합니다.");
                window.location.href = "${path}/cart/orderForm.do";
            }
        });
    });
    </script>
</body>
</html>