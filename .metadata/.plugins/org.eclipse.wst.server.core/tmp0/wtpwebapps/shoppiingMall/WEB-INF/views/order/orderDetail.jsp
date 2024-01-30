<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>주문 상세내역</title>
    <link rel="stylesheet" href="normalize.css">
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript">   
    $(document).ready( function() {

    $("#header").load("header.html");  
    $("#footer").load("footer.html");  

    });     
    </script>
    <style>
        .point
        {
            border: 1px solid #ececec;
            border-radius: 10px;
            box-shadow: 2px 2px 2px 2px rgba(33, 33, 33, 0.15);
            height: 200px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .point div:nth-child(1)
        {
            width: 40%;
            border-right: 1px solid #ececec;
            text-align: center;
            height: 80%;
            padding-top: 50px;
            position: relative;
        }
        .point div:nth-child(1) i
        {
            float: left;
            font-size: 5.0em;
            position: absolute;
            top: 30%;
            left: 12%;
            color: #0d6efd;
        }
        .point div:nth-child(1) strong
        {
            color: #0d6efd;
        }
        .point div:nth-child(1) h3
        {
            font-size: 20px;
        }
        .point div:nth-child(1) p
        {
            font-size: 15px;
            color: rgba(33, 33, 33, 0.65);
        }
        .point div:nth-child(2)
        {
            width: 30%;
            border-right: 1px solid #ececec;
            text-align: center;
            height: 80%;
            padding-top: 50px;  
        }
        .point div:nth-child(2) h3
        {
            font-size: 15px;
        }
        .point div:nth-child(2) p
        {
            font-size: 20px;
            font-weight: bold;
        }
        .point div:nth-child(3)
        {
            width: 30%;
            text-align: center;
            height: 80%;
            padding-top: 50px;
        }
        .point div:nth-child(3) h3
        {
            font-size: 15px;
        }
        .point div:nth-child(3) p
        {
            font-size: 20px;
            font-weight: bold;
        }
        .content .orderDetail
        {
            margin: 20px 0 20px 0;
        }
        .content .orderDetail .title
        {
            position: relative;   
        }
        .content .orderDetail .title i
        {
            float: left;
            position: absolute;
            top: 25%;
        }
        .content .orderDetail .title h2
        {
            padding: 5px 0 0 25px;
            font-size: 1.3em;
        }
        .content .orderDetail .orderDate
        {
            margin: 20px 0 10px 0;
            padding: 15px 0 0 25px;
            border: 1px solid #ececec;
            border-radius: 10px;
            box-shadow: 2px 2px 2px 2px rgba(33, 33, 33, 0.15);
        }
        .content .orderDetail .orderDate div:nth-child(1)
        {
            display: inline-flex;
        }
        .content .orderDetail .orderDate div:nth-child(1) p
        {
            margin-right: 3px;
            color: rgba(33, 33, 33, 0.65);
        }
        .content .orderDetail .productInfo
        {
            border: 1px solid #ececec;
            border-radius: 10px;
            box-shadow: 2px 2px 2px 2px rgba(33, 33, 33, 0.15);
            margin-top: 30px;
            padding: 15px;
        }
        .content .orderDetail .productInfo table
        {
            border-collapse: collapse;
            width: 100%;
        }
        .content .orderDetail .productInfo table th
        {
            border-bottom: 2px solid #ececec;
            border-right: 2px solid #ececec;
            padding-bottom: 10px;
            color: rgba(33, 33, 33, 0.65);
        }
        .content .orderDetail .productInfo table th:nth-child(1)
        {
            padding-left: 10px;
        }
        .content .orderDetail .productInfo table th:nth-child(2)
        {
            text-align: center;
        }
        .content .orderDetail .productInfo table th:nth-child(3)
        {
            border-right: none;
            text-align: center;
        }
        .content .orderDetail .productInfo table td:nth-child(1) 
        {
            border-right: 2px solid #ececec;
            border-bottom: 2px solid #ececec;
            border-left: 2px solid #ececec;
            position: relative;
            width: 50%;
        }
        .content .orderDetail .productInfo table td:nth-child(1) strong
        {
            position: absolute;
            top: 67%;
        }
        .content .orderDetail .productInfo table td:nth-child(2)
        {
            text-align: center;
            border-right: 2px solid #ececec;
            border-bottom: 2px solid #ececec;
        }
        .content .orderDetail .productInfo table td:nth-child(3)
        {
            text-align: center;
            border-right: 2px solid #ececec;
            border-bottom: 2px solid #ececec;
        }
        .content .orderDetail .productInfo table td p
        {
            padding-top: 20px;
        }
        .content .orderDetail .productInfo table img
        {
            width: 80px;
            height: 80px;
            float: left;
            margin: 20px 20px 20px 10px;
        }
        .content .orderDetail .userInfo
        {
            border: 2px solid #ececec;
            border-radius: 10px;
            box-shadow: 2px 2px 2px 2px rgba(33, 33, 33, 0.15);
            margin-top: 30px;
            padding: 15px;
        }
        .content .orderDetail .userInfo table
        {
            border-collapse: collapse;
            width: 100%;
        }
        .content .orderDetail .userInfo table th
        {
            color: rgba(33, 33, 33, 0.65);
            padding: 5px;
            width: 113px;
        }
        .content .orderDetail .addrInfo
        {
            border: 2px solid #ececec;
            border-radius: 10px;
            box-shadow: 2px 2px 2px 2px rgba(33, 33, 33, 0.15);
            margin-top: 30px;
            padding: 15px;
        }
        .content .orderDetail .addrInfo table
        {
            border-collapse: collapse;
            width: 100%;
        }
        .content .orderDetail .addrInfo table th
        {
            color: rgba(33, 33, 33, 0.65);
            padding: 5px;
            width: 113px;
        }
        .content .orderDetail .paymentDetail
        {
            border: 2px solid #ececec;
            border-radius: 10px;
            box-shadow: 2px 2px 2px 2px rgba(33, 33, 33, 0.15);
            margin-top: 30px;
            padding: 15px;
        }
        .content .orderDetail .paymentDetail .payment
        {
            padding-bottom: 10px;
            text-align: center;
        }
        .content .orderDetail .paymentDetail .payment strong
        {
            color: #0d6efd;
            margin-left: 100px;
            margin-right: 50px;
            font-size: 1.2em;
        }
        .content .orderDetail .paymentDetail .payment strong:nth-child(1)::after
        {
            content: "-";
            padding-left: 50px;
            color: #222;
        }
        .content .orderDetail .paymentDetail .payment strong:nth-child(2)::after
        {
            content: "=";
            padding-left: 50px;
            color: #222;
        }
        .content .orderDetail .paymentDetail .divGrp
        {
            border-top: 2px solid #ececec;
            display: flex;
        }
        .content .orderDetail .paymentDetail .divGrp .div1
        {
            border-right: 2px solid #ececec;
            width: 33.333%;
            padding: 15px;
        }
        .content .orderDetail .paymentDetail .divGrp .div1 table
        {
            border-collapse: collapse;
            width: 100%;
        }
        .content .orderDetail .paymentDetail .divGrp .div1 table th
        {
            color: rgba(33, 33, 33, 0.65);
            padding: 5px;
        }
        .content .orderDetail .paymentDetail .divGrp .div1 table td{
            float: right;
        }
        .content .orderDetail .paymentDetail .divGrp .div2
        {
            border-right: 2px solid #ececec;
            width: 33.333%;
            padding: 15px;
        }
        .content .orderDetail .paymentDetail .divGrp .div2 table
        {
            border-collapse: collapse;
            width: 100%;
        }
        .content .orderDetail .paymentDetail .divGrp .div2 table th
        {
            color: rgba(33, 33, 33, 0.65);
            padding: 5px;
        }
        .content .orderDetail .paymentDetail .divGrp .div2 table td{
            float: right;
        }
        .content .orderDetail .paymentDetail .divGrp .div3
        {
            width: 33.333%;
            padding: 15px;
        }
        .content .orderDetail .paymentDetail .divGrp .div3 .p1 
        {
            color: rgba(33, 33, 33, 0.65);
            font-size: 13px;
        }
        .content .orderDetail .paymentDetail .divGrp .div3 button
        {
            background: #fff;
            color: #222;
            border: 1px solid rgba(33, 33, 33, 0.65);
            border-radius: 8px;
            margin-bottom: 5px;
            font-weight: bold;
            font-size: 13px;
            padding: 2px;
        }
        .content .orderDetail .paymentDetail .divGrp .div3 .p2
        {
            color: #0d8efd;
            font-size: 15px;
        }
    </style>
</head>
<body>
    <header id="header"></header>

    <div class="content">
        <div class="point">
            <div>
                <i class="xi-profile"></i>
                <h3><strong>???</strong>님 안녕하세요.</h3>
                <p>누적 금액: ??????원</p>
            </div>
            <div>
                <h3>POINT</h3>
                <P>????</P>
            </div>
            <div>
                <h3>사용 가능 쿠폰</h3>
                <p>?</p>
            </div>
        </div>
        <div class="orderDetail">
            <div class="title">
                <i class="xi-arrow-left"></i>
                <h2>주문 상세 내역</h2>
            </div>
            <div class="orderDate">
                <div>
                    <p>주문일자</p>
                    <strong>????-??-??</strong>
                    <p style="margin-left: 20px;">주문번호</p>
                    <strong>????????</strong>
                </div>     
            </div>
            <div class="productInfo">
                <table>
                    <thead>
                        <tr>
                            <th>상품정보</th>
                            <th>배송비</th>
                            <th>진행상태</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <img src="img/075af9563c23f8850388633646f20b10.webp" alt="">
                                <p>asdfasdfasdfadsf</p>
                                <strong>?????원 / 수량?개</strong>
                            </td>
                            <td rowspan="3">무료</td>
                            <td>
                                <strong>배송중</strong>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <img src="img/075af9563c23f8850388633646f20b10.webp" alt="">
                                <p>asdfasdfasdfadsf</p>
                                <strong>?????원 / 수량?개</strong>
                            </td>
                            <!-- <td rowspan="3">무료</td> -->
                            <td>
                                <strong>배송중</strong>
                            </td>                                            
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="userInfo">
                <table>
                    <tr>
                        <th>주문자</th>
                        <td>이규진<td> <!-- 마스킹 처리-->
                    </tr>
                    <tr>
                        <th>연락처</th>
                        <td>010-6353-3014</td> <!-- 마스킹 처리-->
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td>lcjh313@naver.com</td>
                    </tr>
                </table>
            </div>
            <div class="addrInfo">
                <table>
                    <tr>
                        <th>수령인</th>
                        <td>이규진<td> <!-- 마스킹 처리-->
                    </tr>
                    <tr>
                        <th>연락처</th>
                        <td>010-6353-3014</td> <!-- 마스킹 처리-->
                    </tr>
                    <tr>
                        <th>배송지</th>
                        <td>경기도 시흥시 은행로122, 대우1차 아파트 105동 901호</td>
                    </tr>
                    <tr>
                        <th>배송메모</th>
                        <td>파손 되지 않게 주의 해주세요~</td>
                    </tr>
                </table>
            </div>
            <div class="paymentDetail">
                <div class="payment">
                    주문금액<strong>??????원</strong>할인금액<strong>????원</strong>총 주문금액 <strong>??????원</strong>
                </div>
                <div class="divGrp">
                    <div class="div1">
                        <table>
                            <tr>
                                <th>상품금액</th>
                                <td>??????원</td>
                            </tr>
                            <tr>
                                <th>배송비</th>
                                <td>????원</td>
                            </tr>
                        </table>
                    </div>
                    <div class="div2">
                        <table>
                            <tr>
                                <th>회원 할인금액</th>
                                <td>????원</td>
                            </tr>
                            <tr>
                                <th>쿠폰</th>
                                <td>????원</td>
                            </tr>
                            <tr>
                                <th>포인트</th>
                                <td>????원</td>
                            </tr>
                        </table>
                    </div>
                    <div class="div3">
                        <strong>신용카드</strong>
                        <p class="p1">BC카드(****-****-****-1234</p> <!-- 마스킹 처리-->
                        <button type="button">영수증 조회</button>
                        <p class="p2">???? 포인트 적립예정</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer id="footer"></footer>
</body>
</html>