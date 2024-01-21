<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>책 상세보기</title>
    <link rel="stylesheet" type="text/css" href="${context}/css/board.css">
    <style>
        header{
            position: fixed;
            z-index: 100;
            left: 0;
            top: 0;
            width: 100%;
            border-bottom: 1px solid #d6d6d6;
            background-color: white;
        }
        a{
            color: inherit;
            text-decoration: none;
        }
        #title {
            position: relative;
            margin: 10px auto;
            width: 100%;
            max-width: 800px;
            height: 40px;
        }

        #title>#everytime {
            display: block;
            margin: 0 auto;
            width: 70px;
            height: 40px;
        }
        #item{
            margin: 70px auto 10px auto;
            width: 100%;
            max-width: 800px;
        }
        #item > div.group{
            margin-bottom: 10px;
            padding: 15px;
            border-bottom: 1px solid #e3e3e3;
            background-color: white;
        }
        #item > div.group-book > p.price{
            letter-spacing: -1px;
            vertical-align: top;
        }
        #item > div.group > dl > dd {
            margin-bottom: 5px;
            padding-left: 65px;
            line-height: 18px;
            color: #737373;
            font-size: 14px;
        }
        #item > div.group > dl > dd > ul {
            list-style-type: none;
        }
        #item > div.group > dl > dt {
            position: absolute;
            line-height: 18px;
            color: #a6a6a6;
            font-size: 12px;
        }
        #item > div.group > dl > dd > ul > li.checked {
            color: #737373;
            text-decoration: none;
        }
        #item > div.group > dl > dd > ul > li {
            float: left;
            margin-right: 10px;
            color: #d6d6d6;
            font-size: 14px;
        }
        #item > div.group-book > p.price > span.selling {
            line-height: 30px;
            color: #ff5d57;
            font-size: 24px;
            font-weight: bold;
        }
        #item > div.group-book > p.price > span.original {
            margin-left: 5px;
            color: #d6d6d6;
            font-size: 16px;
            text-decoration: line-through;
        }
        dl{
            display: block;
            margin-block-start: 1em;
            margin-block-end: 1em;
            margin-inline-start: 0;
            margin-inline-end: 0;
        }
        div, header,article{
            display: block;
        }
        body{
            font-family: "맑은 고딕", sans-serif;
            letter-spacing: -0.5px;
            background-color: #f2f2f2;
        }
        #bar {
            position: relative;
            z-index: 100;
            left: 0;
            bottom: 0;
            width: 100%;
            height: 60px;
            box-sizing: border-box;
            border-top: 1px solid #d6d6d6;
            background-color: #f2f2f2;
        }
        #bar > nav {
            margin: 0 auto;
            width: 100%;
            max-width: 800px;
            height: 100%;
        }
        #bar > nav.trisection > a{
            width: 33%;
        }
        #bar > nav > a{
            display: block;
            float: left;
            height: 100%;
        }
        #bar > nav > a > span.text {
            display: block;
            line-height: 15px;
            color: #292929;
            font-size: 12px;
            font-weight: bold;
            text-align: center;
        }
        #item > div.group-status > div.images > div.wrap > div.image {
            float: left;
            display: block;
            margin-left: 10px;
            width: 120px;
            height: 120px;
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center center;
            cursor: pointer;
        }
        dd{
            display: block;
            margin-inline-start: 40px;
        }
        hr {
            clear: both;
            width: 100%;
            height: 0;
            opacity: 0;
        }
        ul {
            display: block;
            list-style-type: disc;
            margin-block-start: 1em;
            margin-block-end: 1em;
            margin-inline-start: 0;
            margin-inline-end: 0;
            padding-inline-start: 40px;
        }
        li {
            display: list-item;
            text-align: -webkit-match-parent;
        }
    </style>
</head>

<body>
<header>
    <div id="title">
        <img id="everytime" src="https://cdn-icons-png.flaticon.com/512/5765/5765694.png"
        alt="에브리타임">
    </div>
</header>
<article id="item">
    <div class="group group-book">
        <h1>The Giver</h1>
        <dl>
            <dt>저자</dt>
            <dd>로이스 로리</dd>
            <dt>출판사</dt>
            <dd>Houghton Mifflin Harcourt (HMH</dd>
            <dt>출판일</dt>
            <dd>2014년 7월 1일</dd>
        </dl>
        <p class="price">
            <span class="selling">5,000원</span>
            <span class="original">10,700원</span>
        </p>
    </div>
    <div class="group group-item">
        <p class="comment">책 내부에 단어 뜻 등을 적어놓았습니다.</p>
        <time>2024년 1월 12일</time>
        <p class="buttons"><a class="red message" href="#">
            <span class="icons message-white-16"></span><span class="text">판매자에게 쪽지 보내기</span>
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
                <div class="image"
                     style="background-image: url(https://cdn.imweb.me/thumbnail/20221203/fba3a2f258bdc.png);">
                </div>
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
            <span class="icons home-darkgray-16"></span>
            <span class="text">홈</span>
        </a>
        <a href="#" class="sell">
            <span class="icons sell-darkgray-16"></span>
            <span class="text">판매하기</span>
        </a>
        <a href="#" class="my">
            <span class="icons my-darkgray-16"></span>
            <span class="text">마이페이지</span>
        </a>
    </nav>
</div>
</body>

</html>