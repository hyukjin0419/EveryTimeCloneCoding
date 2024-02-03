<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>책 상세보기</title>
    <link rel="stylesheet" type="text/css" href="${context}/css/view.css">
</head>

<body>
<header>
    <div id="title">
        <img id="everytime" src="https://bookstore.everytime.kr/assets/logo.png"
             alt="에브리타임">
    </div>
</header>
<article id="item">
    <div class="group group-book">
        <h1>The Giver</h1>
        <dl>
            <dt>저자</dt>
            <dd>${book.getBookAuthor()}</dd>
            <dt>출판사</dt>
            <dd>${book.getBookPublisher()}</dd>
            <dt>출판일</dt>
            <dd></dd>
        </dl>
        <p class="price">
            <span class="selling">${book.getSalePrice()}원</span>
            <span class="original">${book.getRegularPrice()}원</span>
        </p>
    </div>
    <div class="group group-item">
        <p class="comment">책 내부에 단어 뜻 등을 적어놓았습니다.</p>
        <time>2024년 1월 12일</time>
        <p class="buttons"><a class="red message" href="#">
            <span class="icons message-white-16"></span><span class="text">판매자 연락처: ${book.getPhoneNumber()}</span>
        </a>
        </p>
    </div>
    <div class="group group-status">
        <h2>책 상태</h2>
        <dl>
            <dt>밑줄 흔적</dt>
            <dd>
                <ul>
                    <li>없음</li>
                    <li class="checked">연필/샤프</li>
                    <li>볼펜/형광펜</li>
                    <hr>
                </ul>
            </dd>
            <dt>필기 흔적</dt>
            <dd>
                <ul>
                    <li>없음</li>
                    <li class="checked">연필/샤프</li>
                    <li>볼펜/형광펜</li>
                    <hr>
                </ul>
            </dd>
            <dt>겉표지</dt>
            <dd>
                <ul>
                    <li class="checked">깨끗함</li>
                    <li>깨끗하지않음</li>
                    <hr>
                </ul>
            </dd>
            <dt>이름 기입</dt>
            <dd>
                <ul>
                    <li class="checked">없음</li>
                    <li>있음</li>
                    <hr>
                </ul>
            </dd>
            <dt>페이지 변색</dt>
            <dd>
                <ul>
                    <li class="checked">없음</li>
                    <li>있음</li>
                    <hr>
                </ul>
            </dd>
            <dt>페이지 훼손</dt>
            <dd>
                <ul>
                    <li>없음</li>
                    <li class="checked">있음</li>
                    <hr>
                </ul>
            </dd>
        </dl>
        <div class="images">
            <div class="wrap" style="width: 260px;">
<%--                <c:forEach var="book" items="${books}">--%>
                    <img src="${book.getBookImageURL()}" alt="Image" class="thumbnail">
<%--                </c:forEach>--%>
                <%--                <div class="image"--%>
                <%--                     style="background-image: url(poro.png);">--%>
                <%--                </div>--%>
                <hr>
            </div>
        </div>
    </div>
    <div class="group group-means">
        <h2>거래 수단</h2>
        <dl>
            <dt>택배</dt>
            <dd>
                <ul>
                    <li>가능</li>
                    <li class="checked">불가</li>
                    <hr>
                </ul>
            </dd>
            <dt>직거래</dt>
            <dd>
                <ul>
                    <li class="checked">가능</li>
                    <li>불가</li>
                    <hr>
                </ul>
            </dd>
            <dt>원하는 장소</dt>
            <dd>한동대</dd>
        </dl>
        <hr>
        <hr>
    </div>
</article>

<div id="bar">
    <nav class="trisection">
        <a href="#" class="home">
            <img class="icons" src="${context}/image/house-solid.svg"/>
            <span class="text">홈</span>
        </a>
        <a href="#" class="sell">
            <img class="icons" src="${context}/image/pen-solid.svg"/>
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