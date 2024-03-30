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
    <title>리뷰 목록</title>
    <link rel="stylesheet" href="${path }/resources/css/style.css">
    <link rel="stylesheet" href="${path }/resources/css/normalize.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
   
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    
    <style>
        .review
        {
            margin: 15px;
        }
        
        .review .title
        {
            position: relative;
            margin: 30px 0 0 145px;
        }
        .review .title h2
        {
            font-size: 1.3em;
            margin-bottom: 20px;
        } 
        .review .title h2 i:hover
        {
            color: #222;
        } 
        .review .title p
        {
            position: absolute;
            top: 2%;
            left: 5%;
            font-size: 1.1em;
        }
        .review .title p strong
        {
            color: blue;
        }
        .review h2 i
        {
            margin-right: 5px;
        }       
        .review .btnGroup button
        {
            padding: 5px;
            border-radius: 8px;
            margin: 5px;
        } 
        .review .btnGroup button:nth-child(1)
        {
            margin-left: 145px;
            color: #fff;
            background: #212121;
        }
        .review .btnGroup button:nth-child(1):hover
        {
            color: #777777;
            background: #f1f1f1;
        }
        .review .btnGroup button:nth-child(2)
        {
            color: #777777;
            background: #f1f1f1;
        }
        .review .btnGroup button:nth-child(2):hover
        {
            color: #fff;
            background: #212121;
        }
        .review .btnGroup button:nth-child(3)
        {
            float:right;
            margin-right: 150px;
            border: none;
            background: #ececec;
        }
        .review .cnt
        {
        	margin-left: 150px;
        	font-weight: bold;
        	font-size: 1.2em;
        	margin-top: 15px;
        }
        .review .cnt strong
        {
        	color: #7766FF;
        }
        .review table
        {
            width: 1365px;
            margin: 0 auto;
            border-top: 1px solid black;
            border-bottom: 1px solid black;
            margin-top: 30px;
            margin-bottom: 30px;
        }
        .review table th
        {
            width: 120px;
            height: 120px;  
        }
        .review table th img
        {
            width: 80px;
            height: 80px;
            margin-left: 20px;
        }
        .review table td
        {
            padding-left: 20px;
            display: flex;
            flex-direction: column;         
        }
        .review table td textarea
        {
            height: 60px;
            border: 1px solid rgba(0,0,0,.09); 
            padding: 5px;
        }
        .review table td .commentTextarea button
        {
            border: 1px solid rgba(0,0,0,.09);                  
        }	    
        .review table td span:nth-child(1)
        {
            margin-top: 16px;
            margin-bottom: 5px;
            font-weight: bold;
        }
        .review table td span:nth-child(2)
        {
            margin-bottom: 5px;
            font-size:0.9em;
        }
        .review table td span:nth-child(3)
        {
            margin-bottom: 5px;
            color: #777777;
            font-size: 0.8em;
        }
        .review table td ul
        {
            padding-left: 0;
        }
        .review table td ul li
        {
            float: left;
            font-size: 0.8em;
        }
        .review table td ul li:nth-child(2)
        {
            margin-left: 10px;
        }
    </style>
</head>
<body>
    <%@ include file="../include/header.jsp" %>
    <div class="review">
        <div class="title">
                 <h2><a href="${path }/admin/admin.do"><i class="xi-arrow-left"></i></a>리뷰</h2>
                 <p> (총 <strong>${rTotalCnt }</strong>건)</p>
        </div>
        <div class="btnGroup">
            <button type="button" onclick="location.href='${path}/admin/allNoticeList.do'">NOTICE</button>
            <button type="button" onclick="location.href='${path}/admin/selectReviewList.do'">REVIEW</button>
            <button type="button" id="insert" onclick="checkLogin()">리뷰 작성</button>   
            <input type="hidden" name="mem_id" id="mem_id" value="${sessionScope.loginMap.MEM_ID }">       
        </div>
        <table>
        	<c:choose>
        		<c:when test="${empty selectReviewList }">
        			<div>리뷰가 없습니다.</div>
        		</c:when>
        		<c:otherwise>
        			<c:forEach items="${selectReviewList }" var="list" varStatus="status">
        				<tr>
			                <th><a href="${path }/product/productDetail.do?prod_no=${list.prod_no}"><img src="${path }/${list.prod_image}" alt="상품 이미지"></a></th>
			                <td>
			                	<c:choose>
			                		<c:when test="${list.useyn eq 'Y'}">
			                			<span id="prod_name">${list.prod_name }<strong style="margin-left:10px; color:#7766FF;">(사용)</strong></span>
			                		</c:when>
			                		<c:when test="${list.useyn eq 'N'}">
			                			<span id="prod_name">${list.prod_name }<strong style="margin-left:10px; color:#f22c3d;">(미사용)</strong></span>
			                		</c:when>
			                	</c:choose>
			                    
			                    <span>${list.review_title }</span>
			                    <span>${list.review_content }</span>
			                    <ul>
			                        <li style="font-weight: bold;">${maskedNames[status.index] }</li>
			                        <li><fmt:formatDate pattern="yyyy-MM-dd" value="${list.review_regdate }"/></li>
			                    </ul>
			                    <ul class="commentList">
			                    	<li class="comment">답글 입력</li>
				                    <li class="commentTextarea" style="display:none;">				                        
				                        <textarea name="reply" id="reply_${list.rno }" cols="100" rows="3">${list.reply }</textarea>	
				                        <button type="button" style="margin-left:5px; padding: 5px; background-color: black; color:white;" onclick="insertReplay(${list.rno})">작성</button>			                 
				                    </li>
			                    </ul>
			                </td>
			            </tr>
        			</c:forEach>
        		</c:otherwise>
        	</c:choose>
        </table>
    </div>
    <%@ include file="../include/footer.jsp" %>

    <script>
        // 댓글을 클릭할 때마다 textarea를 표시하거나 숨기는 함수
        document.addEventListener("DOMContentLoaded", function() {
            var commentElements = document.getElementsByClassName("comment");
            for (var i = 0; i < commentElements.length; i++) {
                commentElements[i].addEventListener("click", toggleTextarea);
            }
        });

        function toggleTextarea() {
            var commentTextarea = this.nextElementSibling;
            if (commentTextarea.style.display === "none") {
                commentTextarea.style.display = "block";
            } else {
                commentTextarea.style.display = "none";
            }
        }
          
       	function checkLogin() {
       		// 세션에 로그인 정보가 있는지 확인
            var loginMap = '${loginMap}';
            var mem_id = $("#mem_id").val();
            
            if (loginMap) {
                // 로그인한 경우 리뷰 작성 폼으로 이동
                window.location.href = '${path}/review/insertReviewForm.do?mem_id=' + mem_id;
            } else {
                // 로그인하지 않은 경우 알림창 표시
                alert("로그인 후 이용 가능합니다.");
                window.location.href = '${path}/member/loginForm.do';
            }
       	}
       	
       	// 리뷰 답글 
       	function insertReplay(rno) {
       		var reply = $("#reply_" + rno).val();	//해당 리뷰의 답글
       		
       	    $.ajax({
       	        url: 'insertReply.do',
       	        type: 'POST',
       	        data: { reply: reply, rno: rno },
       	        success: function(response) {       	   
       	        		alert("답글을 성공적으로 작성 했습니다.");
           	            window.location.reload(); // 페이지 새로고침      	            
       	        },
       	        error: function(xhr, status, error) {
       	            alert("답글 작성 중 오류가 발생했습니다.");
	                
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