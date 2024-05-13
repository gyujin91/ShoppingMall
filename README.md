<!--Heading -->
# 프로젝트 Description

✔ 여성 의류 쇼핑몰 홈페이지  <br>

✔ 물건을 온라인으로 쉽게 살 수 있는 편리하고 사용자 친화적인 플랫폼을 제공하기 위해 설계된 웹 애플리케이션인 DAEBU ShoppingMall입니다. [Java/spring]로 구축되어 있으며 고객 및 관리자 모두에게 원활한 쇼핑 경험을 제공합니다.

### 배포 주소
✔ aws EC2, RDS 배포 <br>

<a href="http://54.180.49.196:8080/myApp" target="_blank">http://daebu.o-r.kr:8080/myApp/</a>
* 테스트 계정(ID:**test**, PW:**1111**), 관리자 계정(ID:**admin**, PW:**1111**)

<br><br>
### 시작 가이드
먼저 프로젝트를 클론합니다
```
git clone https://github.com/gyujin91/ShoppingMall.git
```

프로젝트 디렉토리로 이동합니다
```
cd ShoppingMall
```

필요한 의존성 패키지를 설치합니다. 
### Maven을 사용하는 경우:
```
mvn clean install
```

### Gradle을 사용하는 경우:
```
gradle build
```
<hr>

<br><br>
# 프로젝트 정보

✔ 개발 기간
* 2024.01.01 ~ 2024.03.31(**1인**) <br>

✔ Stacks  <br>
<!-- Table -->

### Backend
<table style="border: 2px;">
  <tr>
    <th>Language</th>
    <td colspan="2">Java</td>
  </tr>
  <tr>
    <th>Framework</th>
    <td colspan="2">Spring Framework</td>
  </tr>
  <tr>
    <th>Modules</th>
    <td>Spring MVC</td>
    <td>Spring Security</td>
  </tr>
  <tr>
    <th>Database</th>
    <td colspan="2">Mysql</td>
  </tr>
</table>
<br>

### Frontend  
<table style="border: 2px;">
  <tr>
    <th>JavaScript Libararies</th>
    <td>jQuery</td>
    <td>Chart.js</td>
    <td>Bootstrap</td>
  </tr> 
</table>
<br>

### Others
<table style="border: 2px;">
  <tr>
    <th colspan="2">Development Tools</th>
  </tr>
  <tr>
    <th>IDE</th>
    <td>Eclipse</td>
  </tr>
  <tr>
    <th>Build Tool</th>
    <td>Maven</td>
  </tr>
  <tr>
    <th>Configuration Management</th>
    <td>Git</td>
  </tr>
</table>

### 주요 기능
✔ 사용자 기능
* ### 회원가입
1) 아이디 중복 검사 및 유효성 검사
2) 비밀번호 확인 및 Spring Security 모듈에서 제공하는 BCryptPasswordEncoder 클래스를 활용한 비밀번호 암호화
3) 이름, 이메일, 전화번호 유효성 검사
* ### 로그인
1) 사용자 코드를 부여하여 관리자, 일반 회원, 탈퇴 회원으로 구분
2) 암호화 여부를 확인한 후 로그인 가능
3) admin(관리자), test(테스트 아이디)는 암호화를 거치지 않고 임시 비밀번호(**1111**)로 로그인 가능
* ### 카테고리
1) 카테고리별로 10개의 상품만 조회
* ### 상품 상세 보기
1) 사이즈와 수량을 선택하지 않으면 장바구니에 담을 수 없음
2) 사이즈, 수량, 합계 금액을 실시간으로 변경
* ### 장바구니
1) 상품 삭제 및 총 수량과 합계 금액 확인 가능
2) 로그인 후 이용 가능
* ### 주문/결제 페이지
1) 주문자 정보(휴대전화, 주소) 변경 가능
2) 주문 상품, 결제 정보 확인 후 결제 수단 선택하여 주문 상세 내역으로 이동(DEFAULT - 결제 완료)
* ### 주문 상세 내역
1) 주문 일자, 주문 번호, 상품 정보 확인 가능
2) 주문 취소 가능
3) 주문자 이름과 연락처는 마스킹 처리
4) 총 주문 금액 확인 후 리뷰 페이지로 이동 가능
* ### 리뷰 목록
1) 사용자 리뷰와 관리자 답글 확인 가능
2) 본인의 리뷰만 수정 및 삭제 가능
3) 주문자 이름은 마스킹 처리
* ### 리뷰 등록 페이지
1) 주문 정보 조회하여 상단에 주문 정보 표시
2) 하나의 상품을 선택하여 리뷰 작성


