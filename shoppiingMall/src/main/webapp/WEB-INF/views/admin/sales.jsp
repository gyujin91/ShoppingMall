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
            position: relative; /* 부모 요소를 relative로 설정 */
            margin-bottom: 800px;
        }

        .monthAmount {
            width: 100%;
            margin-top: 100px;
            margin-bottom: 100px;
            display: flex;
            justify-content: center; /* 테이블을 가운데 정렬 */
            position: absolute; /* chart-container에 대해 절대 위치 설정 */
            top: 90%; /* 위쪽에 배치 */
            left: 0%;
        }
        #salesLineChart2 {
            margin-left: 20px;
        }
        
        
        table {
            border-collapse: collapse;
            width: 80%;
            box-shadow: 2px 3px 5px 0 #ececec;
        }
        table th,
        table td {
            border: 1px solid #ececec;
            padding: 5px;
            font-size: 0.9em;
        }
        
        table td:nth-child(1){
            width: 10%;
            text-align: center;
        }
        table td:nth-child(2), td:nth-child(3){
            padding: 10px;
        }
        table th {
            border-top: 2px solid #e8e8e8;
            text-align: center;
            color: #7766FF;
            font-weight: bold;
        }
    </style>
</head>
<body>
	<%@ include file="../include/header.jsp" %>
    <div class="chart-container">
        <div class="chart-wrapper">
            <canvas id="salesLineChart1" width="600" height="400"></canvas>
            <div class="monthAmount">               
                <table id="salesTable">
                    <thead>
                    	<tr>
	                        <th>월</th>
	                        <th>매출액(원)</th>
	                        <th>판매량(건)</th>
	                    </tr>
                    </thead>
                    <tbody>
	                    <c:forEach items="${monthAmountList}" var="monthAmount">
						    <c:set var="month" value="${monthAmount.get('MONTH').getAsString()}"/>
						    <tr>
						        <td>${month}</td>
						        <td>${monthAmount.get('TOTAL_AMOUNT').getAsInt()}</td>
						        <td>
						            <c:forEach items="${monthSalesList}" var="monthSales">
						                <c:if test="${month eq monthSales.get('MONTH').getAsString()}">
						                    ${monthSales.get('TOTAL_SALES').getAsInt()}
						                </c:if>
						            </c:forEach>
						        </td>
						    </tr>
						</c:forEach>
                    </tbody>
                </table>
            </div>          
        </div>
        <div class="chart-wrapper">
            <canvas id="salesLineChart2" width="600" height="400"></canvas>
        </div>
    </div>
    <%@ include file="../include/footer.jsp" %>
    
    <script>
    var loginChk = '${loginChk}';
    
    if(loginChk == 'fail') {
        alert("관리자 로그인 후 이용 가능 합니다.");
        window.location.href = '${path}/member/loginForm.do';
    }

    // 매출액과 판매량 데이터 가져오기
    var monthAmountData = ${monthAmountJson};
    var monthSalesData = ${monthSalesJson};

    const renderTable = () => {
        const tableBody = document.querySelector('#salesTable tbody');
        
        monthAmountData.forEach(monthData => {
            const row = document.createElement('tr');
            const monthCell = document.createElement('td');
            monthCell.textContent = monthData.MONTH;
            row.appendChild(monthCell);
            
            const totalAmountCell = document.createElement('td');
            totalAmountCell.textContent = monthData.TOTAL_AMOUNT;
            row.appendChild(totalAmountCell);
            
            const matchingSalesData = monthSalesData.find(salesData => salesData.MONTH === monthData.MONTH);
            if (matchingSalesData) {
                const totalSalesCell = document.createElement('td');
                totalSalesCell.textContent = matchingSalesData.TOTAL_SALES;
                row.appendChild(totalSalesCell);
            } else {
                const totalSalesCell = document.createElement('td');
                totalSalesCell.textContent = '0';
                row.appendChild(totalSalesCell);
            }
            
            tableBody.appendChild(row);
        });
    };
    
    // 페이지 로드 후 실행
    window.onload = renderTable;
        
    const lineCtx1 = document.querySelector('#salesLineChart1').getContext('2d');
    const lineCtx2 = document.querySelector('#salesLineChart2').getContext('2d');

    const lineChart1 = new Chart(lineCtx1, {
        type: 'line',
        data: {
            labels: monthAmountData.map(data => data.MONTH),
            datasets: [{
                label: '월 별 매출액(만)',
                data: monthAmountData.map(data => data.TOTAL_AMOUNT),
                borderColor: 'rgba(75, 192, 192, 1)',
                backgroundColor: 'rgba(75, 192, 192, 0.4)',
                borderWidth: 2,
                fill: true
            }]
        },
        options: {
            scales: {
                x: { beginAtZero: true },
                y: { beginAtZero: true }
            },
            elements: { line: { tension: 0.4 } }
        }
    });

    const lineChart2 = new Chart(lineCtx2, {
        type: 'line',
        data: {
            labels: monthSalesData.map(data => data.MONTH),
            datasets: [{
                label: '월 별 판매량(개)',
                data: monthSalesData.map(data => data.TOTAL_SALES),
                borderColor: 'rgba(255, 99, 132, 1)',
                backgroundColor: 'rgba(255, 99, 132, 0.4)',
                borderWidth: 2,
                fill: true
            }]
        },
        options: {
            scales: {
                x: { beginAtZero: true },
                y: { beginAtZero: true }
            },
            elements: { line: { tension: 0.4 } }
        }
    });
</script>


</body>
</html>