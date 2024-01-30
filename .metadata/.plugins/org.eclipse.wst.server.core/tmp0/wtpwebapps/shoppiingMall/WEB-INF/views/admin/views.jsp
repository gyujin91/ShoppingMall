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
    <title>views</title>
    <link rel="stylesheet" href="${path }/resources/css/normalize.css">
    <link rel="stylesheet" href="${path }/resources/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
    
    <style>
        .views
        {
            margin: 30px 0 30px 0;
        }
        .views h2
        {
            font-size: 1.3em;
            margin-bottom: 20px;
            text-align: center;
        } 
        .views h2 i 
        {
            margin-right: 5px;
        }
        .views h2 i:hover
        {
            color: #222;
        } 
        .views .chart
        {
            width: 800px;
            height: 400px;
            margin: 0 auto;
        }
        .views p
        {
            text-align: center;
            font-weight: bold;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <%@ include file="../include/header.jsp" %>
    <div class="views">
        <h2><a href="${path }/admin/admin.do"><i class="xi-arrow-left"></i></a>조회수</h2>
        <div class="chart">
            <canvas id="myChart"></canvas>
        </div>
        <p>월 별 통계 조회수 입니다.</p>
    </div>
    <%@ include file="../include/footer.jsp" %>

    <script>
    const ctx = document.getElementById('myChart').getContext('2d');
    const myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
            datasets: [{
                label: 'views',
                data: [999, 155, 555, 956, 789, 565, 567, 888, 956, 235, 354, 769],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)',
                    'rgba(255, 159, 22, 0.2)',
                    'rgba(255, 55, 35, 0.2)',
                    'rgba(222, 111, 22, 0.2)',
                    'rgba(255, 159, 22, 0.3)',
                    'rgba(111, 222, 66, 0.5)',
                    'rgba(111, 222, 66, 0.3)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)',
                    'rgba(255, 159, 22, 1)',
                    'rgba(255, 55, 35, 1)',
                    'rgba(222, 111, 22, 1)',
                    'rgba(255, 159, 22, 1)',
                    'rgba(111, 222, 66, 1)',
                    'rgba(111, 222, 66, 1)'
                ],
                borderWidth: 2
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
    </script>

</body>
</html>