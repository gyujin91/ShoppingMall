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
    <title>위치</title>
    <link rel="stylesheet" href="${path }/resources/css/normalize.css">
    <link rel="stylesheet" href="${path }/resources/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

    <style>
        .container
        {
            margin: 100px 0 50px 0;
        }
        .location
        {
            width: 50%;
            height: 100%;
            margin: 100px 100px 50px 0;
            float: left;
            text-align: center;   

        }
        .location h2
        {
            font-weight: bold;
            font-size: 2.6em;
        }
        .location p
        {
            margin: 20px;
            border: 1px solid red;
            border-radius: 25px;
        }
        .location p a:hover
        {
            color: #222;
        }
        #map
        {
            width: 400px;
            height: 400px; 
        }
    </style>
</head>
<body>
    
	<%@ include file="../include/header.jsp" %>
    <div class="container">
        <div class="location">
            <h2>찾아오시는길</h2>
            <p>위치 : 경기도 안산시 단원구 감나무길 92, 1층 (대부북동)</p>
            <p>전화번호 : <a href="tel:01063533014">01063533014</a></p>
        </div>
        <div id="map"></div>
    </div>
 
    <%@ include file="../include/footer.jsp" %>

    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c068af21514a0a6d39842bb32638a17e"></script>
    <script type="text/javascript">
	
        var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
        var options = { //지도를 생성할 때 필요한 기본 옵션
            center: new kakao.maps.LatLng(37.24229943956779, 126.58379843924548), //지도의 중심좌표.
            level: 3 //지도의 레벨(확대, 축소 정도)
        };

	    var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

        // var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

        // 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
        var mapTypeControl = new kakao.maps.MapTypeControl();

        // 지도에 컨트롤을 추가해야 지도위에 표시됩니다
        // kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
        map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

        // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
        var zoomControl = new kakao.maps.ZoomControl();
        map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

        // 마커가 표시될 위치입니다 
        var markerPosition  = new kakao.maps.LatLng(37.24229943956779, 126.58379843924548); 

        // 마커를 생성합니다
        var marker = new kakao.maps.Marker({
            position: markerPosition
        });

        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);

        var iwContent = '<div style="padding:5px;">대부 익스프레스<br><a href="https://map.kakao.com/link/roadview/37.24229943956779, 126.58379843924548" style="color:blue" target="_blank">로드뷰 보기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
            iwPosition = new kakao.maps.LatLng(37.24229943956779, 126.58379843924548); //인포윈도우 표시 위치입니다

        // 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({
            position : iwPosition, 
            content : iwContent 
        });
        
        // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
        infowindow.open(map, marker); 
    </script>
</body>
</html>