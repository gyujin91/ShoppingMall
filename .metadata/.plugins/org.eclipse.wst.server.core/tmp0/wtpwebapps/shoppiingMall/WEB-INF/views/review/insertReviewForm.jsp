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
    <title>리뷰 작성</title>
    <link rel="stylesheet" href="${path }/resources/css/style.css">
    <link rel="stylesheet" href="${path }/resources/css/normalize.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
   
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    
    <style>
        .insertReview
        {
            width: 900px;
            margin: auto;
            background-color: #ececec;
            padding: 20px;
        }
        .insertReview h2
        {
            text-align: center;
            font-weight: bold;
            font-size: 1.6em;
        }
        .insertReview .tableBox
        {
            background-color: #ffffff;
            padding: 20px;
            border: 1px solid #ececec;
            border-radius: 10px;
            box-shadow: 2px 2px 2px 2px rgba(33, 33, 33, 0.15);
        }
        .insertReview .tableBox table th
        {
        	width: 100px;
        }
        .insertReview .tableBox table th, td
        {
            padding: 20px;
            font-size: 0.8em;
        }
        .insertReview .tableBox table tr:nth-child(3) td input
        {
        	border: none;
        }
        .insertReview .tableBox table input
        {
            border: 1px solid rgba(0, 0, 0, 0.29);
            padding-left: 5px;
        }
        .insertReview .tableBox table #prod_image
        {
            border: none;
        }
        .insertReview .tableBox table textarea
        {
            border: 1px solid rgba(0, 0, 0, 0.29);
            padding-left: 5px;
        }
        .insertReview .tableBox table #prod_name, #review_title
        {
            width: 350px;
        }
        .insertReview .tableBox .btn_group
        {
            text-align: center;
            margin: 15px;
        }
        .insertReview .tableBox button
        {
            width: 80px;
            margin-right: 10px;
            border-radius: 8px;
            border: 1px solid rgba(0, 0, 0, 0.09);
            background: #c8c8c8;
        }     
        
        .insertReview .tableBox  table .prodInfo
        {
            width: 100px;
            display: inline-block;
            vertical-align: top; 
            box-sizing: border-box; 
            margin: 20px;
        }
        
        .insertReview .tableBox table .prodInfo img
        {
            width: 80px;
            height: auto;
            float: left;
        }
        .insertReview .tableBox table .prodInfo ul li:nth-child(2) input
        {
            border: none;
            margin: 5px 0 5px 0;
            float: left;
            padding: 0;
        }
    </style>
