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
    <title>제품 상세보기</title>
    <link rel="stylesheet" href="${path }/resources/css/normalize.css">
    <link rel="stylesheet" href="${path }/resources/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    
    <style>
    .itetmDetail
    {
        display: flex;
        justify-content: center;
        margin: 0 auto;
        width: 1200px;
        height: 600px;
        margin-top: 80px;
        margin-bottom: 80px;
    }
    .itetmDetail .imgBox 
    {
        width: 560px;
    }
    .itetmDetail .imgBox img
    {
        width: 100%;
        height: 100%;
    }
    .itetmDetail .detail
    {
        width: 50%;
        height: 100%;
        padding-left: 100px;
    }
    .itetmDetail .detail h3
    {
        text-align: center;
        border-bottom: 1px solid rgba(33, 33, 33, 0.15);
        padding-bottom: 15px;
        font-size: 1.3em;
    }
    .itetmDetail .detail .info
    {
        width: 100%;
        height: 360px;
    }
    .itetmDetail .detail .info table
    {
        border-bottom: 1px solid rgba(33, 33, 33, 0.15);
        width: 100%;
        border-spacing: 50px;
        border-collapse: separate;
       
    }
    .itetmDetail .detail .info table .sizeSelect
    {
        width: 150px;
        border: 1px solid #c4c4c4;
        box-sizing:  border-box;
        border-radius: 10px;
        text-align: center;
    }
    .itetmDetail .detail .info table .sizeSelect:focus
    {
        border: 1px solid #9b51e0;
        box-sizing: border-box;
        border-radius: 10px;
        outline: 3px solid #f834ff;
    }
    .itetmDetail .detail .info table .quantitySelect
    {
        width: 100px;
        border: 1px solid #c4c4c4;
        box-sizing:  border-box;
        border-radius: 10px;
        text-align: center;
    }
    .itetmDetail .detail .info table .quantitySelect:focus
    {
        border: 1px solid #9b51e0;
        box-sizing: border-box;
        border-radius: 10px;
        outline: 3px solid #f834ff;
    }
    .itetmDetail .detail .total
    {
        border-bottom: 1px solid rgba(33, 33, 33, 0.15);
        padding-top: 30px;
        padding-bottom: 30px;
        text-align: right;
        margin-top: 60px;
    }
    .itetmDetail .detail .buy
    {
        margin-top: 40px;
    }
    .itetmDetail .detail .btn_group
    {
        text-align: right;
    }
    .itetmDetail .detail .btn_group button
    {
        margin-left: 5px;
    }
    .itetmDetail .detail .btn_group .xicon
    {
        width: 60px;
        height: 56px;
        background-color: #fff;
        border: 1px solid rgba(33, 33, 33, 0.15);
    }
    .itetmDetail .detail .btn_group .buy
    {
        width: 280px;
        height: 56px;
        background: #2f2f2f;
        color: #fff;
        font-weight: bold;
    }
    
    .total strong span
    {
        margin-left: 10px;
    }
    .total .size {
        margin-right: 50px;
    }
</style>
</head>



