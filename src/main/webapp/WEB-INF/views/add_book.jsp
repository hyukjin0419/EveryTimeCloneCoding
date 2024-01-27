<%--
  Created by IntelliJ IDEA.
  User: gkals
  Date: 2024-01-25
  Time: 오후 4:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>책 추가하기</title>
    <link rel="stylesheet" type="text/css" href="${context}/css/add_book.css">
</head>
<body>
<header>
    <div id="title">
        <img id="everytime" src="https://bookstore.everytime.kr/assets/logo.png"
             alt="에브리타임">
    </div>
</header>
<div class="form">
    <h1>자세한 책 정보를 적어주세요.</h1>
    <form action="/submit" method="post">
        <label for="book_title">제목:</label>
        <input type="text" id="book_title" name="book_title" required><br>

        <label for="book_author">저자:</label>
        <input type="text" id="book_author" name="book_author" required><br>

        <label for="book_publisher">출판사:</label>
        <input type="text" id="book_publisher" name="book_publisher" required><br>

        <label for="phone_num">연락처:</label>
        <input type="tel" id="phone_num" name="phone_num" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" placeholder="010-1234-5678" required><br>

        <label for="regular_price">정가:</label>
        <input type="text" id="regular_price" name="regular_price" required><br>

        <label for="selling_price">판매가:</label>
        <input type="text" id="selling_price" name="selling_price" required><br>

        <input type="button" onclick="history.back()" value="취소">
        <input type="reset" value="초기화">
        <input type="submit" value="제출">
    </form>
</div>

<div id="bar">
    <nav class="trisection">
        <a href="#" class="home">
            <img class="icons" src="${context}/image/house-solid.svg"/>
            <span class="text">홈</span>
        </a>
        <a href="#" class="sell">
            <img class="icons" src="${context}/image/pencil.png"/>
            <span class="text">판매하기</span>
        </a>
        <a href="#" class="my">
            <img class="icons" src="${context}/image/cart-shopping-solid.svg"/>
            <span class="text">마이페이지</span>
        </a>
    </nav>
</div>

</body>
</html>