</head>
<body>
    <%@ include file="../include/header.jsp" %>
    <div class="insertReview">
        <h2>리뷰 작성</h2>
        <div class="tableBox">
            <form action="">              
                <table>
                    <tr>
                        <th>주문 정보</th>
                        <td>
                         	<c:choose>
                         		<c:when test="${empty completedOrderList }">
                         		<div class="prodInfo" style="background: #ececec; width:100%;">
                                	<span>주문 정보가 없습니다.</span>
                            	</div>
	                         	</c:when> 
	                         	<c:otherwise>
	                         		<c:forEach items="${completedOrderList }" var="list">
	                         			<div class="prodInfo">
			                                <ul>
			                                    <li><img src="${path }/${list.prod_image}" alt="상품 이미지"></li>
			                                    <li><input type="text" name="prod_name" value="${list.prod_name }"></li>
			                                    <li><input type="hidden" name="prod_no" value="${list.prod_no }"></li>
			                                    <li><input type="hidden" name="mem_id" value="${list.mem_id }"></li>
			                                    <li><input type="hidden" name="mem_name" value="${list.mem_name }"></li>
			                                    <li><input type="checkbox" name="chk" value="${list.prod_no }" onchange="handleCheckboxChange(this)"></li>
			                                </ul>
			                            </div>
	                         		</c:forEach>
	                         	</c:otherwise> 
                         	</c:choose>                       
                        </td>                       
                    </tr>                   
                    <tr>
                        <th>제목</th>
                        <td><input type="text" id="review_title" name="review_title" required></td>
                    </tr>
                    <tr>
                        <th>작성자</th>
                        <td>${sessionScope.loginMap.MEM_NAME }</td>
                    </tr>
                    <tr>
                        <th>내용</th>
                        <td><textarea id="review_content" name="review_content" rows="4" cols="100" required></textarea></td>
                    </tr>
                </table>
            </form>
            <div class="btn_group">
                <button type="button" id="insert" onclick="insertReview()">등록</button>
                <button type="button" id="cancel" onclick="location.href='${path}/review/reviewList.do'">취소</button>
            </div>
        </div>
    </div>
    <%@ include file="../include/footer.jsp" %>
    
    <script>
 		// 로그인 여부 확인
	    var loginMap = '${loginMap}';
	    
	    if(!loginMap) {
	    	alert("로그인 후 이용 가능합니다.");
	        window.location.href = '${path}/member/loginForm.do'; // 리다이렉트
	    }
   
	    function handleCheckboxChange(checkbox) {
	        var checkboxes = document.querySelectorAll('input[name="chk"]');
	        checkboxes.forEach(function(cb) {
	            if (cb !== checkbox) {
	                cb.disabled = checkbox.checked;
	            }
	        });
	    }
		
	    // 리뷰 등록
	    function insertReview() {
	        var reviewTitle = $("#review_title").val();	// 리뷰 제목
	        var reviewContent = $("#review_content").val();	// 리뷰 내용
	        var selectedProdNo = $("input[name='chk']:checked").val();	// 상품 번호
	        var selectedProdName = $("input[name='chk']:checked").closest(".prodInfo").find("input[name='prod_name']").val();
	        var selectedProdImage = $("input[name='chk']:checked").closest(".prodInfo").find("img").attr("src");	// 상품 이미지
	        var selectedMemId = $("input[name='chk']:checked").closest(".prodInfo").find("input[name='mem_id']").val();
	        var selectedMemName = $("input[name='chk']:checked").closest(".prodInfo").find("input[name='mem_name']").val();
	        
	        if (!selectedProdNo) {
	            alert("리뷰를 작성할 상품을 선택 해주세요.");
	        } else if($("input[name='chk']:checked").length > 1) {
	        	alert("리뷰를 작성할 상품을 하나만 선택 해주세요");
	        } else if(reviewTitle == "") {
	        	alert("리뷰 제목을 작성 해주세요");
	        	$("#review_title").focus();
	        } else if(reviewContent == "") {
	        	alert("리뷰 내용을 작성 해주세요");
	        	$("#review_content").focus();
	        } else {
	        	// AJAX를 이용하여 리뷰 작성 요청 보내기
		        $.ajax({
		            url: 'insertReview.do',
		            type: 'POST',
		            data: {
		                review_title: reviewTitle,
		                review_content: reviewContent,
		                prod_no: selectedProdNo,
		                prod_name: selectedProdName,
		                prod_image: selectedProdImage,
		                mem_id: selectedMemId,
		                mem_name: selectedMemName
		            },
		            success: function(response) {
		                alert("리뷰 작성을 완료 하였습니다.");
		                window.location.href = '${path}/review/reviewList.do';
		            },
		            error: function(xhr, status, error) {
		            	alert("리뷰 작성 중 오류가 발생했습니다. 다시 시도해주세요."); 
		                
		                if (xhr.status === 404) {
		                    alert("요청하신 페이지를 찾을 수 없습니다.");
		                    window.location.href = '${path}/error/errorPage.do';
		                } else if (xhr.status === 500) {
		                    alert("서버 내부 오류가 발생했습니다. 관리자에게 문의해주세요.");
		                }
		            }
		        });
	        }
	    }
	</script>
</body>
</html>