✔ 관리자 기능
* ### 관리자 패널
1) 관리자 패널에서 총 매출 금액, 총 주문 건수, 총 리뷰 건수, 총 상품 건수 확인 가능
2) 각 관리 패널로 이동 가능
* ### 월별 판매량 및 매출표
1) 월별 판매량 및 매출 그래프와 테이블 제공(Chart.js 활용)
* ### 총 주문 목록
1) 사용자 주문 정보, 결제 정보 확인 가능
* ### 관리자 리뷰 답글
1) 사용자 리뷰에 대한 답글 등록, 수정, 삭제 가능
* ### 총 상품 목록
1) 상품 목록 조회 및 상품 등록, 수정, 삭제(UPDATE) 가능
* ### 관리자 상품 등록
1) 상품의 정보 및 이미지 업로드 기능
* ### 관리자 상품 수정, 삭제
1) 상품의 카테고리, 사용여부를 수정(삭제 시 DELETE가 아닌 UPDATE)
* ### 총 회원 목록
1) 사용자의 CODE를 분류 하여 사용자 정보 조회(일반 회원, 탈퇴 회원, 정지 회원 등)
* ### 카카오맵
1) 카카오 API를 활용한 위치 및 로드뷰 제공
<br>

<br><br>
<hr>
✔ 차후 계획 <br>

* JWT 토큰 방식 로그인 및 소셜 로그인 구현 <br>
* PG사 결제 API 연동(테스트 모드) <br>
* AWS SDK를 사용하여 파일을 S3 버킷을 통해 저장 및 관리 할 수 있도록 구현 <br>
* 페이징 처리<br>
<br>
<hr>

# 화면 구성

<table>
  <tr><th colspan="3">사용자</th></tr>
  <tr>
    <th>메인 페이지</th>
    <th>회원가입</th>
    <th>로그인</th>
  </tr>
  <tr>
      <td style="width: 100%; text-align: center;"><img src="https://github.com/gyujin91/ShoppingMall/assets/96001373/4fe22332-7474-47f0-a1ca-6f46af9c47c5", height="400px", width="300px"></td>
      <td style="width: 100%; text-align: center;"><img src="https://github.com/gyujin91/ShoppingMall/assets/96001373/1d314141-c4bf-4e8b-96be-a3f2f53ceff5", height="400px", width="300px"></td>
      <td style="width: 100%; text-align: center;"><img src="https://github.com/gyujin91/ShoppingMall/assets/96001373/d65f57bb-2a74-449c-afcf-c2439e232d14", height="400px", width="300px"></td>
  </tr>
  <tr>
    <th>카테고리 별 상품 조회</th>
    <th>상품 상세 보기</th>
    <th>장바구니</th>
  </tr>
  <tr>
      <td style="width: 100%; text-align: center;"><img src="https://github.com/gyujin91/ShoppingMall/assets/96001373/3ae04547-b2dd-454a-8e0e-035e15967cce", height="400px", width="300px"></td>
      <td style="width: 100%; text-align: center;"><img src="https://github.com/gyujin91/ShoppingMall/assets/96001373/d9444a8c-5575-473f-acb1-439091161a4e", height="400px", width="300px"></td>
      <td style="width: 100%; text-align: center;"><img src="https://github.com/gyujin91/ShoppingMall/assets/96001373/3064dfac-3bbe-4710-9b3d-3654cad41897", height="400px", width="300px"></td>
  </tr>
  <tr>
    <th>주문/결제 페이지</th>
    <th>주문 상세 내역</th>
    <th>리뷰 목록</th>
  </tr>
  <tr>
      <td style="width: 100%; text-align: center;"><img src="https://github.com/gyujin91/ShoppingMall/assets/96001373/a6ec57e9-af77-43c4-a34c-63690e3e6f01", height="400px", width="300px"></td>
      <td style="width: 100%; text-align: center;"><img src="https://github.com/gyujin91/ShoppingMall/assets/96001373/01b60c2e-ab46-48f8-95d0-8509c71bf1e7", height="400px", width="300px"></td>      
      <td style="width: 100%; text-align: center;"><img src="https://github.com/gyujin91/ShoppingMall/assets/96001373/911b73ba-da9c-4a04-8732-472952306fc4", height="400px", width="300px"></td>
  </tr>
  <tr>
    <th>리뷰 등록 페이지</th>
    <th>게시판 목록</th>
    <th>게시판 상세보기</th>    
  </tr>
  <tr>
      <td style="width: 100%; text-align: center;"><img src="https://github.com/gyujin91/ShoppingMall/assets/96001373/78f09458-ad5a-40ec-ae1c-a708231d0f73", height="400px", width="300px"></td>
      <td style="width: 100%; text-align: center;"><img src="https://github.com/gyujin91/ShoppingMall/assets/96001373/e02ad6b2-91d8-4301-ba9b-e3115e38dfa7", height="400px", width="300px"></td>
      <td style="width: 100%; text-align: center;"><img src="https://github.com/gyujin91/ShoppingMall/assets/96001373/12919e6c-36dd-4852-a2ad-22e4922a347b", height="400px", width="300px"></td>      
  </tr>  
