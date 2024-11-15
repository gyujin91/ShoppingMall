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
    <title>메인 페이지</title>
    <link rel="stylesheet" href="${path }/resources/css/normalize.css">
    <link rel="stylesheet" href="${path }/resources/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
</head>
<body>
   <%@ include file="./include/header.jsp" %>

    <div class="contentWrap">
        <div class="bg" id="bg"></div>
        <div class="content">
        <input type="hidden" name="cate_no" value="10">
            <div class="container">
                <h2>READY TO WEAR</h2>
                <p>
                   	 새로움이 가져다주는 설렘은 어디에나 존재합니다.
                    <br>트렌디한 뉴 아이템과 스타일링으로 새로운 취향을 찾아보세요.
                </p>
                <button><a href="${path}/product/itemList.do?cate_no=10">SHOP ALL ITEMS</a></button>
                
            </div>
            
	            <c:choose>
	            	<c:when test="${empty productList}">
	            		<div class="empty">
	            			<p style="font-size: 2.0em; text-align: center; background: #ececec; height: 150px; padding-top: 50px">등록된 상품이 없습니다.</p>
	            		</div>	
	            	</c:when>
	            	
	            	<c:otherwise>
	            	<div class="itemCard">
	            		<c:forEach items="${productList }" var="list">
	            			<div class="card"  onclick="location.href='${path }/product/productDetail.do?prod_no=${list.prod_no }'">
			                    <div class="imgBx">
			                        <img src="${path }/${list.prod_image}" alt="상품 이미지">
			                    </div>
			                    <div class="productName">
			                        <h4>${list.prod_name }</h4>
			                    </div>
			                    <div class="price">	                        
			                        <p><fmt:formatNumber pattern="###,###,###" value="${list.price}"/></p>
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

            <div class="container2">
                <h2>LEGACY</h2>
                <p>
                   	 존재 자체로 가치 있는 것들은 어디서든 빛나곤 합니다.
                    <br>심도 있는 과정을 거쳐 셀렉한 빈티지 아이템들을 만나보세요.
                </p>
                <button type="button"><a href="${path}/product/itemList.do?cate_no=10">SHOP ALL ITEMS</a></button>
            </div> 												

            <div class="bg2" id="bg2">
                <span>
                    <h2>EVERYONE NEEDS<br>TO BE PICKY</h2>
                    <p>우리는 모두 까다로워질 필요가 있습니다.
                        <br>대부 익스프레스에서 개인의 취향을 발전 시켜 보세요.
                    </p>
                    <button type="button"><a href="${path }/member/loginForm.do">SIGN UP NOW</a></button>
                </span>
            </div>
        </div>
    </div>
	
    <%@ include file="./include/footer.jsp" %>
    <script>
        const bg = document.getElementById('bg');
        window.addEventListener('scroll', function() {
            bg.style.backgroundSize = 160 - +window.pageYOffset / 12 + '%';
            bg.style.opacity = 1 - +window.pageYOffset / 700 + '';
        })
    </script>
    
   
   
   

</body>
</html>