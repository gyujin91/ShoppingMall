<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
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
        .orderList
        {
            margin: 0 auto;
            display: flex;
            margin: 15px;
            padding: 30px 0 30px 0;
        }
        .orderList .list
        {
            margin: 0 30px 0 30px;
            width: 100%;
        }
        .orderList .list .title
        {
            position: relative;
        }
        .orderList .list .title h2
        {
            font-size: 1.3em;
            margin-bottom: 20px;
        } 
        .orderList .list .title h2 i:hover
        {
            color: #222;
        } 
        .orderList .list .title p
        {
            position: absolute;
            top: 2%;
            left: 8%;
            font-size: 1.1em;
        }
        .orderList .list .title p strong
        {
            color: blue;
        }
        .orderList .list h2 i
        {
            margin-right: 5px;
        }   
        .orderList .list table
        {
            border-collapse: collapse;
            width: 100%;
            border: 2px solid #ececec;
            box-shadow: 2px 2px 2px 2px rgba(33, 33, 33, 0.15);
        }
        .orderList .list table th
        {
            border-bottom: 1px solid #ececec;
            text-align: center;
            border-right: 1px solid #ececec;
            background-color: rgba(33, 33, 33, 0.35);
        }
        .orderList .list table td
        {
            border-bottom: 1px solid #ececec;
            border-right: 1px solid #ececec;
            text-align: center;
        }
        .orderList .list table tr:nth-child(2n) {
            background-color: rgba(33, 33, 33, 0.15);
        }
        .orderList .list table td a
        {
            text-decoration: underline;
            color: blue;
        }
        .orderList .list table td a:hover
        {
            color: black;
        }
        .orderList .list table td img
        {
            width: 30px;
            height: 30px;
            padding: 5px;
        }
    </style>
