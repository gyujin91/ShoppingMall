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
    <title>상품 목록</title>
    <link rel="stylesheet" href="${path }/resources/css/normalize.css">
    <link rel="stylesheet" href="${path }/resources/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    
    <style>
        .productList
        {
            margin: 0 auto;
            display: flex;
            margin: 15px;
            padding: 30px 0 30px 0;
        }
        .productList .list
        {
            margin: 0 30px 0 30px;
            width: 100%;
        }
        .productList .list .title
        {
            position: relative;
        }
        .productList .list .title h2
        {
            font-size: 1.3em;
            margin-bottom: 20px;
        } 
        .productList .list .title h2 i:hover
        {
            color: #222;
        } 
        .productList .list .title p
        {
            position: absolute;
            top: 2%;
            left: 8%;
            font-size: 1.1em;
        }
        .productList .list .title p strong
        {
            color: blue;
        }
        .productList .list .title .p2
        {
           font-size: 1.1em; 
           border: 1px solid #ececec;
           background-color: #ececec;
           border-radius: 8%;
           margin-bottom: 5px;
        }
        .productList .list .title .p3
        {
           font-size: 1.1em; 
           border: 1px solid #ececec;
           background-color: #A08680;
           border-radius: 8%;
           margin-bottom: 5px;
           margin-left: 10px;    
           color:white;       
        }          
        .productList .list .title .p2 a:hover
        {
            color: black;
        }
        .productList .list h2 i
        {
            margin-right: 5px;
        }   
        .productList .list table
        {
            border-collapse: collapse;
            width: 100%;
            border: 2px solid #ececec;
            box-shadow: 2px 2px 2px 2px rgba(33, 33, 33, 0.15);
        }
        .productList .list table th
        {
            border-bottom: 1px solid #ececec;
            text-align: center;
            border-right: 1px solid #ececec;
            background-color: rgba(33, 33, 33, 0.35);
        }
        .productList .list table td
        {
            border-bottom: 1px solid #ececec;
            border-right: 1px solid #ececec;
            text-align: center;
        }
        .productList .list table tr:nth-child(2n) {
            background-color: rgba(33, 33, 33, 0.15);
        }
        .productList .list table td a
        {
            text-decoration: underline;
            color: blue;
        }
        .productList .list table td a:hover
        {
            color: black;
        }
        .productList .list table td img
        {
            width: 50px;
            height: 50px;
            padding: 5px;
        }
    </style>
</head>
<body>
    <%@ include file="../include/header.jsp" %>
    <div class="productList">
        <div class="list">
            <div class="title">
                 <h2><a href="${path }/admin/admin.do"><i class="xi-arrow-left"></i></a>상품 목록</h2>
                 <p> (총 <strong>${totalCnt }</strong>건)</p>
                 <span class="p2" style="display: inline-block;"><a href="${path }/admin/fileUpload.do">상품 등록</a></span>
            </div>
            <table>
                <thead>
                    <tr>
                        <th>상품 번호</th>
                        <th>상품명</th>
                        <th>종류</th>
                        <th>가격</th>
                        <th>상품 이미지</th>
                        <th>상품 설명</th>
                        <th>카테고리번호</th>
                        <th>사용여부</th>
                        <th>등록일</th>
                        <th>삭제일</th>                   
                    </tr>
                </thead>
                    <tbody>
                        <c:choose>
                        	<c:when test="${empty allList }">
                        		<p>등록 된 상품이 없습니다.</p>
                        	</c:when>
                        	<c:otherwise>
                        		<c:forEach items="${allList }" var="list">
                        			<tr onclick="location.href='${path}/admin/productInfo.do?prod_no=${list.prod_no }'">
                        				<td><a href="${path }/admin/productInfo.do?prod_no=${list.prod_no}" style="text-decoration: none">${list.prod_no }</a></td>
                        				<td>${list.prod_name }</td>
                        				<!-- 상품 종류 -->
                        				<c:choose>
                        					<c:when test="${list.prod_kind eq 'outer'}">
                        						<td>아우터</td>
                        					</c:when>                   		
                        					<c:when test="${list.prod_kind eq 'bottom'}">
                        						<td>바지</td>
                        					</c:when>              		
                        					<c:when test="${list.prod_kind eq 'coat'}">
                        						<td>코트</td>
                        					</c:when>                     				
                        					<c:when test="${list.prod_kind eq 'hood'}">
                        						<td>후드</td>
                        					</c:when>                 			
                        					<c:when test="${list.prod_kind eq 'zipup'}">
                        						<td>집업</td>
                        					</c:when>                  				
                        					<c:when test="${list.prod_kind eq 'mantoman'}">
                        						<td>맨투맨</td>
                        					</c:when>
                        				</c:choose>
                        				<!-- 상품 종류 -->                    			
                        				<td><fmt:formatNumber pattern="###,###,###" value="${list.price}"/></td>  
                        				<%-- <td><img src="${path }/${list.prod_image}" alt="상품 이미지"></td> --%>
                        				<td><img src="${path}/${list.prod_image}?timestamp=${System.currentTimeMillis()}" alt="상품 이미지"></td>
                        				
                        				<td>${list.prod_content }</td>
                        				<td>${list.cate_no }</td>
                        				<!-- 사용 여부 -->
                        				<c:choose>
                        					<c:when test="${list.useyn eq 'Y' }">
                        						<td style="color: blue">${list.useyn }</td>
                        					</c:when>
                        					<c:otherwise>
                        						<td style="color: red">${list.useyn }</td>
                        					</c:otherwise>
                        				</c:choose>
		                        		<!-- 사용 여부 -->		
                        				<td>${list.regdate }</td>
                        				<td>${list.deldate }</td>
                        			</tr>
                        		</c:forEach>
                        	</c:otherwise>
                        </c:choose>                       
                    </tbody>
            </table>
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
		} else if(session == "exp") {
			alert("세션이 만료 되었습니다. 다시 로그인 바랍니다.");
			window.location.href = "${path}/member/loginForm.do";
		} else if(errorMessage == "error") {
			alert("서버 내부에 오류가 발생 했습니다.");
			window.location.href = "${path}/error/errorPage.do";
		}
    </script>
</body>
</html>