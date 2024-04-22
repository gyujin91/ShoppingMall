<!--Heading -->
# 프로젝트 Description

✔ 여성 의류 쇼핑몰 홈페이지  <br>

✔ 물건을 온라인으로 쉽게 살 수 있는 편리하고 사용자 친화적인 플랫폼을 제공하기 위해 설계된 웹 애플리케이션인 DAEBU ShoppingMall입니다. [Java/spring]로 구축되어 있으며 고객 및 관리자 모두에게 원활한 쇼핑 경험을 제공합니다.

<br><br>
## 시작 가이드
먼저 프로젝트를 클론합니다
```
git clone https://github.com/gyujin91/ShoppingMall.git
```

프로젝트 디렉토리로 이동합니다
```
cd ShoppingMall
```

필요한 의존성 패키지를 설치합니다. 
## Maven을 사용하는 경우:
```
mvn clean install
```

## Gradle을 사용하는 경우:
```
gradle build
```


<br><br>
# 프로젝트 정보
✔ Stacks  <br>

<!-- Table -->
|-|-|
|:--:|:--:|
Language | ![Java](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)
Framework | ![spring](https://img.shields.io/badge/Spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white)
DB | ![mySql](https://img.shields.io/badge/MySQL-00000F?style=for-the-badge&logo=mysql&logoColor=white)
Configuration Management | ![git](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)

<br><br>

✔ 디렉토리 구조    <br>
<br><br>

```
📦 
├─ .gitignore
├─ .metadata
│  ├─ .bak_0.log
│  ├─ .lock
│  ├─ .log
│  ├─ .mylyn
│  │  └─ repositories.xml.zip
│  ├─ .plugins
│  │  ├─ org.eclipse.core.resources
│  │  │     ├─ work
│  │  │     │  └─ Catalina
│  │  │     │     └─ localhost
│  │  │     │        └─ myapp
│  │  │     │           └─ org
│  │  │     │              └─ apache
│  │  │     │                 └─ jsp
│  │  │     │                    └─ WEB_002dINF
│  │  │     │                       └─ views
│  │  │     │                          ├─ admin
│  │  │     │                          │  ├─ admin_jsp.class
│  │  │     │                          │  ├─ admin_jsp.java
│  │  │     │                          │  ├─ allMemberList_jsp.class
│  │  │     │                          │  ├─ allMemberList_jsp.java
│  │  │     │                          │  ├─ fileUpload_jsp.class
│  │  │     │                          │  ├─ fileUpload_jsp.java
│  │  │     │                          │  ├─ insertNoticeForm_jsp.class
│  │  │     │                          │  ├─ insertNoticeForm_jsp.java
│  │  │     │                          │  ├─ memberInfo_jsp.class
│  │  │     │                          │  ├─ memberInfo_jsp.java
│  │  │     │                          │  ├─ noticeList_jsp.class
│  │  │     │                          │  ├─ noticeList_jsp.java
│  │  │     │                          │  ├─ noticeRead_jsp.class
│  │  │     │                          │  ├─ noticeRead_jsp.java
│  │  │     │                          │  ├─ orderList_jsp.class
│  │  │     │                          │  ├─ orderList_jsp.java
│  │  │     │                          │  ├─ productFile_jsp.class
│  │  │     │                          │  ├─ productFile_jsp.java
│  │  │     │                          │  ├─ productInfo_jsp.class
│  │  │     │                          │  ├─ productInfo_jsp.java
│  │  │     │                          │  ├─ productList_jsp.class
│  │  │     │                          │  ├─ productList_jsp.java
│  │  │     │                          │  ├─ userInfo_jsp.class
│  │  │     │                          │  ├─ userInfo_jsp.java
│  │  │     │                          │  ├─ views_jsp.class
│  │  │     │                          │  └─ views_jsp.java
│  │  │     │                          ├─ basket
│  │  │     │                          │  ├─ basket_jsp.class
│  │  │     │                          │  └─ basket_jsp.java
│  │  │     │                          ├─ cart
│  │  │     │                          │  ├─ cart_jsp.class
│  │  │     │                          │  └─ cart_jsp.java
│  │  │     │                          ├─ error
│  │  │     │                          │  ├─ errorPage_jsp.class
│  │  │     │                          │  └─ errorPage_jsp.java
│  │  │     │                          ├─ home_jsp.class
│  │  │     │                          ├─ home_jsp.java
│  │  │     │                          ├─ map
│  │  │     │                          │  ├─ map_jsp.class
│  │  │     │                          │  └─ map_jsp.java
│  │  │     │                          ├─ member
│  │  │     │                          │  ├─ agreement_jsp.class
│  │  │     │                          │  ├─ agreement_jsp.java
│  │  │     │                          │  ├─ joinForm_jsp.class
│  │  │     │                          │  ├─ joinForm_jsp.java
│  │  │     │                          │  ├─ loginForm_jsp.class
│  │  │     │                          │  ├─ loginForm_jsp.java
│  │  │     │                          │  ├─ myPage_jsp.class
│  │  │     │                          │  └─ myPage_jsp.java
│  │  │     │                          ├─ notice
│  │  │     │                          │  ├─ noticeList_jsp.class
│  │  │     │                          │  ├─ noticeList_jsp.java
│  │  │     │                          │  ├─ noticeRead_jsp.class
│  │  │     │                          │  └─ noticeRead_jsp.java
│  │  │     │                          ├─ order
│  │  │     │                          │  ├─ orderDetail_jsp.class
│  │  │     │                          │  ├─ orderDetail_jsp.java
│  │  │     │                          │  ├─ orderForm_jsp.class
│  │  │     │                          │  ├─ orderForm_jsp.java
│  │  │     │                          │  ├─ orderInfo_jsp.class
│  │  │     │                          │  ├─ orderInfo_jsp.java
│  │  │     │                          │  ├─ orderList_jsp.class
│  │  │     │                          │  └─ orderList_jsp.java
│  │  │     │                          ├─ product
│  │  │     │                          │  ├─ itemList_jsp.class
│  │  │     │                          │  ├─ itemList_jsp.java
│  │  │     │                          │  ├─ productDetail_jsp.class
│  │  │     │                          │  └─ productDetail_jsp.java
│  │  │     │                          └─ review
│  │  │     │                             ├─ insertReviewForm_jsp.class
│  │  │     │                             ├─ insertReviewForm_jsp.java
│  │  │     │                             ├─ reviewList_jsp.class
│  │  │     │                             └─ reviewList_jsp.java
│  │  │     └─ wtpwebapps
│  │  │        ├─ ROOT
│  │  │        │  └─ WEB-INF
│  │  │        │     └─ web.xml
│  │  │        └─ shoppiingMall
│  │  │           ├─ META-INF
│  │  │           │  ├─ MANIFEST.MF
│  │  │           │  └─ maven
│  │  │           │     └─ com.shopping
│  │  │           │        └─ myapp
│  │  │           │           ├─ pom.properties
│  │  │           │           └─ pom.xml
│  │  │           ├─ WEB-INF
│  │  │           │  ├─ classes
│  │  │           │  │  ├─ com
│  │  │           │  │  │  └─ shopping
│  │  │           │  │  │     ├─ controller
│  │  │           │  │  │     │  ├─ AdminController.class
│  │  │           │  │  │     │  ├─ CartController.class
│  │  │           │  │  │     │  ├─ ErrorController.class
│  │  │           │  │  │     │  ├─ MapController.class
│  │  │           │  │  │     │  ├─ MemberController.class
│  │  │           │  │  │     │  ├─ NoticeController.class
│  │  │           │  │  │     │  ├─ OrderController.class
│  │  │           │  │  │     │  ├─ PaymentController.class
│  │  │           │  │  │     │  ├─ ProductController.class
│  │  │           │  │  │     │  └─ ReviewController.class
│  │  │           │  │  │     ├─ dao
│  │  │           │  │  │     │  ├─ AdminDAO.class
│  │  │           │  │  │     │  ├─ AdminDAOImpl.class
│  │  │           │  │  │     │  ├─ CartDAO.class
│  │  │           │  │  │     │  ├─ CartDAOImpl.class
│  │  │           │  │  │     │  ├─ MemberDAO.class
│  │  │           │  │  │     │  ├─ MemberDAOImpl.class
│  │  │           │  │  │     │  ├─ NoticeDAO.class
│  │  │           │  │  │     │  ├─ NoticeDAOImpl.class
│  │  │           │  │  │     │  ├─ OrderDAO.class
│  │  │           │  │  │     │  ├─ OrderDAOImpl.class
│  │  │           │  │  │     │  ├─ PaymentDAO.class
│  │  │           │  │  │     │  ├─ PaymentDAOImpl.class
│  │  │           │  │  │     │  ├─ ProductDAO.class
│  │  │           │  │  │     │  ├─ ProductDAOImpl.class
│  │  │           │  │  │     │  ├─ ReviewDAO.class
│  │  │           │  │  │     │  └─ ReviewDAOImpl.class
│  │  │           │  │  │     ├─ dto
│  │  │           │  │  │     │  ├─ CartDTO.class
│  │  │           │  │  │     │  ├─ Category.class
│  │  │           │  │  │     │  ├─ MemberDTO.class
│  │  │           │  │  │     │  ├─ NoticeDTO.class
│  │  │           │  │  │     │  ├─ OrderDTO.class
│  │  │           │  │  │     │  ├─ PaymentDTO.class
│  │  │           │  │  │     │  ├─ ProductDTO.class
│  │  │           │  │  │     │  └─ ReviewDTO.class
│  │  │           │  │  │     ├─ myapp
│  │  │           │  │  │     │  └─ HomeController.class
│  │  │           │  │  │     ├─ service
│  │  │           │  │  │     │  ├─ AdminService.class
│  │  │           │  │  │     │  ├─ AdminServiceImpl.class
│  │  │           │  │  │     │  ├─ CartService.class
│  │  │           │  │  │     │  ├─ CartServiceImpl.class
│  │  │           │  │  │     │  ├─ MemberService.class
│  │  │           │  │  │     │  ├─ MemberServiceImpl.class
│  │  │           │  │  │     │  ├─ NoticeService.class
│  │  │           │  │  │     │  ├─ NoticeServiceImpl.class
│  │  │           │  │  │     │  ├─ OrderService.class
│  │  │           │  │  │     │  ├─ OrderServiceImpl.class
│  │  │           │  │  │     │  ├─ PaymentService.class
│  │  │           │  │  │     │  ├─ PaymentServiceImpl.class
│  │  │           │  │  │     │  ├─ ProductService.class
│  │  │           │  │  │     │  ├─ ProductServiceImpl.class
│  │  │           │  │  │     │  ├─ ReviewService.class
│  │  │           │  │  │     │  └─ ReviewServiceImpl.class
│  │  │           │  │  │     └─ util
│  │  │           │  │  │        └─ PasswordUtils.class
│  │  │           │  │  ├─ log4j.xml
│  │  │           │  │  ├─ log4jdbc.log4j2.properties
│  │  │           │  │  ├─ logback.xml
│  │  │           │  │  ├─ mappers
│  │  │           │  │  │  ├─ CartMapper.xml
│  │  │           │  │  │  ├─ adminMapper.xml
│  │  │           │  │  │  ├─ memberMapper.xml
│  │  │           │  │  │  ├─ noticeMapper.xml
│  │  │           │  │  │  ├─ orderMapper.xml
│  │  │           │  │  │  ├─ paymentMapper.xml
│  │  │           │  │  │  ├─ productMapper.xml
│  │  │           │  │  │  └─ reviewMapper.xml
│  │  │           │  │  ├─ mybatis-config.xml
│  │  │           │  │  └─ test
│  │  │           │  │     └─ MySQLConnectionTest.class
│  │  │           │  ├─ spring
│  │  │           │  │  ├─ appServlet
│  │  │           │  │  │  └─ servlet-context.xml
│  │  │           │  │  ├─ root-context.xml
│  │  │           │  │  └─ spring-security.xml
│  │  │           │  ├─ views
│  │  │           │  │  ├─ admin
│  │  │           │  │  │  ├─ admin.jsp
│  │  │           │  │  │  ├─ allMemberList.jsp
│  │  │           │  │  │  ├─ fileUpload.jsp
│  │  │           │  │  │  ├─ insertNoticeForm.jsp
│  │  │           │  │  │  ├─ memberInfo.jsp
│  │  │           │  │  │  ├─ noticeList.jsp
│  │  │           │  │  │  ├─ noticeRead.jsp
│  │  │           │  │  │  ├─ orderList.jsp
│  │  │           │  │  │  ├─ productInfo.jsp
│  │  │           │  │  │  ├─ productList.jsp
│  │  │           │  │  │  └─ views.jsp
│  │  │           │  │  ├─ cart
│  │  │           │  │  │  └─ cart.jsp
│  │  │           │  │  ├─ error
│  │  │           │  │  │  └─ errorPage.jsp
│  │  │           │  │  ├─ home.jsp
│  │  │           │  │  ├─ include
│  │  │           │  │  │  ├─ footer.jsp
│  │  │           │  │  │  └─ header.jsp
│  │  │           │  │  ├─ map
│  │  │           │  │  │  └─ map.jsp
│  │  │           │  │  ├─ member
│  │  │           │  │  │  ├─ agreement.jsp
│  │  │           │  │  │  ├─ joinForm.jsp
│  │  │           │  │  │  ├─ loginForm.jsp
│  │  │           │  │  │  └─ myPage.jsp
│  │  │           │  │  ├─ notice
│  │  │           │  │  │  ├─ noticeList.jsp
│  │  │           │  │  │  └─ noticeRead.jsp
│  │  │           │  │  ├─ order
│  │  │           │  │  │  ├─ orderForm.jsp
│  │  │           │  │  │  └─ orderInfo.jsp
│  │  │           │  │  ├─ product
│  │  │           │  │  │  ├─ itemList.jsp
│  │  │           │  │  │  └─ productDetail.jsp
│  │  │           │  │  └─ review
│  │  │           │  │     ├─ insertReviewForm.jsp
│  │  │           │  │     └─ reviewList.jsp
│  │  │           │  └─ web.xml


   
```