<body>
   <%@ include file="../include/header.jsp" %>
   	<form id="frm" name="frm">
   		 <div class="itetmDetail"> 
	        <div class="imgBox">
	            <img src="${path }/${dto.prod_image}" alt="상품 이미지">
	        </div>
	        <div class="detail">
	            <h3>${dto.prod_name }</h3>
	            <div class="info">
	                <table>          
	                    <tr>
	                        <th>브랜드</th>
	                        <td>${dto.brand }</td>
	                    </tr>
	                    <tr>
	                        <th>판매가</th>
	                        <td><fmt:formatNumber pattern="###,###,###" value="${dto.price}"/></td>
	                    </tr>
	                    <tr>
	                        <th>사이즈</th>
	                        <td>
	                            <select name="sizeSelect" id="sizeSelect" class="sizeSelect" onchange="updateSize()">
	                                <option value="option">옵션선택</option>
	                                <option value="S">S</option>
	                                <option value="M">M</option>
	                                <option value="L">L</option>
	                            </select>
	                        </td>
	                    </tr>
	                    <tr>
	                        <th>수량</th>
	                        <td>
	                            <select name="quantitySelect" id="quantitySelect" class="quantitySelect" onchange="updateValue()">
	                                <option value="1">1개</option>
	                                <option value="2">2개</option>
	                                <option value="3">3개</option>
	                                <option value="4">4개</option>
	                                <option value="5">5개</option>
	                                <option value="6">6개</option>
	                                <option value="7">7개</option>
	                                <option value="8">8개</option>
	                                <option value="9">9개</option>
	                                <option value="10">10개</option>
	                              </select>
	                        </td>
	                    </tr>
	                    <tr>
	                        <th>배송비</th>
	                        <td>${dto.deliveryFee }</td>
	                    </tr>
	                </table>
	            </div>
	            <div class="total">
	            	<strong class="size" id="sizeText">SIZE :</strong>
	                <strong>TOTAL :<span id="totalValue"></span>원 (<span id="quantityValue"></span>)</strong>
	              </div>
	            <div class="btn_group">
	                <button type="button" class="xicon" id="heart"><i class="xi-heart-o"></i></button>
	                <button type="button" class="xicon" id="cart"><i class="xi-cart-o"></i></button>
	                <button type="button" class="buy" id="buy">바로구매</button>
	            </div>
	        </div>
    	</div>
    	
    	<input type="hidden" name="loginMap" value="${sessionScope.loginMap }">
    	<input type="hidden" name="loginMap" value="${sessionScope.loginMap.MEM_ID }">
    	<input type="hidden" name="prod_no" value="${dto.prod_no }">
    	<input type="hidden" name="prod_name" value="${dto.prod_name }">
    	<input type="hidden" name="prod_image" value="${dto.prod_image }">
    	<input type="hidden" name="price" value="${dto.price }">
    	<input type="hidden" name="quantity" id="quantity" value="">
		<input type="hidden" name="size" id="size" value="">
    	
	</form>
   
    <%@ include file="../include/footer.jsp" %>
 	
 	<script>
    // select 요소 선택
 	var quantitySelect = document.getElementById("quantitySelect");

 	// total 요소 선택
 	var totalValue = document.getElementById("totalValue");
 	var quantityValue = document.getElementById("quantityValue");

 	// 가격 정보 설정
 	var pricePerItem = '${dto.price}'; // 아이템 1개당 가격

 	// 수량 선택 이벤트 리스너 등록
 	quantitySelect.addEventListener("change", updateValue);

 	// 수량 선택에 따라 수량 및 가격 업데이트
 	function updateValue() {
 	  var selectedQuantity = quantitySelect.value;
 	  quantityValue.textContent = selectedQuantity + "개";
 	  
 	  var totalPrice = pricePerItem * selectedQuantity;
 	  totalValue.textContent = totalPrice.toLocaleString();
 	}

 	
 	function updateSize() {
        var selectElement = document.getElementById("sizeSelect");
        var sizeTextElement = document.getElementById("sizeText");
        var selectedValue = selectElement.value;

        sizeTextElement.textContent = "SIZE: " + selectedValue;
    }
 	// 초기 실행
 	updateValue();
 	// ------------------------------------------------------------ //	

    var loginMap = '${sessionScope.loginMap}';
    
    if(loginMap != null && loginMap != '') {
    	$("#cart").click(function() {
    		var selectedQuantity = $("#quantitySelect").val();
    	    var selectedSize = $("#sizeSelect").val();
    	    
    	    if(selectedSize === 'option') {
    	    	alert("옵션을 선택 해주세요.");
    	    	return;
    	    }
    	    
    		 // 폼 데이터 설정
    	    $("#quantity").val(selectedQuantity);
    	    $("#size").val(selectedSize);
            
       		alert("장바구니에 상품을 담았습니다.");
    	    $("#frm").attr("action", "/myapp/cart/addToCart.do").attr("method", "post").submit();
       	});	
    	
    	$(".buy").click(function() {
            var selectedQuantity = $("#quantitySelect").val();
            var selectedSize = $("#sizeSelect").val();

            if(selectedSize === 'option') {
                alert("옵션을 선택 해주세요.");
                return;
            }

            // 폼 데이터 설정
            $("#quantity").val(selectedQuantity);
            $("#size").val(selectedSize);

            // 주문 화면으로 데이터 전송 및 리다이렉트
            $.ajax({
                url: '/myapp/cart/addToCart.do',
                type: 'POST',
                data: $("#frm").serialize(), // 폼 데이터 직렬화하여 전송
                success: function(response) {
                    // 장바구니에 상품을 추가한 후 주문 페이지로 리다이렉트
                    alert("주문 페이지로 이동합니다.");
                    window.location.href = '${path}/order/orderForm.do';
                },
                error: function(xhr, status, error) {
                    alert("주문 페이졸 이동 중 에러가 발생 했습니다. \n다시 시도해주세요.");
                    console.error(xhr.responseText);
                }
            });
        });
    } else {
    	$("#cart").click(function() {
    		alert("로그인 후 이용 가능합니다.");
            window.location.href = '${path}/member/loginForm.do'; // 리다이렉트 
    	});
    }
    
    
 
 	
	</script>
</body>
</html>