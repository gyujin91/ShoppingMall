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
    <title>헤더</title>
    <link rel="stylesheet" href="${path }/resources/css/normalize.css">
    <link rel="stylesheet" href="${path }/resources/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
</head>
<body>
    <header>
        <div class="header">
            <div class="headerWrap">
                <div class="banner">
                    <section>
                        <h2>DAEBU EXPRESS</h2>
                        <div class="star star1"></div>
                        <div class="star star2"></div>
                        <div class="star star3"></div>
                        <div class="star star4"></div>
                        <div class="star star5"></div>
                        <div class="star star6"></div>
                        <div class="star star7"></div>
                        <div class="star star8"></div>
                    </section>
                </div>
                <div class="headerContent">
                    <div class="left">
                        <a href="${path }/">
                            <h2>DAEBU</h2>
                        </a>
                    </div>
                    <div class="center">
                        <ul id="categoryList">
                            <li><a href="#" data-category="50">맨투맨</a></li>
                            <li><a href="#" data-category="40">후드티</a></li>
                            <li><a href="#" data-category="30">후드집업</a></li>
                            <li><a href="#" data-category="60">아우터</a></li>                            
                            <li><a href="#" data-category="20">코트</a></li> 
                            <li><a href="#" data-category="10">바지</a></li>                          
                        </ul>
                    </div>
                    <div class="right">
                    <!-- 로그인 전 -->
                    <c:if test="${empty loginMap}">
                        <ul>
                        	<li><a href="${path }/notice/noticeList.do">공지 및 리뷰</a></li>
                            <li><a href="${path }/member/loginForm.do">로그인</a></li>
                            <li><a href="${path }/member/joinForm.do">회원가입</a></li>
                        </ul>
                     </c:if>
                     <!--  일반회원 로그인 -->
                     <c:if test="${!empty loginMap && loginMap.CODE == '2'}">
                        <ul>
                        	<li><p>${loginMap.MEM_NAME }  (${loginMap.CK})님 환영합니다.</p>      
                            <li><a href="${path }/member/myPage.do">마이페이지</a></li>
                            <li><a href="${path }/notice/noticeList.do">공지 및 리뷰</a></li>
                            <li><a href="${path }/order/orderInfo.do?mem_id=${mem_id}">주문내역</a></li>
                            <li><a href="${path }/cart/cart.do?mem_id=${mem_id}">장바구니</a></li>
                            <li><a href="${path }/member/logOut.do">로그아웃</a></li>
                        </ul>
                     </c:if>
                     <!-- 관리자 로그인 -->
                     <c:if test="${!empty loginMap && loginMap.CODE == '1'}">
                        <ul>  
                        	<li><p>${loginMap.MEM_NAME }(${loginMap.CK})님 환영합니다.</p>                        
                            <li><a href="${path }/admin/admin.do">관리자</a></li>
                            <li><a href="${path }/admin/allNoticeList.do">공지 및 리뷰관리</a></li>
                            <li><a href="${path }/admin/productList.do">상품관리</a></li>
                            <li><a href="${path }/admin/orderList.do">주문관리</a></li>        
                            <li><a href="${path }/member/logOut.do">로그아웃</a></li>               
                        </ul>
                     </c:if>
                    </div>
                </div>
            </div>
        </div>
    </header>
      
   	<script>
		document.addEventListener("DOMContentLoaded", function() {
		    var categoryLinks = document.querySelectorAll("#categoryList a");
		
		    categoryLinks.forEach(function(link) {
		        link.addEventListener("click", function(event) {
		            event.preventDefault();
		            var categoryNumber = link.getAttribute("data-category");
		            window.location.href = "/myapp/product/itemList.do?cate_no=" + categoryNumber;
		        });
		    });
		});
	</script>

</body>
</html>