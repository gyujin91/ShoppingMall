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
    <title>error</title>
    <link rel="stylesheet" href="${path }/resources/css/normalize.css">
    <link rel="stylesheet" href="${path }/resources/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <style>
        .errorPage
        {
            height: 80vh;           
            
        }
        .errorPage .img
        {
           text-align: center;                  
        }
        .errorPage .img img
        {
           width: 50%;
           height: 300px;
           margin-top: 100px;
        }
        .errorPage .link    
        {
            text-align: center;
            margin: 20px;
        }
        .errorPage .link button
        {
            background-color: white;
            border: 2px solid red;
            border-radius: 8px;
            padding: 5px;
            font-size: 12px;          
        }
        .errorPage .link button:nth-child(1) {
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <%@ include file="../include/header.jsp"%>
    <div class="errorPage">
        <div class="img">
            <img src="${path }/resources/img/error-2129569_1280.jpg" alt="">
        </div>     
        <div class="link">
            <button type="button"  onclick="goBack()">이전 으로</button>
            <button type="button"  onclick="goHome()">메인 으로</button>
        </div>
    </div>
    <%@ include file="../include/footer.jsp"%>
    
    <script type="text/javascript">
	    function goBack() {
	        window.history.back(); // 브라우저 이전 페이지로 이동
	    }
	    
	    function goHome() {
	        window.location.href="${path}/"; // 메인 으로 리다이렉트
	    }
    </script>
</body>
</html>
