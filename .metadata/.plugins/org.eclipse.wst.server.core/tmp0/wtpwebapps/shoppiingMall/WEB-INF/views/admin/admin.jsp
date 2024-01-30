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
    <title>관리자 데시보드</title>
    <link rel="stylesheet" href="${path }/resources/css/normalize.css">
    <link rel="stylesheet" href="${path }/resources/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    
    <style>
        .deshboard
        {
            /* width: 95%; */
            margin: 0 auto;
            /* padding-top: 20px; */
            display: flex;
            margin: 20px;
        }
        .navigation 
        {
            width: 5%;
            background: #6666FF;
            border-radius: 25px;
            /* height: 100vh;  */
        }

        .navigation ul 
        {
            list-style-type: none; /* 기본 목록 스타일 제거 */
            padding: 0;
            margin: 0;
        }

        .navigation li 
        {
            margin-bottom: 10px;
            text-align: center;
        }

        .navigation a 
        {
            display: block;
            color: #fff;
            text-align: center;
            padding-top: 30px;
        }
        .navigation i
        {
        	display: block;
        	text-align: center;
            font-size: 1.6em;
            color: #fff;
            padding-top: 30px;
        }
        .content
        {
            flex: 1 0 90%;
            padding: 0;
            margin: 0 20px 0 20px;
            /* background: #f5f5f5; */
        }
        .content .header
        {
            border-bottom: 1px solid rgba(33, 33, 33, 0.15);
            margin-bottom: 20px;
            box-shadow: 0 2px 2px -2px gray;
        }
        .content .header .list
        {
            padding: 0;
            display: flex;
            justify-content: space-between; 
            
        }
        .content .header .list .item .left
        {
            text-align: left;
        }
        .content .header .list .item .center
        {
            text-align: center;
        }
        .content .header .list .item .right
        {
            text-align: right;                
        }
        .content .header .list .item i
        {
            font-size: 1.4em;
            font-weight: bold;
            margin-right: 5px;
        }
        .content .header .list .item input
        {
            border-radius: 15px;
            padding-left: 5px;
            width: 250px;
            border: 1px solid darkgray;
        }
        .content .total
        {
            height: 110px;
        }
        .content .total a:hover
        {
            color: black;
        }
        .content .total .views, .sales, .comments, .earning
        {
            border: 1px solid #ececec;
            border-radius: 10px;
            box-shadow: 2px 2px 2px 2px rgba(33, 33, 33, 0.15);
            width: 321px;
            height: 90px;
            float: left;
            margin-right: 27px;
            padding: 13px 0 0 13px;
            font-size: 1.4em;
            position: relative;
        }
        .content .total div
        {
        	position: relative;
        }
        .content .total h3
        {
        	position: absolute;
        	top: 10%;
        	left: 5%;
        }
        .content .total p
        {
        	position: absolute;
        	top: 65%;
        	left: 5%;
        }
        .content .total .views i
        {
            position: absolute;
            left: 80%;
            bottom: 20%;
            font-size: 2.5em;
            color: #7766FF;
        }
        .content .total .sales i
        {
            position: absolute;
            left: 80%;
            bottom: 20%;
            font-size: 2.5em;
            color: #7766FF;
        }
        .content .total .comments i
        {
            position: absolute;
            left: 80%;
            bottom: 20%;
            font-size: 2.5em;
            color: #7766FF;
        }
        .content .total .earning i
        {
            position: absolute;
            left: 80%;
            bottom: 20%;
            font-size: 2.5em;
            color: #7766FF;
        }
        .content .earning
        {
            margin-right: 0;
        }
        .content .orders
        {
            border: 1px solid black;
            width: 70%;
            margin-right: 20px;
            height: 75.5vh;
            border: 1px solid #ececec;
            border: none;
            border-radius: 10px;
            box-shadow: 2px 2px 2px 2px rgba(33, 33, 33, 0.15);
            padding: 13px 13px 0 13px;
        }
        .content .orders h2
        {
            font-size: 1.5em;
        }
        .content .orders button
        {
            width: 60px;
            height: 30px;
            background: #7766FF;
            color: #fff;
            border: none;
            border-radius: 8px;
        }
        .content .orders table
        {
            border-collapse: collapse;
            width: 100%;
            margin-top: 5px;
        }
        .content .orders table th:nth-child(1), td:nth-child(1)
        ,th:nth-child(2), td:nth-child(2)
        {
            width: 35%;
        }  
        .content .orders table th:nth-child(3), td:nth-child(3)
        {
            width: 15%;
        }
        .content .orders table th:nth-child(4), td:nth-child(4)
        {
            float: right;
        }
        .content .orders table tr
        {
            border-bottom: 1px solid rgba(33, 33, 33, 0.15);
        }
        .content .orders table th
        {
            margin-bottom: 5px;
        }
        .content .orders table th:nth-child(4)
        {
            padding-right: 20px;
        }
        .content .orders table td
        {
            margin: 5px 0 5px 0;
        }
        .content .orders table td:nth-child(4)
        {
            width: 80px;
            text-align: center;
            background: red;
            color: white;
            border: none;
            border-radius: 5px;
        }
        .content .customers
        {
            border: 1px solid black;
            width: 30%;
            border: 1px solid #ececec;
            border: none;
            border-radius: 10px;
            box-shadow: 2px 2px 2px 2px rgba(33, 33, 33, 0.15);
            padding: 13px 0 0 13px;
        }
        .content .customers h2
        {
            font-size: 1.5em;
            margin-bottom: 15px;
        }
        .content .customers button
        {
            width: 60px;
            height: 30px;
            background: #7766FF;
            color: #fff;
            border: none;
            border-radius: 8px;
            margin-right: 15px;
        }
        .content .customers table th
        {
            padding-left: 5px;
        }
        .content .customers table th i
        {
            font-size: 1.5em;
        }
        .content .customers table th i:hover
        {
            color: #222222;
        }
        .content .customers table td
        {
            float: left;
            margin-left: 30px;
        }
    </style>
