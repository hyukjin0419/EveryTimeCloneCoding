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
    <form action="${context}/add_book" method="post">
        <label for="bookTitle">제목:</label>
        <input type="text" id="bookTitle" name="bookTitle" required><br>

        <label for="bookAuthor">저자:</label>
        <input type="text" id="bookAuthor" name="bookAuthor" required><br>

        <label for="bookPublisher">출판사:</label>
        <input type="text" id="bookPublisher" name="bookPublisher" required><br>

        <label for="phoneNumber">연락처:</label>
        <input type="tel" id="phoneNumber" name="phoneNumber" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" placeholder="010-1234-5678" required><br>

        <label for="regularPrice">정가:</label>
        <input type="text" id="regularPrice" name="regularPrice" required><br>

        <label for="salePrice">판매가:</label>
        <input type="text" id="salePrice" name="salePrice" required><br>

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
        <a href="${context}/add_book" class="sell">
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
