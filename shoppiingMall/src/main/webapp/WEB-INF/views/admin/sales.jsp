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
    <title>월 별 매출표</title>
    <link rel="stylesheet" href="${path }/resources/css/normalize.css">
    <link rel="stylesheet" href="${path }/resources/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        .chart-container {
            display: flex;
            justify-content: center;
            margin-top: 50px;
        }
        .chart-wrapper {
            margin: 0 10px;
        }
    </style>
</head>
<body>
	<%@ include file="../include/header.jsp" %>
    <div class="chart-container">
        <div class="chart-wrapper">
            <canvas id="salesLineChart1" width="600" height="400"></canvas>
        </div>
        <div class="chart-wrapper">
            <canvas id="salesLineChart2" width="600" height="400"></canvas>
        </div>
    </div>
    <%@ include file="../include/footer.jsp" %>
    
    <script>
        const lineCtx1 = document.querySelector('#salesLineChart1').getContext('2d');
        const lineCtx2 = document.querySelector('#salesLineChart2').getContext('2d');

        const lineChart1 = new Chart(lineCtx1, {
            type: 'line',
            data: {
                labels: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
                datasets: [{
                    label: '월 별 매출액(만)',
                    data: [1000, 30, 25, 40, 50, 70, 65, 55, 60, 80, 75, 90],
                    borderColor: 'rgba(75, 192, 192, 1)',
                    backgroundColor: 'rgba(75, 192, 192, 0.4)', // 채우기 색상 변경
                    borderWidth: 2,
                    fill: true
                }]
            },
            options: {
                scales: {
                    x: {
                        beginAtZero: true
                    },
                    y: {
                        beginAtZero: true
                    }
                },
                elements: {
                    line: {
                        tension: 0.4
                    }
                }
            }
        });

        const lineChart2 = new Chart(lineCtx2, {
            type: 'line',
            data: {
                labels: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
                datasets: [{
                    label: '월 별 판매량(개)',
                    data: [30, 50, 40, 60, 70, 90, 85, 75, 80, 100, 95, 110],
                    borderColor: 'rgba(255, 99, 132, 1)', // 다른 색상으로 변경
                    backgroundColor: 'rgba(255, 99, 132, 0.4)', // 채우기 색상 변경
                    borderWidth: 2,
                    fill: true
                }]
            },
            options: {
                scales: {
                    x: {
                        beginAtZero: true
                    },
                    y: {
                        beginAtZero: true
                    }
                },
                elements: {
                    line: {
                        tension: 0.4
                    }
                }
            }
        });
    </script>

</body>
</html>