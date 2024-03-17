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
    <title>아이템 전체 목록</title>
    <link rel="stylesheet" href="${path }/resources/css/normalize.css">
    <link rel="stylesheet" href="${path }/resources/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    
    <style>
        /* .items
        {
            
        } */
        .items .backImg
        {
            background: url(${path}/resources/img/stars-2616537_1920.jpg);
            width: 100%;
            height: 500px;
            opacity: 0.8;
            position: relative;
        }
        .items .backImg strong
        {
            position: absolute;
            color: #fff;
            font-size: 1.9em;
            top: 30%;
            left: 5%;
        }
        .items .backImg p
        {
            position: absolute;
            color: #fff;
            top: 50%;
            left: 5%;
        }
        .items h2
        {
            font-size: 4.5em;
            font-weight: bold;
            color: #000;
            margin: 50px 0 50px 80px;
        }
        .items .item
        {
            margin: 0 auto;
            width: 1350px;
            text-align: center;
            margin-bottom: 50px;
        }
        .items .item button
        {
            border-radius: 8px;
            margin-left: 20px;
            background: #f1f1f1;
            color: #777777;
            border: 1px solid #777777;
            padding: 5px;    
            margin-bottom: 50px;
            box-shadow: 5px 5px 5px  gray;
            font-weight: bold;
        }
        .items .item button:nth-child(1)
        {
            margin-left: 0;
        }
        .items .item .itemCard 
        {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            grid-gap: 50px;

        }
        .items .item .itemCard .card
        {
           border-radius: 10px;
           box-shadow: 5px 5px 5px  gray;
        }
        .items .item .itemCard .card:hover
        {
            -webkit-transform: scale(1);
             transform: scale(1);
        }
        .items .item .itemCard .card img
        {
            width: 100%;
            height: 375px;
            border-radius: 10px;
        }
        .items .item .itemCard .card .productName
        {
            text-align: left;
            padding-left: 8px;
            margin-top: 10px;
        }
        .items .item .itemCard .card .productName h4
        {
            font-size: 16px;
            font-weight: bold;
        }
        .items .item .itemCard .card .price
        {
            text-align: left;
            padding-left: 8px;
        }
        .items .item .itemCard .card .stars
        {
            text-align: left;
            padding-left: 8px;
        }
        .items .item .itemCard .card .stars i
        {
            color: #fecb00;  
        }
    </style>
</head>
<body>
    <%@ include file ="../include/header.jsp" %>

    <div class="items">
        <div class="backImg">
            <strong>READY TO WEAR, ESSENTIAL</strong>    
            <P>
                우리는 모두 까다로워져야 할 것입니다. <br>
                옷걸이 위에서 당신의 어깨로 옮겨지는 일들은 곧 <br>
                '입는다' 라는 행위임과 동시에 누군가 에게는 또 나른 '나'로 기억되는 역할을 하기도 합니다.
            </P>
        </div>
        <h2>READY TO WEAR</h2>
        <div class="item">
            <div class="btnGroup">
                <!-- <button type="button" id="all" onclick="showItems('70')">ALL</button> -->
                <button type="button" id="bottom" onclick="showItems('10')">바지</button>
                <button type="button" id="coat" onclick="showItems('20')">코트</button>
                <button type="button" id="zipup" onclick="showItems('30')">후드집업</button>
                <button type="button" id="hood" onclick="showItems('40')">후드티</button>
                <button type="button" id="mantoman" onclick="showItems('50')">맨투맨</button>
                <button type="button" id="outer" onclick="showItems('60')">아우터</button>              
            </div>
            <c:choose>
            	<c:when test="${empty itemList}">
            		<p>등록된 상품이 없습니다.</p>
            	</c:when>            	
            	<c:otherwise>
            		<div class="itemCard">
	            		<c:forEach items="${itemList}" var="list">   
			                <div class="card" onclick="location.href='${path }/product/productDetail.do?prod_no=${list.prod_no }'">
			                    <div class="imgBx">
			                        <img src="${path }/${list.prod_image}" alt="상품 이미지">
			                    </div>
			                    <div class="productName">
			                        <h4>${list.prod_name}</h4>
			                    </div>
			                    <div class="price">
			                        <p>${list.price}원</p>
			                    </div>
			                    <div class="stars">
			                        <i class="xi-star"></i>
			                        <i class="xi-star"></i>
			                        <i class="xi-star"></i>
			                        <i class="xi-star"></i>
			                        <i class="xi-star"></i>
			                    </div>
			                </div>                 		            
	            		</c:forEach>
	            	</div>
            </c:otherwise>
            </c:choose>            
        </div>
    </div>

    <%@ include file ="../include/footer.jsp" %>
    
    <script>	    
	    function showItems(cate_no) {
	        // 현재 스크롤 위치 저장
	        var scrollTop = window.pageYOffset || document.documentElement.scrollTop;
	        
	        // cate_no 값을 itemList.do 엔드포인트로 전달하여 페이지를 분기
	        window.location.href = "/myapp/product/itemList.do?cate_no=" + cate_no;
	        
	        // 페이지 이동 후 스크롤 위치를 다시 설정
	        window.addEventListener('load', function() {
	            window.scrollTo(0, scrollTop);
	        });
	    }
	</script>
</body>
</html>