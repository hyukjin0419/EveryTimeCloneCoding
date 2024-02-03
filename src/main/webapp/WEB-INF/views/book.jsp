<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html>
<html>
<head>
    <title>책 목록</title>
    <link rel="stylesheet" type="text/css" href="${context}/css/book.css">
</head>

<body>
<header>
    <div id="title">
        <img id="everytime" src="https://bookstore.everytime.kr/assets/logo.png" alt="썸네일">
    </div>
    <div id="search">
        <form>
            <input type="text" placeholder="구매할 책을 검색하세요!" autocomplete="off">
            <div id="searchicon">
                <span class="icons search-darkgray-16"></span>
            </div>
        </form>
    </div>

</header>
<div id="items">
    <div class="header">
        <h1>최근 올라온 책</h1>
        <div class="filter">
            <span class="univ">한동대</span>
        </div>
    </div>
    <c:forEach items="${books}" var="book">
        <a class="item" href="${context}/books/${book.getId()}">
            <div class="thumb">
                <img class="book"
                     src="${book.getBookImageURL()}" alt="썸네일">
            </div>
            <h2>${book.getBookTitle()}</h2>
            <p class="details author">
                <span>${book.getBookAuthor()} 지음</span>
            </p>
            <p class="details publisher">
                <span>${book.getBookPublisher()}</span>
            </p>
            <p class="price">
                <span class="selling">${book.getSalePrice()}원</span>
                <span class="original">${book.getRegularPrice()}원</span>
            </p>
        </a>
    </c:forEach>
    <a class="item" href="view.jsp">
        <div class="thumb">
            <img class="book"
                 src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJ2mJYezRxBt7OMKUO6PglWCEsdeUYzEbJzg&usqp=CAU" alt="썸네일">
        </div>
        <h2>The Giver</h2>
        <p class="details author">
            <span>코딩왕 지음</span>
        </p>
        <p class="details publisher">
            <span>King of coding</span>
        </p>
        <p class="price">
            <span class="selling">5,000원</span>
            <span class="original">10,700원</span>
        </p>
    </a>
    <a class="item" href="view.jsp">
        <div class="thumb">
            <img class="book"
                 src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9nBaLuswhrbzMagnKnuivOvEf43zQHeXpgJ-2bnwc_EIU72aUop2BPtFMebnNwP5NJ_Q&usqp=CAU"
            alt="썸네일">
        </div>
        <h2>Dog</h2>
        <p class="details author">
            <span>댕댕이 지음</span>
        </p>
        <p class="details publisher">
            <span>댕댕</span>
        </p>
        <p class="price">
            <span class="selling">6,000원</span>
            <span class="original">30,700원</span>
        </p>
    </a>
    <a class="item" href="view.jsp">
        <div class="thumb">
            <img class="book"
                 src="https://thumbnail10.coupangcdn.com/thumbnails/remote/492x492ex/image/rs_quotation_api/0u7o52nm/3aa5ae7ad45245d8aa2232578be8f2d4.jpg"
            alt="썸네일">
        </div>
        <h2>공룡책</h2>
        <p class="details author">
            <span>짱구 지음</span>
        </p>
        <p class="details publisher">
            <span>짱구</span>
        </p>
        <p class="price">
            <span class="selling">80,000,000원</span>
            <span class="original">999,990,700원</span>
        </p>
    </a>
    <a class="item" href="view.jsp">
        <div class="thumb">
            <img class="book"
                 src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5ER7U1_vB9mDO0eX6Lt10opVr-t5Dhisofw&usqp=CAU"
            alt="썸네일">
        </div>
        <h2>MBTI</h2>
        <p class="details author">
            <span>F 지음</span>
        </p>
        <p class="details publisher">
            <span>너 T야?</span>
        </p>
        <p class="price">
            <span class="selling">4,000원</span>
            <span class="original">21,700원</span>
        </p>
    </a>
    <a class="item" href="view.jsp">
        <div class="thumb">
            <img class="book"
                 src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTspj3RblabMEcHn9K7FZxm0lV7a2-ybJM8Ww&usqp=CAU"
            alt="썸네일">
        </div>
        <h2>humanoidog</h2>
        <p class="details author">
            <span>개사람 지음</span>
        </p>
        <p class="details publisher">
            <span>얍</span>
        </p>
        <p class="price">
            <span class="selling">7,000원</span>
            <span class="original">10,800원</span>
        </p>
    </a>
    <div id="bar">
        <nav class="trisection">
            <a href="#" class="home">
                <img class="icons" src="${context}/image/house-solid.svg" />
                <span class="text">홈</span>
            </a>
            <a href="${context}/add_book" class="sell">
                <img class="icons" src="${context}/image/pen-solid.svg" />
                <span class="text">판매하기</span>
            </a>
            <a href="#" class="my">
                <img class="icons" src="${context}/image/cart-shopping-solid.svg" />
                <span class="text">마이페이지</span>
            </a>
        </nav>
    </div>
</div>
</body>

</html>