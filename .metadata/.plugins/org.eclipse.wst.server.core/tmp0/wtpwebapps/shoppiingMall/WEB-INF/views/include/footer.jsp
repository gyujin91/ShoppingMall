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
    <title>푸터</title>
    <link rel="stylesheet" href="${path }/resources/css/normalize.css">
    <link rel="stylesheet" href="${path }/resources/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

</head>

<footer>
    <div class="footer">
        <div class="container">
            <h2>DAEBU EXPRESS </h2>
            <span>
                <a href="#"><i class="xi-instagram"></i></a>
                <a href="#"><i class="xi-facebook-official"></i></a>
            </span>
        </div>
        <div class="container2">
            <div class="address">
                <p>ADDRESS</p>
                <strong>경기도 안산시 단원구 감나무길 92, 1층 (대부북동)</strong><br>
                <strong><a href="${path }/map/map.do">찾아오시는길</a></strong>
            </div>
            <div class="sitePolicy">
                <p>SITE POLICY</p>
                <strong><a href="#" id="btn-modal">TERM OF USE </a></strong>     
            </div>
            <div class="service">
                <p>CUSTOMER SERVICE</p>
                <strong>TEL : 01063533014</strong><br>
                <strong>MAIL : lcjh313@google.com</strong>
            </div>
        </div>
    </div>
    
    <div id="modal" class="modal-overlay">
        <div class="modal-window">
            <div class="title">
                <h2>이용약관</h2>
            </div>
            <div class="close-area"><i class="xi-close"></i></div>
            <div id="content">
                <p>제1조 (목적)</p>
                <p>이 약관은 대부 익스프레스(전자상거래 사업자)가<br>
                   운영하는 대부 익스프레스 사이버 몰(이하 “몰”이라 한다)에서<br>
                   제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어<br>
                   사이버 몰과 이용자의 권리․의무 및 책임 사항을 규정함을 목적으로 합니다.</p>
            </div>
        </div>
    </div>
    <script>
        /* 모달창의 기본적은 이벤트 */
        /*
            1. 특정 버튼을 누르면 모달창이 켜진다.
            2. 모달창의 클로즈(x) 버튼을 누르면 모달창이 꺼진다.
            3. 모달창 바깥 영역 (위 그림에서 밝기가 어두운 부분) 을 클릭하면 모달창이 꺼진다.
            4. 모달창이 켜진 상태에서 ESC 버튼을 누르면 모달창이 꺼진다.
        */

        const loremIpsum = document.getElementById("lorem-ipsum");
        fetch("https://baconipsum.com/api/?type=all-meat&paras=200&format=html")
            .then(response => response.text())
            .then(result => loremIpsum.innerHTML = result);

            /* 'TERM OF USE' 버튼을 누르면 모달창이 켜지게 하기 */
            /* 모달의 초기 상태를 display: none;으로 했다가 'TERM OF USE' 버튼을 클릭하면 display: flex; 변경 */
            const modal = document.getElementById("modal");
            const btnModal = document.getElementById("btn-modal");
            btnModal.addEventListener("click", e => {
                modal.style.display = "flex";
            });

            /* 모달창의 클로즈(x) 버튼을 누르면 모달창이 꺼지게 하기 */
            const closeBtn = modal.querySelector(".close-area");
            closeBtn.addEventListener("click", e => {
                modal.style.display = "none";
            });

            /* 모달창 바깥 영역을 클릭하면 모달창이 꺼지게 하기 */
            modal.addEventListener("click", e => {
            const evTarget = e.target;
            if(evTarget.classList.contains("modal-overlay")) {
                modal.style.display = "none";
                };
            });

            /* 모달창이 켜진 상태에서 ESC 버튼을 누르면 모달창이 꺼지게 하기 */
            window.addEventListener("keyup", e => {
            if(modal.style.display === "flex" && e.key === "Escape") {
                modal.style.display = "none"
                 };
            });

    </script>
</footer>
        
    
      
   

</body>
</html>