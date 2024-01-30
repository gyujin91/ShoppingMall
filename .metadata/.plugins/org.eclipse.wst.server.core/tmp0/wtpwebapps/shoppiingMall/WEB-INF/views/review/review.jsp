<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>게시판</title>
    <link rel="stylesheet" href="normalize.css">
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>

    <script type="text/javascript">   
        $(document).ready( function() {
    
        $("#header").load("header.html");  
        $("#footer").load("footer.html");  
    
        });     
        </script>
        <style>
            .review
            {
                margin: 15px;
            }
            .review h2
            {
                text-align: center;
                font-size: 1.5em;
                margin-bottom: 30px;
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
            .review table
            {
                width: 1200px;
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
            .review table td span:nth-child(1)
            {
                margin-top: 16px;
                margin-bottom: 5px;
            }
            .review table td span:nth-child(2)
            {
                margin-bottom: 5px;
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
    <header id="header"></header>
    <div class="review">
        <h2>REVIEW</h2>
        <div class="btnGroup">
            <button type="button" onclick="notice()">NOTICE</button>
            <button type="button" onclick="review()">REVIEW</button>
        </div>
        <table>
            <tr>
                <th><img src="img/075af9563c23f8850388633646f20b10.webp" alt=""></th>
                <td>
                    <span>Ribbon Mesh Skirt (Black)</span>
                    <span>자주 손이가고 너무 이뻐요🖤</span>
                    <span>자주 손이가고 너무 이뻐요🖤</span>
                    <ul>
                        <li>이규진</li>
                        <li>2023-12-15</li>
                    </ul>
                </td>
            </tr>
            <tr>
                <th><img src="img/075af9563c23f8850388633646f20b10.webp" alt=""></th>
                <td>
                    <span>Ribbon Mesh Skirt (Black)</span>
                    <span>자주 손이가고 너무 이뻐요🖤</span>
                    <span>자주 손이가고 너무 이뻐요🖤</span>
                    <ul>
                        <li>이규진</li>
                        <li>2023-12-15</li>
                    </ul>
                </td>
            </tr>

            <tr>
                <th><img src="img/075af9563c23f8850388633646f20b10.webp" alt=""></th>
                <td>
                    <span>Ribbon Mesh Skirt (Black)</span>
                    <span>자주 손이가고 너무 이뻐요🖤</span>
                    <span>자주 손이가고 너무 이뻐요🖤</span>
                    <ul>
                        <li>이규진</li>
                        <li>2023-12-15</li>
                    </ul>
                </td>
            </tr>
            <tr>
                <th><img src="img/075af9563c23f8850388633646f20b10.webp" alt=""></th>
                <td>
                    <span>Ribbon Mesh Skirt (Black)</span>
                    <span>자주 손이가고 너무 이뻐요🖤</span>
                    <span>자주 손이가고 너무 이뻐요🖤</span>
                    <ul>
                        <li>이규진</li>
                        <li>2023-12-15</li>
                    </ul>
                </td>
            </tr>
        </table>
    </div>
    <footer id="footer"></footer>

    <script>
        function notice(){
            location.href = 'boardList.html';
        }

        function review(){
            location.href = 'review.html';
        }
    </script>
</body>
</html>