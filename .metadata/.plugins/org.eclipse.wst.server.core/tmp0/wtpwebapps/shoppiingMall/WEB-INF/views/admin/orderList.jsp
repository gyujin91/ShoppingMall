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
    <title>주문 목록</title>
    <link rel="stylesheet" href="${path }/resources/css/style.css">
    <link rel="stylesheet" href="${path }/resources/css/normalize.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
   
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
       
    <style>
        .orderList
        {
            margin: 0 auto;
            display: flex;
            margin: 15px;
            padding: 30px 0 30px 0;
        }
        .orderList .list
        {
            margin: 0 30px 0 30px;
            width: 100%;
        }
        .orderList .list .title
        {
            position: relative;
        }
        .orderList .list .title h2
        {
            font-size: 1.3em;
            margin-bottom: 20px;
        } 
        .orderList .list .title h2 i:hover
        {
            color: #222;
        } 
        .orderList .list .title p
        {
            position: absolute;
            top: 2%;
            left: 8%;
            font-size: 1.1em;
        }
        .orderList .list .title p strong
        {
            color: blue;
        }
        .orderList .list h2 i
        {
            margin-right: 5px;
        }   
        .orderList .list table
        {
            border-collapse: collapse;
            width: 100%;
            border: 2px solid #ececec;
            box-shadow: 2px 2px 2px 2px rgba(33, 33, 33, 0.15);
        }
        .orderList .list table th
        {
            border-bottom: 1px solid #ececec;
            text-align: center;
            border-right: 1px solid #ececec;
            background-color: rgba(33, 33, 33, 0.35);
        }
        .orderList .list table td
        {
            border-bottom: 1px solid #ececec;
            border-right: 1px solid #ececec;
            text-align: center;
        }
        .orderList .list table tr:nth-child(2n) {
            background-color: rgba(33, 33, 33, 0.15);
        }
        .orderList .list table td a
        {
            text-decoration: underline;
            color: blue;
        }
        .orderList .list table td a:hover
        {
            color: black;
        }
        .orderList .list table td img
        {
            width: 30px;
            height: 30px;
            padding: 5px;
        }
    </style>
</head>
<body>
   	<%@ include file ="../include/header.jsp" %>
    <div class="orderList">
        <div class="list">
            <div class="title">
                 <h2><a href="${path }/admin/admin.do"><i class="xi-arrow-left"></i></a>주문 목록</h2>
                 <p> (총 <strong>${oTotalCnt }</strong>건)</p>
            </div>
            <table>
                <thead>	               
                    <tr>
                        <th>주문번호</th>
                        <th>주문자</th>
                        <th>주문상태</th>
                        <th>결제방법</th>
                        <th>결제상태</th>
                        <th>상품번호</th>
                        <th>상품이미지</th>
                        <th>상품명</th>
                        <th>배송비</th>
                        <th>결제일자</th>
                        <th>결제취소일자</th>
                    </tr>	          
                </thead>  
                 <tbody>
                 	<c:choose>
                 		<c:when test="${empty allOrderList }">
                 			<div>현재 주문이 없습니다.</div>
                 		</c:when>
                 		<c:otherwise>
                 			<c:forEach items="${allOrderList }" var="list">
                 				<tr>
		                            <td style="color:blue">${list.order_no }</td>
		                            <td>${list.mem_name }</td>                          		
                            		<!-- 주문 상태 -->
		                            <c:choose>
		                            	<c:when test="${list.order_state eq '주문 완료' }">
		                            		<td>${list.order_state }</td>
		                            	</c:when>
		                            	<c:otherwise>
		                            		<td style="color: red;">${list.order_state }</td>
		                            	</c:otherwise>
		                            </c:choose>
		                            <!-- 주문 상태 -->
		                            <!-- 결제 방법 -->
		                            <c:choose>
		                            	<c:when test="${list.payment_method eq '무통장 입금' }">
		                            		<td>${list.payment_method }</td>
		                            	</c:when>
		                            	<c:otherwise>
		                            		<td style="color: blue;">${list.payment_method }</td>
		                            	</c:otherwise>
		                            </c:choose>
		                            <!-- 결제 방법 -->
		                            
		                            <!-- 결제 상태 -->
		                            <c:choose>
		                            	<c:when test="${list.payment_state eq '결제 완료' }">
		                            		<td>${list.payment_state }</td>
		                            	</c:when>
		                            	<c:when test="${list.payment_state eq '결제 취소' }">
		                            		<td style="color: red;">${list.payment_state }</td>
		                            	</c:when>
		                            	<c:when test="${list.payment_state eq '입금 완료' }">
		                            		<td>${list.payment_state }</td>
		                            	</c:when>
		                            	<c:when test="${list.payment_state eq '환불 예정' }">
		                            		<td style="color: red;">${list.payment_state }</td>
		                            	</c:when>
		                            </c:choose>
                            		<!-- 결제 상태 -->
		                            <td>${list.prod_no }</td>
		                            <td><img src="${path }/${list.prod_image}" alt="상품 이미지"></td>
		                            <td>${list.prod_name }</td>
		                            <td>${list.deliveryFee }</td>
		                            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${list.order_date }"/></td>
		                            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${list.del_date }"/></td>
		                        </tr>
                 			</c:forEach>
                 		</c:otherwise>
                 	</c:choose>
                 </tbody>
            </table>
        </div>
    </div>
    <%@ include file ="../include/footer.jsp" %>
    
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
		} if(errorMessage == "error") {
			alert("서버 내부에 오류가 발생 했습니다.");
			window.location.href = "${path}/error/errorPage.do";
		} 
    </script>
</body>
</html>