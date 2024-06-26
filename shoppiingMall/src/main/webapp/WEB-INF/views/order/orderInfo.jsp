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
    <title>주문 상세 내역</title>
    <link rel="stylesheet" href="${path }/resources/css/style.css">
    <link rel="stylesheet" href="${path }/resources/css/normalize.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
   
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    
    <style>
        .point
        {
            border: 1px solid #ececec;
            border-radius: 10px;
            box-shadow: 2px 2px 2px 2px rgba(33, 33, 33, 0.15);
            height: 200px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .point div:nth-child(1)
        {
            width: 40%;
            border-right: 1px solid #ececec;
            text-align: center;
            height: 80%;
            padding-top: 50px;
            position: relative;
        }
        .point div:nth-child(1) i
        {
            float: left;
            font-size: 5.0em;
            position: absolute;
            top: 30%;
            left: 12%;
            color: #0d6efd;
        }
        .point div:nth-child(1) strong
        {
            color: #0d6efd;
        }
        .point div:nth-child(1) h3
        {
            font-size: 20px;
        }
        .point div:nth-child(1) p
        {
            font-size: 15px;
            color: rgba(33, 33, 33, 0.65);
        }
        .point div:nth-child(2)
        {
            width: 30%;
            border-right: 1px solid #ececec;
            text-align: center;
            height: 80%;
            padding-top: 50px;  
        }
        .point div:nth-child(2) h3
        {
            font-size: 15px;
        }
        .point div:nth-child(2) p
        {
            font-size: 20px;
            font-weight: bold;
        }
        .point div:nth-child(3)
        {
            width: 30%;
            text-align: center;
            height: 80%;
            padding-top: 50px;
        }
        .point div:nth-child(3) h3
        {
            font-size: 15px;
        }
        .point div:nth-child(3) p
        {
            font-size: 20px;
            font-weight: bold;
        }
        .content .orderDetail
        {
            margin: 20px 0 20px 0;
        }
        .content .orderDetail .title
        {
            position: relative;   
        }
        .content .orderDetail .title i
        {
            float: left;
            position: absolute;
            top: 25%;
        }
        .content .orderDetail .title h2
        {
            padding: 5px 0 0 25px;
            font-size: 1.3em;
        }
        .content .orderDetail .orderDate
        {
            margin: 20px 0 10px 0;
            padding: 15px 0 0 25px;
            border: 1px solid #ececec;
            border-radius: 10px;
            box-shadow: 2px 2px 2px 2px rgba(33, 33, 33, 0.15);
        }
        .content .orderDetail .orderDate div:nth-child(1)
        {
            display: inline-flex;
        }
        .content .orderDetail .orderDate div:nth-child(1) p
        {
            margin-right: 3px;
            color: rgba(33, 33, 33, 0.65);
        }
        .content .orderDetail .productInfo
        {
            border: 1px solid #ececec;
            border-radius: 10px;
            box-shadow: 2px 2px 2px 2px rgba(33, 33, 33, 0.15);
            margin-top: 30px;
            padding: 15px;
        }
        .content .orderDetail .productInfo table
        {
            border-collapse: collapse;
            width: 100%;
        }
        .content .orderDetail .productInfo table th
        {
            border-bottom: 2px solid #ececec;
            border-right: 2px solid #ececec;
            padding-bottom: 10px;
            color: rgba(33, 33, 33, 0.65);
        }
        .content .orderDetail .productInfo table th:nth-child(1)
        {
            padding-left: 10px;
        }
        .content .orderDetail .productInfo table th:nth-child(2)
        {
            text-align: center;
        }
        .content .orderDetail .productInfo table th:nth-child(3)
        {
            text-align: center;
        }
        .content .orderDetail .productInfo table th:nth-child(4)
        {
            border-right: none;
            text-align: center;
        }
        .content .orderDetail .productInfo table td:nth-child(1) 
        {
            border-right: 2px solid #ececec;
            border-bottom: 2px solid #ececec;
            border-left: 2px solid #ececec;
            position: relative;
            width: 50%;
        }
        .content .orderDetail .productInfo table td:nth-child(1) strong
        {
            position: absolute;
            top: 67%;
        }
        .content .orderDetail .productInfo table td:nth-child(2)
        {
            text-align: center;
            border-right: 2px solid #ececec;
            border-bottom: 2px solid #ececec;
        }
        .content .orderDetail .productInfo table td:nth-child(3)
        {
            text-align: center;
            border-right: 2px solid #ececec;
            border-bottom: 2px solid #ececec;
        }
        .content .orderDetail .productInfo table td:nth-child(4)
        {
            text-align: center;
            border-right: 2px solid #ececec;
            border-bottom: 2px solid #ececec;
        }
        .content .orderDetail .productInfo table td:nth-child(4) button
        {
        	border: 2px solid #ececec;
            border-radius: 8px;
            background-color: #ffffff;
            padding: 3px;
            box-shadow: 1px 1px 3px;
            font-size: 13px;
            font-weight: bold;
        }
        .content .orderDetail .productInfo table td p
        {
            padding-top: 20px;
        }
        .content .orderDetail .productInfo table img
        {
            width: 80px;
            height: 80px;
            float: left;
            margin: 20px 20px 20px 10px;
        }
        .content .orderDetail .userInfo
        {
            border: 2px solid #ececec;
            border-radius: 10px;
            box-shadow: 2px 2px 2px 2px rgba(33, 33, 33, 0.15);
            margin-top: 30px;
            padding: 15px;
        }
        .content .orderDetail .userInfo table
        {
            border-collapse: collapse;
            width: 100%;
        }
        .content .orderDetail .userInfo table th
        {
            color: rgba(33, 33, 33, 0.65);
            padding: 5px;
            width: 113px;
        }
        .content .orderDetail .addrInfo
        {
            border: 2px solid #ececec;
            border-radius: 10px;
            box-shadow: 2px 2px 2px 2px rgba(33, 33, 33, 0.15);
            margin-top: 30px;
            padding: 15px;
        }
        .content .orderDetail .addrInfo table
        {
            border-collapse: collapse;
            width: 100%;
        }
        .content .orderDetail .addrInfo table th
        {
            color: rgba(33, 33, 33, 0.65);
            padding: 5px;
            width: 113px;
        }
        .content .orderDetail .paymentDetail
        {
            border: 2px solid #ececec;
            border-radius: 10px;
            box-shadow: 2px 2px 2px 2px rgba(33, 33, 33, 0.15);
            margin-top: 30px;
            padding: 15px;
        }
        .content .orderDetail .paymentDetail .payment
        {
            padding-bottom: 10px;
            text-align: center;
        }
        .content .orderDetail .paymentDetail .payment strong
        {
            color: #0d6efd;
            margin-left: 100px;
            margin-right: 50px;
            font-size: 1.2em;
        }
        .content .orderDetail .paymentDetail .payment strong:nth-child(1)::after
        {
            content: "-";
            padding-left: 50px;
            color: #222;
        }
        .content .orderDetail .paymentDetail .payment strong:nth-child(2)::after
        {
            content: "=";
            padding-left: 50px;
            color: #222;
        }
        .content .orderDetail .paymentDetail .divGrp
        {
            border-top: 2px solid #ececec;
            display: flex;
        }
        .content .orderDetail .paymentDetail .divGrp .div1
        {
            border-right: 2px solid #ececec;
            width: 33.333%;
            padding: 15px;
        }
        .content .orderDetail .paymentDetail .divGrp .div1 table
        {
            border-collapse: collapse;
            width: 100%;
        }
        .content .orderDetail .paymentDetail .divGrp .div1 table th
        {
            color: rgba(33, 33, 33, 0.65);
            padding: 5px;
        }
        .content .orderDetail .paymentDetail .divGrp .div1 table td{
            float: right;
        }
        .content .orderDetail .paymentDetail .divGrp .div2
        {
            border-right: 2px solid #ececec;
            width: 33.333%;
            padding: 15px;
        }
        .content .orderDetail .paymentDetail .divGrp .div2 table
        {
            border-collapse: collapse;
            width: 100%;
        }
        .content .orderDetail .paymentDetail .divGrp .div2 table th
        {
            color: rgba(33, 33, 33, 0.65);
            padding: 5px;
        }
        .content .orderDetail .paymentDetail .divGrp .div2 table td{
            float: right;
        }
        .content .orderDetail .paymentDetail .divGrp .div3
        {
            width: 33.333%;
            padding: 15px;
        }
        .content .orderDetail .paymentDetail .divGrp .div3 .p1 
        {
            color: rgba(33, 33, 33, 0.65);
            font-size: 13px;
        }
        .content .orderDetail .paymentDetail .divGrp .div3 button
        {
            background: #fff;
            color: #222;
            border: 1px solid rgba(33, 33, 33, 0.65);
            border-radius: 8px;
            margin-bottom: 5px;
            font-weight: bold;
            font-size: 13px;
            padding: 2px;
        }
        .content .orderDetail .paymentDetail .divGrp .div3 .p2
        {
            color: #0d8efd;
            font-size: 15px;
        }
    </style>
</head>
<body>
    <%@ include file ="../include/header.jsp" %>

    <div class="content">
        <div class="point">
            <div>
                <i class="xi-profile"></i>
                <h3><strong>${memberDTO.mem_name }</strong>님 안녕하세요.</h3>
                <p>누적 금액: <fmt:formatNumber pattern="###,###,###" value="${totalPrice}"/>원</p>
            </div>
            <div>
                <h3>POINT</h3>
                <P>0</P>
            </div>
            <div>
                <h3>사용 가능 쿠폰</h3>
                <p>0</p>
            </div>
        </div>
        <div class="orderDetail">
            <div class="title">
                <i class="xi-arrow-left"></i>
                <h2>주문 상세 내역</h2>
            </div>
            <div class="orderDate">
            <div>
            	<p>주문일자</p>
            	<strong><fmt:formatDate pattern="yyyy-MM-dd" value="${firstOrderDate }"/></strong>
	            <p style="margin-left: 20px;">주문번호</p>
            	<c:forEach items="${orderList }" var="list">	                                 
	                    <strong style="color:#0D6EFD">${list.order_no } &nbsp;</strong>
	                    <input type="hidden" id="order_no" name="order_no" value="${list.order_no }">
	                    <input type="hidden" id="order_state" name="order_state" value="${list.order_state }">
	                    <input type="hidden" id="payment_method" name="payment_method" value="${list.payment_method }">	                
                </c:forEach> 
                </div>    
            </div>
            <div class="productInfo">
                <table>
                    <thead>
                        <tr>
                            <th>상품정보</th>
                            <th>배송비</th>
                            <th>진행상태</th>
                            <th>취소</th>                          
                        </tr>
                    </thead>
                    <tbody>                      
                        <c:forEach items="${orderList }" var="list">
	                        <tr>
	                            <td>
	                                <img src="${path }/${list.prod_image}" alt="상품 이미지">
	                                <p>${list.prod_name }</p>
	                                <strong>${list.price }원 / 수량${list.quantity }개</strong>
	                            </td>
	                            <td rowspan="1">${list.deliveryFee }</td>
	                            <c:if test="${list.order_state eq '주문 완료' }"><td><strong  class="order_state">${list.order_state }</strong></td></c:if>
	                            <c:if test="${list.order_state eq '주문 취소' }"><td><strong  class="order_state" style="color:red;">${list.order_state }</strong></td></c:if>
	                            <td><button class="delete" data-order-no="${list.order_no}" data-order-state="${list.order_state}">주문 취소</button></td>	                        
	                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="userInfo">
                <table>               	
                    <tr>
                        <th>주문자</th>
                        <td>${maskedName }<td> <!-- 마스킹 처리-->
                    </tr>
                    <tr>
                        <th>연락처</th>
                        <td>${phoneNumber }</td> <!-- 마스킹 처리-->
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td>${memberDTO.email }</td>
                    </tr>                  
                </table>
            </div>
            <div class="addrInfo">
                <table>
                    <tr>
                        <th>수령인</th>
                        <td>${maskedName }<td> <!-- 마스킹 처리-->
                    </tr>
                    <tr>
                        <th>연락처</th>
                        <td>${phoneNumber }</td> <!-- 마스킹 처리-->
                    </tr>
                    <tr>
                        <th>배송지</th>
                        <td>${address }</td>
                    </tr>
                    <tr>
                        <th>배송메모</th>
                        <td>파손 되지 않게 주의 해주세요~</td>
                    </tr>
                </table>
            </div>
            <div class="paymentDetail">
                <div class="payment">
                	<c:choose>
                		<c:when test="${updateTotalPrice ne null}">
	                		주문금액<strong class="updateTotalPrice"><fmt:formatNumber pattern="###,###,###" value="${updateTotalPrice}"/>원</strong>
				                           할인금액<strong>0원</strong>
				                           총 주문금액 <strong class="updateTotalPrice"><fmt:formatNumber pattern="###,###,###" value="${updateTotalPrice}"/>원</strong>
	                	</c:when>
	                	<c:when test="${resultTotalPrice ne null }">
	                		주문금액<strong class="updateTotalPrice"><fmt:formatNumber pattern="###,###,###" value="${resultTotalPrice}"/>원</strong>
				                           할인금액<strong>0원</strong>
				                           총 주문금액 <strong class="updateTotalPrice"><fmt:formatNumber pattern="###,###,###" value="${resultTotalPrice}"/>원</strong>
	                	</c:when>
	                	<c:otherwise>
	                		주문금액<strong><fmt:formatNumber pattern="###,###,###" value="${totalPrice}"/>원</strong>
				                           할인금액<strong>0원</strong>
				                           총 주문금액 <strong><fmt:formatNumber pattern="###,###,###" value="${totalPrice}"/>원</strong>
	                	</c:otherwise>
                	</c:choose>			                    
                </div>
                <div class="divGrp">
                    <div class="div1">
                        <table>
                            <tr>
                                <th>상품금액</th>
                                <c:choose>
                                	<c:when test="${updateTotalPrice ne null}">
                                		<td class="updateTotalPrice"><fmt:formatNumber pattern="###,###,###" value="${updateTotalPrice}"/>원</td>
                                	</c:when>
                                	<c:when test="${resultTotalPrice ne null}">
								        <td class="resultTotalPrice"><fmt:formatNumber pattern="###,###,###" value="${resultTotalPrice}"/>원</td>
								    </c:when>
                                	<c:otherwise>
                                		<td><fmt:formatNumber pattern="###,###,###" value="${totalPrice}"/>원</td>
                                	</c:otherwise>
                                </c:choose>
                            </tr>
                            <tr>
                                <th>배송비</th>
                                <td>무료</td>
                            </tr>
                        </table>
                    </div>
                    <div class="div2">
                        <table>
                            <tr>
                                <th>회원 할인금액</th>
                                <td>0원</td>
                            </tr>
                            <tr>
                                <th>쿠폰</th>
                                <td>0원</td>
                            </tr>
                            <tr>
                                <th>포인트</th>
                                <td>0원</td>
                            </tr>
                        </table>
                    </div>           
			        <div class="div3">
			            <strong>무통장입금</strong>
			            <c:choose>
			            	<c:when test="${updateTotalPrice ne null }">
			            		<p class="p1 updateTotalPrice">입금 금액: <fmt:formatNumber pattern="###,###,###" value="${updateTotalPrice}"/>원</p>
			            	</c:when>
			            	<c:when test="${resultTotalPrice ne null }">
			            		<p class="p1 resultTotalPrice">입금 금액: <fmt:formatNumber pattern="###,###,###" value="${resultTotalPrice}"/>원</p>
			            	</c:when>
			            	<c:otherwise>
			            		<p class="p1">입금 금액: <fmt:formatNumber pattern="###,###,###" value="${totalPrice}"/>원</p>
			            	</c:otherwise>
			            </c:choose>
			            <button type="button" onclick="location.href='${path}/review/reviewList.do'">리뷰 작성하기</button>
			        </div>
                </div>
            </div>
        </div>
    </div>

    <%@ include file ="../include/footer.jsp" %>
    
    <script>
	    var loginChk = '${loginChk}';
	    
	    if (loginChk == 'fail') {
	        alert("로그인 후 이용 가능합니다.");
	        window.location.href = '${path}/member/loginForm.do'; // 리다이렉트
	    }
	    
	    var totalPrice = '${totalPrice}';	// 가격 * 수량 금액
	    var resultTotalPrice = '${resultTotalPrice}'; //모든 주문이 취소 됐을 경우 최종 금액
	    
	    if (totalPrice == 0) {
	        // 주문 내역이 없는 경우 home으로 리다이렉트
	        alert("주문 내역이 없습니다.");
	        window.location.href = "${path}/"; //   홈 화면으로 이동
	    } else if(resultTotalPrice == 0) {
	    	alert("모든 주문 상품을 취소 하였습니다. \n상품을 주문 해주세요.");
	    	window.location.href = "${path}/"; //   홈 화면으로 이동
	    }
	    
	 	// 주문 취소 
		$(function() {
		    $(".delete").click(function() {
		       	var order_no = $(this).data("order-no");  // 삭제할 주문 번호
		        var order_state = $(this).data("order-state");  // 주문 상태 
		        
		        if (order_state === '주문 취소') {
		            alert("이미 주문이 취소되었습니다.");
		            return; 
		        } else {
		            $.ajax({
		                url: "deleteOrder.do",
		                type: "POST",
		                data: {
		                    order_no: order_no
		                    /* order_state: order_state */
		                }, 
		                success: function(data) {
		                    alert("주문을 성공적으로 취소 했습니다.");
		                    // 클릭한 버튼이 속한 행(tr) 내의 .order_state 텍스트 변경
		                    $(this).closest("tr").find(".order_state").text("주문 취소"); 
		                    $(this).closest("tr").find(".order_state").css("color", "red");
		                    		                    
		                }.bind(this), 
		                error: function(xhr, status, error) {
		                	alert("주문을 성공적으로 취소 했습니다.");
		                    $(this).closest("tr").find(".order_state").text("주문 취소");
		                    $(this).closest("tr").find(".order_state").css("color", "red");		                   
		                    
		                    if (xhr.status === 404) {
			                    alert("요청하신 페이지를 찾을 수 없습니다.");
			                    window.location.href = '${path}/error/errorPage.do';
			                } else if (xhr.status === 500) {
			                    alert("서버 내부 오류가 발생했습니다. 관리자에게 문의해주세요.");
			                }
		                }.bind(this)
		            });
		        }       
		    });
		});

    </script>
</body>
</html>