</table>

<br><br>
<table>
  <tr><th colspan="3">관리자</th></tr>
  <tr>
    <th>관리자 패널</th>
    <th>월별 판매량 및 매출표</th>
    <th>총 주문 목록</th>
  </tr>
  <tr>
      <td style="width: 100%; text-align: center;"><img src="https://github.com/gyujin91/ShoppingMall/assets/96001373/6e6ea6b3-b2b7-464e-ae76-9c483b624635", height="400px", width="300px"></td>
      <td style="width: 100%; text-align: center;"><img src="https://github.com/gyujin91/ShoppingMall/assets/96001373/245cc2ac-32bc-4338-9fd9-f674a9a1a4fb", height="400px", width="300px"></td>
      <td style="width: 100%; text-align: center;"><img src="https://github.com/gyujin91/ShoppingMall/assets/96001373/68f2e7bb-f0e8-456a-9180-220ad97f8178", height="400px", width="300px"></td>
  </tr>
  <tr>
    <th>관리자 리뷰 답글 등록, 수정, 삭제</th>
    <th>총 상품 목록</th>
    <th>관리자 상품 등록</th>
  </tr>
  <tr>
      <td style="width: 100%; text-align: center;"><img src="https://github.com/gyujin91/ShoppingMall/assets/96001373/5a850c22-b13e-4c3c-823b-dc0f973badcd", height="400px", width="300px"></td>
      <td style="width: 100%; text-align: center;"><img src="https://github.com/gyujin91/ShoppingMall/assets/96001373/dc0e472e-7dc4-4ed6-872c-2135d2adf009", height="400px", width="300px"></td>
      <td style="width: 100%; text-align: center;"><img src="https://github.com/gyujin91/ShoppingMall/assets/96001373/edbc4080-1f98-40e1-a7a7-fe97bff649c4", height="400px", width="300px"></td>
  </tr>
  <tr>
    <th>관리자 상품 수정, 삭제</th>
    <th>총 회원 목록</th>
    <th>카카오맵</th>
  </tr>
  <tr>
      <td style="width: 100%; text-align: center;"><img src="https://github.com/gyujin91/ShoppingMall/assets/96001373/814020ab-6753-4e91-96db-1fb8040ede8e", height="400px", width="300px"></td>
      <td style="width: 100%; text-align: center;"><img src="https://github.com/gyujin91/ShoppingMall/assets/96001373/ac5fa2a4-f8d8-4f49-aeec-fdd76f790bcb", height="400px", width="300px"></td>
      <td style="width: 100%; text-align: center;"><img src="https://github.com/gyujin91/ShoppingMall/assets/96001373/ba27a2dd-13b0-4563-8ddb-119a171cdf3f", height="400px", width="300px"></td>
  </tr>  