</head>
<body>
    <div class="deshboard">
        <div class="navigation">
            <ul>
                <li><i class="xi-home-o" ></i></li>
                <li><i class="xi-money"></i></li>
                <li><i class="xi-help-o"></i></li>
                <li><i class="xi-users-o"></i></li>
                <li><i class="xi-cog"></i></li>
            </ul>
        </div>
        <div class="content">
            <div class="header">
                <ul class="list">
                    <li class="item left"><a href="#"><i class="xi-bars"></i></a></li>
                    <li class="item center"><i class="xi-search"></i><input type="text" name="search" id="search" value="검색"></li>
                    <li class="item right"><strong>관리자님 환영합니다.</strong></li>
                </ul>
            </div> 
            <div class="total">
                <a href="${path }/admin/views.do">
                    <div class="views">
                        <h3>9,999</h3>
                        <p style="color: gray; font-size: 18px;">조회수</p>
                        <i class="xi-eye-o"></i>
                    </div>
                </a>
                <a href="orderList.html">
                    <div class="sales">
                        <h3>80</h3>
                        <p style="color: gray; font-size: 18px;">주문</p>
                        <i class="xi-cart-o"></i>
                    </div>
                </a>
                <a href="boardList.html">
                    <div class="comments">
                        <h3>208</h3>
                        <p style="color: gray; font-size: 18px;">문의</p>
                        <i class="xi-help-o"></i>     
                    </div>
                </a>
                <a href="#">
                    <div class="earning">
                        <h3>$6,008</h3>
                        <p style="color: gray; font-size: 18px;">매출</p>
                        <i class="xi-won"></i> 
                    </div>
                </a>
            </div>
            <div style="display: flex; justify-content: space-between;">
                <div class="orders">
                    <div style="display: flex; justify-content: space-between;">
                        <h2>주문</h2>
                        <button>View All</button>
                    </div>
                    <table>
                        <thead>
                            <tr>
                                <th>이름</th>
                                <th>가격</th>
                                <th>결제 방법</th>
                                <th>상태</th>
                            </tr> 
                        </thead>                
                        <tbody>
                            <tr>
                                <td>시리</td>
                                <td>9,805,300</td>
                                <td>무통장 입금</td>
                                <td>배송중</td>
                            </tr>
                            <tr>
                                <td>이규진</td>
                                <td>150,320</td>
                                <td>카드</td>
                                <td>배송완료</td>
                            </tr>
                            <tr>
                                <td>홍길동</td>
                                <td>11111</td>
                                <td>무통장 입금</td>
                                <td>입금완료</td>
                            </tr>
                            <tr>
                                <td>홍길동</td>
                                <td>11111</td>
                                <td>무통장 입금</td>
                                <td>입금완료</td>
                            </tr>     
                            <tr>
                                <td>홍길동</td>
                                <td>11111</td>
                                <td>카드</td>
                                <td>배송중</td>
                            </tr>     
                            <tr>
                                <td>홍길동</td>
                                <td>11111</td>
                                <td>카드</td>
                                <td>배송완료</td>
                            </tr>     
                            <tr>
                                <td>홍길동</td>
                                <td>11111</td>
                                <td>카드</td>
                                <td>배송대기</td>
                            </tr>     
                            <tr>
                                <td>홍길동</td>
                                <td>11111</td>
                                <td>카드</td>
                                <td>상품준비</td>
                            </tr>    
                            <tr>
                                <td>홍길동</td>
                                <td>11111</td>
                                <td>카드</td>
                                <td>취소완료</td>
                            </tr>  
                            <tr>
                                <td>홍길동</td>
                                <td>11111</td>
                                <td>카드</td>
                                <td>배송중</td>
                            </tr>  
                            <tr>
                                <td>홍길동</td>
                                <td>11111</td>
                                <td>카드</td>
                                <td>취소완료</td>
                            </tr>  
                            <tr>
                                <td>홍길동</td>
                                <td>11111</td>
                                <td>카드</td>
                                <td>반품요청</td>
                            </tr>  
                                                        
                        </tbody>
                    </table>
                </div>
                <div class="customers">
                    <div style="display: flex; justify-content: space-between;">
	                    <h2>회원</h2>
	                    <button>View All</button>
                    </div>
                    <table>
                    	<!-- 일반 회원만 -->
	                    <c:forEach items="${memberList }" var="list">	                    	
		                   		<tr onclick="location.href='${path }/admin/list.do?mem_id=${list.mem_id }'">
		                            <th><a href="${path }/admin/allMemberList"><i class="xi-user"></i></a></th>
		                            <td>${list.mem_id }</td>
		                        </tr>	                       
	                    </c:forEach>   
                    </table>
                </div>
            </div>
        </div>
            
    </div>

    <script>
        
    </script>
</body>
</html>