</head>
<body>
    <header id="header"></header>
    <div class="orderList">
        <div class="list">
            <div class="title">
                 <h2><a href="admin.html"><i class="xi-arrow-left"></i></a>주문 목록</h2>
                 <p> (총 <strong>??</strong>개)</p>
            </div>
            <table>
                <thead>
                    <tr>
                        <th>주문번호</th>
                        <th>처리상태</th>
                        <th>결제방법</th>
                        <th>주문상세번호</th>
                        <th>입금일자</th>
                        <th>상품코드</th>
                        <th>상품이미지</th>
                        <th>상품명</th>
                        <th>배송비</th>
                        <th>배송준비일자</th>
                        <th>배송일자</th>
                        <th>배송완료일자</th>
                    </tr>
                    <tbody>
                        <tr>
                            <td><a href="#">11111111</a></td>
                            <td>배송완료</td>
                            <td>카드</td>
                            <td>1</td>
                            <td>2023-12-07</td>
                            <td>000000001</td>
                            <td><a href="detail.html"><img src="img/075af9563c23f8850388633646f20b10.webp" alt=""></a></td>
                            <td>투하트 롱와이드 밴딩바지/트레이닝바지 유니크</td>
                            <td>무료</td>
                            <td>2023-12-07</td>
                            <td>2023-12-07</td>
                            <td>2023-12-08</td>
                        </tr>
                        <tr>
                            <td><a href="#">11111111</a></td>
                            <td>배송완료</td>
                            <td>카드</td>
                            <td>1</td>
                            <td>2023-12-07</td>
                            <td>000000001</td>
                            <td><a href="detail.html"><img src="img/075af9563c23f8850388633646f20b10.webp" alt=""></a></td>
                            <td>투하트 롱와이드 밴딩바지/트레이닝바지 유니크</td>
                            <td>무료</td>
                            <td>2023-12-07</td>
                            <td>2023-12-07</td>
                            <td>2023-12-08</td>
                        </tr>
                        <tr>
                            <td><a href="#">11111111</a></td>
                            <td>배송완료</td>
                            <td>카드</td>
                            <td>1</td>
                            <td>2023-12-07</td>
                            <td>000000001</td>
                            <td><a href="detail.html"><img src="img/075af9563c23f8850388633646f20b10.webp" alt=""></a></td>
                            <td>투하트 롱와이드 밴딩바지/트레이닝바지 유니크</td>
                            <td>무료</td>
                            <td>2023-12-07</td>
                            <td>2023-12-07</td>
                            <td>2023-12-08</td>
                        </tr>
                        <tr>
                            <td><a href="#">11111111</a></td>
                            <td>배송완료</td>
                            <td>카드</td>
                            <td>1</td>
                            <td>2023-12-07</td>
                            <td>000000001</td>
                            <td><a href="detail.html"><img src="img/075af9563c23f8850388633646f20b10.webp" alt=""></a></td>
                            <td>투하트 롱와이드 밴딩바지/트레이닝바지 유니크</td>
                            <td>무료</td>
                            <td>2023-12-07</td>
                            <td>2023-12-07</td>
                            <td>2023-12-08</td>
                        </tr>
                        <tr>
                            <td><a href="#">11111111</a></td>
                            <td>배송완료</td>
                            <td>카드</td>
                            <td>1</td>
                            <td>2023-12-07</td>
                            <td>000000001</td>
                            <td><a href="detail.html"><img src="img/075af9563c23f8850388633646f20b10.webp" alt=""></a></td>
                            <td>투하트 롱와이드 밴딩바지/트레이닝바지 유니크</td>
                            <td>무료</td>
                            <td>2023-12-07</td>
                            <td>2023-12-07</td>
                            <td>2023-12-08</td>
                        </tr>
                        <tr>
                            <td><a href="#">11111111</a></td>
                            <td>배송완료</td>
                            <td>카드</td>
                            <td>1</td>
                            <td>2023-12-07</td>
                            <td>000000001</td>
                            <td><a href="detail.html"><img src="img/075af9563c23f8850388633646f20b10.webp" alt=""></a></td>
                            <td>투하트 롱와이드 밴딩바지/트레이닝바지 유니크</td>
                            <td>무료</td>
                            <td>2023-12-07</td>
                            <td>2023-12-07</td>
                            <td>2023-12-08</td>
                        </tr>
                        <tr>
                            <td><a href="#">11111111</a></td>
                            <td>배송완료</td>
                            <td>카드</td>
                            <td>1</td>
                            <td>2023-12-07</td>
                            <td>000000001</td>
                            <td><a href="detail.html"><img src="img/075af9563c23f8850388633646f20b10.webp" alt=""></a></td>
                            <td>투하트 롱와이드 밴딩바지/트레이닝바지 유니크</td>
                            <td>무료</td>
                            <td>2023-12-07</td>
                            <td>2023-12-07</td>
                            <td>2023-12-08</td>
                        </tr>
                        <tr>
                            <td><a href="#">11111111</a></td>
                            <td>배송완료</td>
                            <td>카드</td>
                            <td>1</td>
                            <td>2023-12-07</td>
                            <td>000000001</td>
                            <td><a href="detail.html"><img src="img/075af9563c23f8850388633646f20b10.webp" alt=""></a></td>
                            <td>투하트 롱와이드 밴딩바지/트레이닝바지 유니크</td>
                            <td>무료</td>
                            <td>2023-12-07</td>
                            <td>2023-12-07</td>
                            <td>2023-12-08</td>
                        </tr>
                        <tr>
                            <td><a href="#">11111111</a></td>
                            <td>배송완료</td>
                            <td>카드</td>
                            <td>1</td>
                            <td>2023-12-07</td>
                            <td>000000001</td>
                            <td><a href="detail.html"><img src="img/075af9563c23f8850388633646f20b10.webp" alt=""></a></td>
                            <td>투하트 롱와이드 밴딩바지/트레이닝바지 유니크</td>
                            <td>무료</td>
                            <td>2023-12-07</td>
                            <td>2023-12-07</td>
                            <td>2023-12-08</td>
                        </tr>
                        <tr>
                            <td><a href="#">11111111</a></td>
                            <td>배송완료</td>
                            <td>카드</td>
                            <td>1</td>
                            <td>2023-12-07</td>
                            <td>000000001</td>
                            <td><a href="detail.html"><img src="img/075af9563c23f8850388633646f20b10.webp" alt=""></a></td>
                            <td>투하트 롱와이드 밴딩바지/트레이닝바지 유니크</td>
                            <td>무료</td>
                            <td>2023-12-07</td>
                            <td>2023-12-07</td>
                            <td>2023-12-08</td>
                        </tr>
                    </tbody>
                </thead>
            </table>
        </div>
    </div>
    <footer id="footer"></footer>
</body>
</html>