</table>

<hr>

# 아키텍쳐
✔ 디렉토리 구조

<pre>
├── .gitignore
├── README.md
├── ShoppingMall.iml
├── pom.xml
├── src
│   ├── main
│   │   ├── java
│   │   │   └── com
│   │   │       └── shoppingmall
│   │   │           ├── ShoppingMallApplication.java
│   │   │           ├── config
│   │   │           │   ├── AppConfig.java
│   │   │           │   └── WebMvcConfig.java
│   │   │           ├── controller
│   │   │           │   ├── AdminController.java
│   │   │           │   ├── BoardController.java
│   │   │           │   ├── CartController.java
│   │   │           │   ├── HomeController.java
│   │   │           │   ├── MemberController.java
│   │   │           │   ├── OrderController.java
│   │   │           │   ├── ProductController.java
│   │   │           │   └── ReviewController.java
│   │   │           ├── dao
│   │   │           │   ├── BoardDao.java
│   │   │           │   ├── CartDao.java
│   │   │           │   ├── MemberDao.java
│   │   │           │   ├── OrderDao.java
│   │   │           │   ├── ProductDao.java
│   │   │           │   └── ReviewDao.java
│   │   │           ├── entity
│   │   │           │   ├── Board.java
│   │   │           │   ├── Cart.java
│   │   │           │   ├── Member.java
│   │   │           │   ├── Order.java
│   │   │           │   ├── Product.java
│   │   │           │   └── Review.java
│   │   │           ├── interceptor
│   │   │           │   └── AuthenticationInterceptor.java
│   │   │           ├── service
│   │   │           │   ├── BoardService.java
│   │   │           │   ├── CartService.java
│   │   │           │   ├── MemberService.java
│   │   │           │   ├── OrderService.java
│   │   │           │   ├── ProductService.java
│   │   │           │   └── ReviewService.java
│   │   │           └── util
│   │   │               └── Pagination.java
│   │   └── resources
│   │       ├── application.properties
│   │       ├── mapper
│   │       │   ├── BoardMapper.xml
│   │       │   ├── CartMapper.xml
│   │       │   ├── MemberMapper.xml
│   │       │   ├── OrderMapper.xml
│   │       │   ├── ProductMapper.xml
│   │       │   └── ReviewMapper.xml
│   │       ├── static
│   │       │   ├── css
│   │       │   │   ├── style.css
│   │       │   │   └── ...
│   │       │   ├── images
│   │       │   │   ├── product1.jpg
│   │       │   │   └── ...
│   │       │   └── js
│   │       │       ├── cart.js
│   │       │       └── ...
│   │       └── templates
│   │           ├── admin
│   │           │   ├── adminMain.jsp
│   │           │   └── ...
│   │           ├── board
│   │           │   ├── boardDetail.jsp
│   │           │   └── ...
│   │           ├── cart
│   │           │   ├── cart.jsp
│   │           │   └── ...
│   │           ├── home.jsp
│   │           ├── member
│   │           │   ├── joinForm.jsp
│   │           │   └── ...
│   │           ├── order
│   │           │   ├── order.jsp
│   │           │   └── ...
│   │           ├── product
│   │           │   ├── productDetail.jsp
│   │           │   └── ...
│   │           └── review
│   │               ├── reviewForm.jsp
│   │               └── ...
│   └── test
│       └── java
│           └── com
│               └── shoppingmall
│                   ├── controller
│                   │   └── HomeControllerTests.java
│                   └── service
│                       └── BoardServiceTests.java
└── target
    └── ...
</pre>
